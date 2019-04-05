"""Visualization libs"""
import matplotlib.pyplot as plt
import matplotlib.cm as cm
import time
import tensorflow as tf
from random import *
import sys

sys.path.append('../utils')
#from drawing_tools import *
#from check_image_outputs_cv import *
from skimage.transform import resize
from log_manager import LogManager
from validation_manager import ValidationManager
#import terminal_draw_tool
from codification import *

def convert_mat_to_tensor(py_mat,branch_config):


	tensor_vec =[]
	for i in range(len(py_mat)):



		tensor_vec.append(tf.split(tf.reduce_mean(tf.convert_to_tensor(py_mat[i]),axis=[1]),len(branch_config[i])))


	return tensor_vec





class OutputManager(object):

	def __init__(self,config,training_manager,sess,batch_tensor_val):
		""" If we want to visualize the outputs """
		#terminal_draw_tool.start_curses()
		#terminal_draw_tool.curses_started = True

		self._batch_size = config.batch_size 
		self._training_manager = training_manager
		self._sess = sess # the session from tensorflow that is going to be used
		self._config = config
		self._training_start_time =  time.time()

		self._logger = LogManager(config,training_manager,sess,self._config.use_curses)
		self.tensorboard_scalars()
		self.tensorboard_images()
		self._merged = tf.summary.merge_all()
		self._validater = ValidationManager(config,training_manager,sess,batch_tensor_val,self._merged)
		self.first_time = True
		self.store_steer = True




	def tensorboard_scalars(self):

		#with tf.device('/gpu:0'):
		""" This is the program general loss """
		tf.summary.scalar('Loss', tf.reduce_mean(self._training_manager.get_loss()))


		""" This is the loss energy vec """
		energy_tensor_vec = convert_mat_to_tensor(self._training_manager.get_variable_energy(),self._config.branch_config)
		print 'energy'
		print energy_tensor_vec
		for i in range(len(energy_tensor_vec)):
			for j in range(len(self._config.branch_config[i])): # for other branches
				#print tf.squeeze(energy_tensor_vec[i +j])
				tf.summary.scalar('Energy_B_'+str(i) + '_'+self._config.branch_config[i][j], tf.squeeze(energy_tensor_vec[i][j]))



		print 'error'
		variables_tensor_vec = convert_mat_to_tensor(self._training_manager.get_variable_error(),self._config.branch_config)


		for i in range(len(variables_tensor_vec)):
			for j in range(len(self._config.branch_config[i])): # for other branches
				#print tf.squeeze(variables_tensor_vec[i +j])
				tf.summary.scalar('Error_B_'+str(i)+'_'+self._config.branch_config[i][j], tf.squeeze(variables_tensor_vec[i][j]))





		""" This is the error vecs for the training """

		

		self._train_writer = tf.summary.FileWriter(self._config.train_path_write,self._sess.graph)

		

	def tensorboard_images(self):
		
		tf.summary.image('Image_input',self._training_manager._input_images)
		#tf.summary.image('Image_vbp',self._training_manager._vis_images)
	

	def write_tensorboard_summary(self,i):


		feedDict = self._training_manager.get_feed_dict()
		feedDict[self._training_manager._dout] = [1.0]*len(self._config.dropout)
		summary = self._sess.run(self._merged,feed_dict = feedDict)

		


		self._train_writer.add_summary(summary,i)




	def print_outputs(self,i,duration):

		 # the dictonary of the data used for training
		if i%self._config.print_interval == 0:

			self._logger.update_log_state(i,duration)

			
		""" Writing summary """
		if i%self._config.summary_writing_period == 0 or self.first_time :
			#print 'Summari'
			self._logger.write_summary(i)
			#self._logger.write_images()

			self.write_tensorboard_summary(i)
			#terminal_draw_tool.clear()
			self.first_time =False
			
			#self._sess.run(self._training_manager._vis_images,feed_dict=self._training_manager.get_feed_dict())


			self._logger.print_screen_track(i,duration)
	


			#""" Validating """
		if i%self._config.validation_period == 0:

  			self._validater.run(i)


  		'''if self.store_steer == True:
  			network_outputs_split =tf.split(self._training_manager._output_network[0],self._training_manager._output_network[0].get_shape()[1],1 )
      		branches_configuration = self._config.branch_config
      
      		target_name = branches_configuration[0][0] # name of the target is steer, when running ak02_ca24_steer
      
      		ground_truths = self._training_manager._targets_data
      		target_gt = ground_truths[self._config.targets_names.index(target_name)]
      		print target_gt
      		print tf.Session().run(target_gt)

      		if target_name == 'Steer': 
        		# Save to file
        		print 'saving steer values'
        		np.savetxt('data_stats' +'/' +'batch_steer.npy',tf.Session().run(target_gt))
  			
  			self.store_steer = False'''




		
	