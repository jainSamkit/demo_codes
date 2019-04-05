import random

import imgaug as ia
from imgaug import augmenters as iaa
import os
import glob

#This code is yet to develop. It is for converting classification problem to regression problem(for steer)
# 
# This is a config file, with three parts: Input, Training, Output, which are then joined in Main
#


class configMain:


	def __init__(self):

		# this is used for data balancing. Labels are balanced first, and then for each label group 
		# the [-1,1] interval is split into so many equal intervals
		# when we need to sample a mini-batch, we sample bins and then sample inside the bins
		self.number_steering_bins = 2		#divide steering angles into 3(2+1 somehow, due to some bug) bins

		self.batch_size=self.number_steering_bins*60		#you can keep it to a max of 120, thus.
		self.batch_size_val =  self.number_steering_bins*60	#same as above
		self.number_images_val = 20* self.batch_size_val # Number of images used in a validation Section

		#for lstm, wont matter
		self.sequence_size_lstm = 0
		self.fusion_size =1
		self.sequence_size =(self.fusion_size)*2 # this 2 is about reducing the frame rate 2x
		self.sequence_resample  =  self.fusion_size 


		self.resample_stride = self.sequence_size/self.sequence_resample
		self.sequence_stride =  self.sequence_size/2 # this is also about the frame rate
		self.number_of_sequences = self.batch_size/(self.sequence_size_lstm+1)
		#self.input_size = (227,227,3)
		#self.manager_name = 'control_speed' 
		# y , x
		self.image_size = (100,200,3)
		self.network_input_size = (100,200,3)
		self.variable_names = ['Steer','Gas','Brake','Hand_B','Reverse','Steer_N','Gas_N','Brake_N','Pos_X','Pos_Y','Speed',\
						'C_Gen','C_Ped','C_Car','Road_I','Side_I','Acc_x','Acc_y','Acc_z','Plat_Ts','Game_Ts','Ori_X','Ori_Y','Ori_Z','Control','Noise']
		# _N is noise, Yaw_S is angular speed


		self.targets_names =['Steer','Speed']
		self.targets_sizes = [3,1]

		'''#for branching
		self.inputs_names =['Control','Speed']
		self.inputs_sizes = [4,1]

		# if there is branching, this is used to build the network. Names should be same as targets
		# currently the ["Steer"]x4 should not be changed
		self.branch_config = [["Steer"],["Steer"],["Steer"],["Steer"],["Gas"],["Speed"]]'''
		



		#*****maybe it should be [["Steer","Steer","Steer","Speed"]]******
		self.branch_config = [["Steer","Speed"]]
		#Note: there is just one branch with steer and speed


		# a list of keep_prob corresponding to the list of layers:
		# 8 conv layers, 2 img FC layer, 2 speed FC layers, 1 joint FC layer, 7 branches X 2 FC layers each
		#self.dropout = [0.8]*8 + [0.5]*2 + [0.5]*2 + [0.5]*1 + [0.5, 1.]*7
		self.dropout = [0.8]*4 + [0.5]*1 + [0.5]*1 

		self.restore = False # This is if you want to restore a saved model

		self.models_path = os.path.join('models', os.path.basename(__file__).split('.')[0])
		self.train_path_write = os.path.join(self.models_path, 'train')
		self.val_path_write = os.path.join(self.models_path, 'val')


		self.number_iterations = 300000 # 300k

		self.number_steering_branches = 0

		self.use_speed_trick=False
		




class configInput(configMain):

	def __init__(self):

		configMain.__init__(self)

		
		st = lambda aug: iaa.Sometimes(0.4, aug)
		oc = lambda aug: iaa.Sometimes(0.3, aug)
		rl = lambda aug: iaa.Sometimes(0.09, aug)
		self.augment = iaa.Sequential([


	        rl(iaa.GaussianBlur((0, 1.5))), # blur images with a sigma between 0 and 1.5
	        rl(iaa.AdditiveGaussianNoise(loc=0, scale=(0.0, 0.05), per_channel=0.5)), # add gaussian noise to images
	        rl(iaa.Dropout((0.0, 0.03), per_channel=0.5)), # randomly remove up to X% of the pixels
	        oc(iaa.Add((-20, 30), per_channel=0.5)), # change brightness of images (by -X to Y of original value)
	        st(iaa.Multiply((0.25, 2.5), per_channel=0.2)), # change brightness of images (X-Y% of original value)
	        rl(iaa.ContrastNormalization((0.5, 1.5), per_channel=0.5)), # improve or worsen the contrast
	        rl(iaa.Grayscale((0.0, 1))), # put grayscale


	        ],
		    random_order=True # do all of the above in random order
		)

		# there are files with data, 200 images each, and here we select which ones to use

		self.save_data_stats = 'data_stats' # the 'data_stats/path' file points to the location of the data

		#with open(os.path.join(self.save_data_stats, 'path'),'r') as f:
		#	path = f.read().strip()

		path = '../SamkitData3'
		
		train_path = os.path.join(path, 'SeqTrain')
		val_path = os.path.join(path, 'SeqVal')

		print train_path, val_path

		#self.valid_pos_train = range(0,993) 
		#self.valid_pos_val = range(0,101) # validation data is in a different folder
		
		self.train_db_path = [os.path.join(train_path, f) for f in glob.glob1(train_path, "data_*.h5")]
		self.val_db_path = [os.path.join(val_path, f) for f in glob.glob1(val_path, "data_*.h5")]

		#print self.train_db_path
		#print self.val_db_path

		#self.train_db_path = [os.path.join(train_path, 'data_'+str(i).zfill(5)+'.h5') for i in self.valid_pos_train]
		#self.val_db_path = [os.path.join(val_path, 'data_'+str(i).zfill(5)+'.h5') for i in self.valid_pos_val] #+ ['/media/adas/DISCODADOS/DeepDriveData/train_'+str(i).zfill(4)+'_M'+'.h5' for i in valid_pos_train]



		# When using data with noise, remove the recording during the first half of the noise impulse
		# TODO Felipe: change to noise percentage. 
		self.remove_noise =  False   

		# Speed Divide Factor

		#TODO: FOr now is hardcooded, but eventually we should be able to calculate this from data at the loading time.
		#self.speed_factor = 50.0  # In KM/H, inly useful when u give speed as one of the inputs


		# The division is made by three diferent data kinds
		# in every mini-batch there will be equal number of samples with labels from each group 
		# e.g. for [[0,1],[2]] there will be 50% samples with labels 0 and 1, and 50% samples with label 2
		

		self.labels_per_division = [[2],[2],[2]] 	#so that effectively it would divide equally on the basis of labels


		self.dataset_names = ['targets']

		self.queue_capacity = 20*self.batch_size

		# TODO NOT IMPLEMENTED Felipe: True/False switches to turn data balancing on or off
		self.balances_val = True
		self.balances_train = True




class configTrain(configMain):

	def __init__(self):

		configMain.__init__(self)		


		self.loss_function = 'softmax_mse_branched'  # Chose between: mse_branched, mse_branched_ladd
		self.learning_rate = 0.0002 # First
		self.training_schedule = [[50000,0.5],[100000,0.5*0.5],[150000,0.5*0.5*0.5],[200000,0.5*0.5*0.5*0.5],[250000,0.5*0.5*0.5*0.5*0.5]]    # Number of iterations, multiplying factor
		self.lambda_l2 = 1e-3 # Not used
		self.branch_loss_weight = [1.0]		#wights of each branch. wont matter for single branch case
		self.variable_weight = {'Steer':0.875,'Speed':0.125}	#speed varies from 0 to 7, while steer from -1 to 1. thus bringing them to same scale
		#self.output_weigth = [0.5,0.5]		#no longer used
		self.network_name = 'controlNetSpeedP_softmax'	
		self.lambda_tolerance = 5
		self.is_training = True
		self.set_unbalanced_loss = True # Not implemented
		self.branched_output = False # Not implemented
		self.selected_gpu = "0"
		#self.state_output_size = (0)





class configOutput(configMain):


	def __init__(self):


		configMain.__init__(self)

		self.print_interval = 2
		self.summary_writing_period = 20
		self.validation_period = 1000  # I consider validation as an output thing since it does not directly affects the training in general
		self.feature_save_interval  = 100
		self.use_curses =True  # If we want to use curses library for a cutter print
	

		self.targets_to_print = ['Steer','Speed'] #predicted by network. on the terminal. Also prints the error. Maybe Energy
		self.selected_branch = 0  # for the branches that have steering we also select the branch
		#self.steer_branch = 0  # for the steer case we also have to select the branch
		self.inputs_to_print = ['Steer']	#ground truth, given as data. on the terminal.



		""" Feature Visualization Part """
		# TODO : self.histograms_list=[]	self.features_to_draw=  self.weights_to_draw=






# Changes on configTrain
