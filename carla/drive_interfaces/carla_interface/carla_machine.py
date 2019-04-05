
import sys
import os

import pygame

import socket
import scipy
import re

import math

from Queue import Queue
from Queue import Empty
from Queue import Full
from threading import Thread
import tensorflow as tf
import time

import pygame

sys.path.append('../train')
from pygame.locals import *
from socket_util import *
from carla_unreal import *
from planner import *

from sklearn import preprocessing

from codification import *

from training_manager import TrainManager
import machine_output_functions
from Runnable import *
from driver import *
from drawing_tools import *
import copy
import random

sys.path.append('test')
from test_machine_performance import PerformanceTester

Reward.noise = property(lambda self: 0)


def restore_session(sess,saver,models_path):

  ckpt = 0
  if not os.path.exists(models_path):
    os.mkdir( models_path)
  
  ckpt = tf.train.get_checkpoint_state(models_path)
  if ckpt:
    print 'Restoring from ',ckpt.model_checkpoint_path  
    saver.restore(sess,ckpt.model_checkpoint_path)
  else:
    ckpt = 0

  return ckpt


def load_system(config):
  config.batch_size =1
  config.is_training=False

  training_manager= TrainManager(config)


  training_manager.build_network()


  return training_manager



class CarlaMachine(Runnable,Driver):


  def __init__(self,gpu_number,experiment_name,use_planner=False,graph_file=None,map_file=None,augment_left_right=False):

    Driver.__init__(self)
    conf_module  = __import__(experiment_name)
    self._config = conf_module.configInput()
    
    config_gpu = tf.ConfigProto()
    config_gpu.gpu_options.visible_device_list=gpu_number
    config_gpu.gpu_options.per_process_gpu_memory_fraction = 0.7
    self._sess = tf.Session(config=config_gpu)
   
    self._augment_left_right = augment_left_right

    self._straight_button = False
    self._left_button = False
    self._right_button = False
    self._recording= False
    #self._mean_image = np.load(self._config.save_data_stats + '/meanimage.npy') #no longer used
    self._train_manager =  load_system(conf_module.configTrain())


    self._sess.run(tf.global_variables_initializer())
    saver = tf.train.Saver(tf.global_variables())
    # load a manager to deal with test data
    self.use_planner = use_planner
    if use_planner:
      self.planner = Planner(graph_file,map_file)


    cpkt = restore_session(self._sess,saver,self._config.models_path)

    self.tester = PerformanceTester()
    self.checkpoint_score = 0

    self.machine_driving_count = 0
    self.human_driving_count = 0





  def start(self,host,port,config_path,resolution):

    self.carla =CarlaUnreal(host,port,config_path,resolution[0],resolution[1])


    self.carla.startAgent()
  

    self.carla.requestNewEpisode()
      
    scene,positions = self.carla.receiveSceneConfiguration()


    self.carla.newEpisode(0,0)



    joystick_count = pygame.joystick.get_count()
    print 'joystick count: ',joystick_count
    if joystick_count >1:
      print "Please Connect Just One Joystick"
      raise 

    #print joystick_count

    self.joystick = pygame.joystick.Joystick(0)
    self.joystick.init()



  def compute_direction(self,pos,ori,goal_pos,goal_ori):  # This should have maybe some global position... GPS stuff
    return 2    #always return 2 cos splitting on the basis of direction as well. and this will basically overcome that.
 


  def get_recording(self):
    return True



  def compute_action(self,speed,rewards,sensor):
    self._old_speed = speed
    
    direction = self.compute_direction((0,0,22),(0,0,1),(0,0,22),(1.0,0.02,-0.001)) #will return 2
    #sensor = sensor[1]  #contains image
    capture_time = time.time()


    sensor = sensor[0][65:265,:,:]   #sensor's first dimension contains the tuple of images from diff cameras. we have just one, and are aceessing that using [0]

    #imresize uses interpolation to resize images
    #sensor = scipy.misc.imresize(sensor,[self._config.network_input_size[0],self._config.network_input_size[1]])
    sensor = scipy.misc.imresize(sensor,[self._config.network_input_size[0],self._config.network_input_size[1],self._config.network_input_size[2]])

    image_input = sensor.astype(np.float32)

    #image_input = image_input - self._mean_image
    image_input = np.multiply(image_input, 1.0 / 127.0)


    self.continous_steer, discrete_steer, _new_speed = machine_output_functions.single_branch(image_input,self._config,self._sess,self._train_manager)


    control = Control()
    control.steer = discrete_steer
    if(_new_speed - rewards.speed) > 0.05:
      control.gas = ((_new_speed - rewards.speed ) /2.5) + 0.4 # accl till carla speed nearly equal to actual speed. constant added to overcome friction
    else:
      control.gas = 0   #if required speed is less than carla speed, do nothing. car will automatically slow down due to friction
    control.brake = 0
    control.hand_brake = 0
    control.reverse = 0



    human_intervention = False
    #if human wants to intervene, the corresponding steerings get priority
    if self.joystick.get_button( 6 ):  #left
      #print "left"
      control.steer = -1
      human_intervention = True
      self.human_driving_count = self.human_driving_count +1
    elif self.joystick.get_button( 7 ): #right
      #print "right"
      control.steer = 1
      human_intervention = True
      self.human_driving_count = self.human_driving_count +1
    else:
      self.machine_driving_count = self.machine_driving_count +1

    #update score based on current position, inclination (only when human is not intervening)
    if human_intervention == False:
      current_score = self.tester.evaluate([measurements['PlayerMeasurements'].transform.location.x, measurements['PlayerMeasurements'].transform.location.y],[measurements['PlayerMeasurements'].transform.orientation.x,measurements['PlayerMeasurements'].transform.orientation.y,measurements['PlayerMeasurements'].transform.orientation.z])
      self.checkpoint_score = self.checkpoint_score + current_score



    return control, _new_speed, human_intervention

  

  def get_sensor_data(self):
    message = self.carla.getReward()
    data = message[0]
    images = message[2]

    direction = self.compute_direction(0,0,0,0)     #will return 2
    Reward.direction = property(lambda self: direction)
    return data,images


  
  def act(self,action):

    self.carla.sendCommand(action)