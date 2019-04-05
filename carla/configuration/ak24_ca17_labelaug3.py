#this file trains for data from virtual world elektra data by agent;steer only, implementing fak17_cf45_steer.py
#also does augmentation for seven cameras
#this exp does augmentation , label wise as well
#it has data for forward and backward laps
import random

import imgaug as ia
from imgaug import augmenters as iaa
import os
import glob

# 
# This is a config file, with three parts: Input, Training, Output, which are then joined in Main
#


class configMain:


	def __init__(self):

		# this is used for data balancing. Labels are balanced first, and then for each label group 
		# the [-1,1] interval is split into so many equal intervals
		# when we need to sample a mini-batch, we sample bins and then sample inside the bins
		self.number_steering_bins = 2

		self.batch_size = self.number_steering_bins*60
		self.batch_size_val =  self.number_steering_bins*60
		self.number_images_val = 20* self.batch_size_val # Number of images used in a validation Section


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
		self.image_size = (88,200,3)
		self.network_input_size = (88,200,3)
		self.variable_names = ['Steer','Gas','Brake','Hand_B','Reverse','Steer_N','Gas_N','Brake_N','Pos_X','Pos_Y','Speed',\
						'C_Gen','C_Ped','C_Car','Road_I','Side_I','Acc_x','Acc_y','Acc_z','Plat_Ts','Game_Ts','Ori_X','Ori_Y',\
						'Ori_Z','Control','Camera','Angle']
		# _N is noise, Yaw_S is angular speed 

		self.targets_names =['Steer']
		self.targets_sizes = [1]

		#self.inputs_names =['Control']
		#self.inputs_sizes = [4]

		# if there is branching, this is used to build the network. Names should be same as targets
		# currently the ["Steer"]x4 should not be changed
		self.branch_config = [["Steer"]]

		# a list of keep_prob corresponding to the list of layers:
		# 8 conv layers, 2 img FC layer,  5 branches X 2 FC layers each
		self.dropout = [0.8]*8 + [0.5]*2  + [0.5,.5]*len(self.branch_config)


		self.restore = True # This is if you want to restore a saved model

		self.sensor_names = ['rgb','labels']	#what all you want to store
		self.sensors_size = [(88,200,3),(88,200,1)]

		self.models_path = os.path.join('models', os.path.basename(__file__).split('.')[0])
		self.train_path_write = os.path.join(self.models_path, 'train')
		self.val_path_write = os.path.join(self.models_path, 'val')
		self.test_path_write = os.path.join(self.models_path, 'test')

		self.number_iterations = 300000 # 300k

		self.number_steering_branches = 0

		# Control the execution of simulation testing during training
		self.perform_simulation_test = False
		self.output_is_on = True
		self.pre_train_experiment = None



class configInput(configMain):

	def __init__(self):

		configMain.__init__(self)

		
		st = lambda aug: iaa.Sometimes(0.4, aug)
		oc = lambda aug: iaa.Sometimes(0.3, aug)
		rl = lambda aug: iaa.Sometimes(0.09, aug)
		self.augment = iaa.Sequential([


	        rl(iaa.GaussianBlur((0, 1.5))), # blur images with a sigma between 0 and 1.5
	        rl(iaa.AdditiveGaussianNoise(loc=0, scale=(0.0, 0.05), per_channel=0.5)), # add gaussian noise to images
	        oc(iaa.Dropout((0.0, 0.10), per_channel=0.5)), # randomly remove up to X% of the pixels
	        oc(iaa.CoarseDropout((0.0, 0.10), size_percent=(0.08, 0.2),per_channel=0.5)), # randomly remove up to X% of the pixels
	        oc(iaa.Add((-40, 40), per_channel=0.5)), # change brightness of images (by -X to Y of original value)
	        st(iaa.Multiply((0.10, 2.5), per_channel=0.2)), # change brightness of images (X-Y% of original value)
	        rl(iaa.ContrastNormalization((0.5, 1.5), per_channel=0.5)), # improve or worsen the contrast
	        rl(iaa.Grayscale((0.0, 1))), # put grayscale


	        ],
		    random_order=True # do all of the above in random order
		)
		self.augment_labels = True
		self.augment_amount = 3   #3=max, 2=mid, 1=min
		self.labels_to_augment = {"road": True, "buildings": True, "grass": True, "sky_n_zebra": True }




		# there are files with data, 200 images each, and here we select which ones to use

		
		#5self.dataset_name = 'Carla'
		#with open(os.path.join(self.save_data_stats, 'path'),'r') as f:
		#	path = f.read().strip()

			
		path = '../VirtualElektraData2_Double'


		train_path = os.path.join(path, 'SeqTrain')
		val_path = os.path.join(path, 'SeqVal')

		print train_path, val_path

		
		self.train_db_path = [os.path.join(train_path, f) for f in glob.glob1(train_path, "data_*.h5")]
		self.val_db_path = [os.path.join(val_path, f) for f in glob.glob1(val_path, "data_*.h5")]



		# When using data with noise, remove the recording during the first half of the noise impulse
		# TODO Felipe: change to noise percentage. 
		self.remove_noise =  False   

		# Speed Divide Factor

		#TODO: FOr now is hardcooded, but eventually we should be able to calculate this from data at the loading time.
		self.speed_factor = 1.0  # In KM/H FOR GTA it should be maximun 30.0


		# The division is made by three diferent data kinds
		# in every mini-batch there will be equal number of samples with labels from each group 
		# e.g. for [[0,1],[2]] there will be 50% samples with labels 0 and 1, and 50% samples with label 2
		self.labels_per_division = [[2],[2],[2]] 


		self.dataset_names = ['targets']

		self.queue_capacity = 20*self.batch_size

		# TODO NOT IMPLEMENTED Felipe: True/False switches to turn data balancing on or off
		self.balances_val = True
		self.balances_train = True
		self.augment_and_saturate_factor = True




class configTrain(configMain):

	def __init__(self):

		configMain.__init__(self)		


		self.loss_function = 'mse_branched'  # Chose between: mse_branched, mse_branched_ladd
		self.control_mode ='base_no_speed'
		self.learning_rate = 0.0002 # First
		self.training_schedule = [[50000,0.5],[100000,0.5*0.5],[150000,0.5*0.5*0.5],[200000,0.5*0.5*0.5*0.5],[250000,0.5*0.5*0.5*0.5*0.5]]    # Number of iterations, multiplying factor
		self.lambda_l2 = 1e-3 # Not used
		self.branch_loss_weight = [1]
		self.variable_weight = {'Steer':1.0}
		self.network_name = 'baseNet_deeper_noSpeed'	
		self.lambda_tolerance = 5
		self.is_training = True
		self.selected_gpu = "0"
		self.state_output_size = (0)





class configOutput(configMain):


	def __init__(self):


		configMain.__init__(self)

		self.print_interval = 2
		self.summary_writing_period = 20
		self.validation_period = 1000  # I consider validation as an output thing since it does not directly affects the training in general
		self.feature_save_interval  = 100
		self.use_curses =True  # If we want to use curses library for a cutter print
	

		self.targets_to_print = ['Steer'] # Also prints the error. Maybe Energy
		self.selected_branch = 0  # for the branches that have steering we also select the branch
		self.inputs_to_print = ['Steer']



		""" Feature Visualization Part """
		# TODO : self.histograms_list=[]	self.features_to_draw=  self.weights_to_draw=


'''class configTest(configMain):

	def __init__(self):

		configMain.__init__(self)
		
		self.interface_name = 'Carla'

		self.driver_config = "3cam_carla_drive_config"


		# This is the carla configuration related stuff'''


