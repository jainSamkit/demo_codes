import h5py
import scipy
import time
from Queue import Queue
from Queue import Empty
from Queue import Full
from threading import Thread
from PIL import Image
import numpy as np
import os

#lets put a big queue for the disk. So I keep it real time while the disk is writing stuff
def threaded(fn):
    def wrapper(*args, **kwargs):
        thread = Thread(target=fn, args=args, kwargs=kwargs)
        thread.setDaemon(True)
        thread.start()

        return thread
    return wrapper

class Recorder(object):

	# We assume a three camera case not many cameras per input ....


	def __init__(self,file_prefix,image_size2,image_size1,current_file_number=0,record_image=True,number_of_images=3):


		self._number_of_images = number_of_images
		self._record_image_hdf5 = True
		self._number_images_per_file = 200
		self._file_prefix = file_prefix
		self._image_size2 =image_size2
		self._image_size1 = image_size1
		self._record_image = record_image
		self._number_rewards = 28

		self._image_cut = [65,265]

		if not os.path.exists(self._file_prefix):
			os.mkdir(self._file_prefix)


		self._current_file_number = current_file_number
		self._current_hf = self._create_new_db()



		'''#for augmented version
		self._images_writing_folder_vec =[]
		for i in range(number_of_images):
			images_writing_folder = self._file_prefix + "Images_" +str(i) + "/"
			if not os.path.exists(images_writing_folder):
				os.mkdir(images_writing_folder)
			self._images_writing_folder_vec.append(images_writing_folder)'''

		self._images_writing_folder = self._file_prefix + "Images/"
		if not os.path.exists(self._images_writing_folder):
			os.mkdir(self._images_writing_folder)

		
		self._csv_writing_file = self._file_prefix + 'outputs.csv'
		self._current_pos_on_file =0 
		self._data_queue = Queue(2000)
		self.run_disk_writer()
		


	def _create_new_db(self):

		hf = h5py.File( self._file_prefix +'data_'+ str(self._current_file_number).zfill(5) +'.h5', 'w')
		self.image_center= hf.create_dataset('rgb', (self._number_images_per_file,self._image_size2,self._image_size1,3),dtype=np.uint8)
		#self.label_center= hf.create_dataset('labels', (self._number_images_per_file,self._image_size2,self._image_size1,3),dtype=np.uint8)
		#data_right= hf.create_dataset('images_right', (max_number_images_per_file,image_size2,image_size1,3),'f')
		self.data_rewards  = hf.create_dataset('targets', (self._number_images_per_file, self._number_rewards),'f')


		return hf

	#folder num to store images from diff cameras in different folders
	def record(self,images,rewards,action,action_noise,human_intervention):	

		self._data_queue.put([images,rewards,action,action_noise,human_intervention])


	@threaded
	def run_disk_writer(self):

		while True:
			data = self._data_queue.get()
			#print "QSIZE:",self._data_queue.qsize()
			self._write_to_disk(data)




	def _write_to_disk(self,data):
		if self._current_pos_on_file == self._number_images_per_file:
			self._current_file_number += 1
			self._current_pos_on_file = 0
			self._current_hf.close()
			self._current_hf = self._create_new_db()





		image  = data[0][0]
		rewards = data[1]
		action = data[2]
		action_noise = data[3]
		human_intervention = data[4]
		#folder_num = data[4]

		pos = self._current_pos_on_file

		
		capture_time   = int(round(time.time() * 1000))

		

		#print int(round(time.time() * 1000))
		'''if self._record_image:
			im = Image.fromarray(image)
			#im.save(self._images_writing_folder_vec[folder_num] + str((capture_time)) + ".jpg")
			im.save(str((capture_time)) + ".jpg")'''




		if self._record_image_hdf5:
			

			image = image[self._image_cut[0]:self._image_cut[1],:,:]	#hard code to resize image to 200,100,3
			image = scipy.misc.imresize(image,[self._image_size2,self._image_size1])
			self.image_center[pos] = image


		self.data_rewards[pos,0]  = action.steer  
		self.data_rewards[pos,1]  = action.gas 
		self.data_rewards[pos,2]  = action.brake  
		self.data_rewards[pos,3]  = action.hand_brake  
		self.data_rewards[pos,4]  = action.reverse
		self.data_rewards[pos,5]  = action_noise.steer  
		self.data_rewards[pos,6]  = action_noise.gas  
		self.data_rewards[pos,7]  = action_noise.brake  
		self.data_rewards[pos,8]  = rewards.player_x	#location of car
		self.data_rewards[pos,9]  = rewards.player_y
		self.data_rewards[pos,10]  = rewards.speed
		self.data_rewards[pos,11]  = rewards.collision_gen
		self.data_rewards[pos,12]  = rewards.collision_ped
		self.data_rewards[pos,13]  = rewards.collision_car
		self.data_rewards[pos,14]  = rewards.road_intersect
		self.data_rewards[pos,15]  = rewards.sidewalk_intersect
		self.data_rewards[pos,16]  = rewards.acceleration_x
		self.data_rewards[pos,17]  = rewards.acceleration_y
		self.data_rewards[pos,18]  = rewards.acceleration_z
		self.data_rewards[pos,19]  = rewards.platform_timestamp
		self.data_rewards[pos,20]  = rewards.game_timestamp
		self.data_rewards[pos,21]  = rewards.ori_x
		self.data_rewards[pos,22]  = rewards.ori_y
		self.data_rewards[pos,23]  = rewards.ori_z
		self.data_rewards[pos,27]  = human_intervention		#3 positions left in between to keep compatible with felipe's recorder
		#self.data_rewards[pos,24]  = rewards.direction
		#self.data_rewards[pos,25]  = rewards.noise
		#self.data_rewards[pos,26]  = folder_num
		#print "GAS - >", self.data_rewards[pos,1]




		'''#NOTE - Akshay: Virtual Elektra Data has been recorded using felipes code. the data points are as follows:
		
			self.data_rewards[pos,0]  = actions.steer  
			self.data_rewards[pos,1]  = actions.throttle 
			self.data_rewards[pos,2]  = actions.brake  
			self.data_rewards[pos,3]  = actions.hand_brake  
			self.data_rewards[pos,4]  = actions.reverse
			self.data_rewards[pos,5]  = action_noise.steer  
			self.data_rewards[pos,6]  = action_noise.throttle  
			self.data_rewards[pos,7]  = action_noise.brake  
			self.data_rewards[pos,8]  = measurements['PlayerMeasurements'].transform.location.x
			self.data_rewards[pos,9]  = measurements['PlayerMeasurements'].transform.location.y
			self.data_rewards[pos,10]  = measurements['PlayerMeasurements'].forward_speed
			self.data_rewards[pos,11]  = measurements['PlayerMeasurements'].collision_other
			self.data_rewards[pos,12]  = measurements['PlayerMeasurements'].collision_pedestrians
			self.data_rewards[pos,13]  = measurements['PlayerMeasurements'].collision_vehicles
			self.data_rewards[pos,14]  = measurements['PlayerMeasurements'].intersection_otherlane
			self.data_rewards[pos,15]  = measurements['PlayerMeasurements'].intersection_offroad
			self.data_rewards[pos,16]  = measurements['PlayerMeasurements'].acceleration.x
			self.data_rewards[pos,17]  = measurements['PlayerMeasurements'].acceleration.y
			self.data_rewards[pos,18]  = measurements['PlayerMeasurements'].acceleration.z
			self.data_rewards[pos,19]  = measurements['WallTime']
			self.data_rewards[pos,20]  = measurements['GameTime']
			self.data_rewards[pos,21]  = measurements['PlayerMeasurements'].transform.orientation.x
			self.data_rewards[pos,22]  = measurements['PlayerMeasurements'].transform.orientation.y
			self.data_rewards[pos,23]  = measurements['PlayerMeasurements'].transform.orientation.z
			self.data_rewards[pos,24]  = direction
			self.data_rewards[pos,25]  = i
			self.data_rewards[pos,26]  = float(self._camera_dict[i][1])'''




		#outfile =open(self._csv_writing_file,'a+')
		#outfile.write("%d,%f,%f,%d,%f,%f,%f,%f,%f,%f,%f,%d,%d\n" % (capture_time ,action[0]\
		#	,action[1],int(direction),speed,yaw_rate,car_pos[0],car_pos[1],car_goal[0],car_goal[1],lane,collided,reset))			
		#outfile.close()


		self._current_pos_on_file +=1

	def close(self):

		self._current_hf.close()






