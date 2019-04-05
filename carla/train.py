import logging
import sys
sys.path.append('configuration')
sys.path.append('input')
sys.path.append('train')
sys.path.append('output')
#from config import *
from dataset_manager  import *
from training_manager import TrainManager
from output_manager import OutputManager

import tensorflow as tf
import numpy as np

def restore_session(sess,saver,models_path):

  ckpt = 0
  if not os.path.exists(models_path):
    os.mkdir( models_path)
    os.mkdir( models_path + "/train/")
    os.mkdir( models_path + "/val/")
  
  ckpt = tf.train.get_checkpoint_state(models_path)
  if ckpt:
    print 'Restoring from ',ckpt.model_checkpoint_path  
    saver.restore(sess,ckpt.model_checkpoint_path)
  else:
    ckpt = 0

  return ckpt



    

def save_model(saver,sess,models_path,i):

  saver.save(sess, models_path + '/model.ckpt', global_step=i)
  print 'Model saved.'


def get_last_iteration(ckpt):

  if ckpt:
    return int(ckpt.model_checkpoint_path.split('-')[1])
  else:
    return 1



def train(gpu_number, experiment_name):



  """ Initialize the input class to get the configuration """

  conf_module = __import__(experiment_name)

  config = conf_module.configMain()
  manager = DatasetManager(conf_module.configInput())


  """ Get the batch tensor that is going to be used around """
  batch_tensor = manager.train.get_batch_tensor()
  batch_tensor_val = manager.validation.get_batch_tensor()
  config_gpu = tf.ConfigProto()
  config_gpu.gpu_options.visible_device_list=gpu_number
  sess = tf.Session(config=config_gpu)


  manager.start_training_queueing(sess)
  manager.start_validation_queueing(sess)




  training_manager= TrainManager(conf_module.configTrain())

  print 'building network'
  training_manager.build_network()

  print 'building loss'
  training_manager.build_loss()

  print 'building optimization'
  training_manager.build_optimization()

  """ Initializing Session as variables that control the session """
  print 'initializing variables'
  sess.run(tf.global_variables_initializer())
  saver = tf.train.Saver(tf.global_variables(),max_to_keep=0)


  """Load a previous model if it is configured to restore """
  print 'restoring checkpoint'
  cpkt = 0
  if config.restore:
    cpkt = restore_session(sess,saver,config.models_path)



  # """Training"""


  # """ Get the Last Iteration Trained """

  initialIteration = get_last_iteration(cpkt)


  output_manager = OutputManager(conf_module.configOutput(),training_manager,sess,batch_tensor_val)
  # output_manager = output_class.get_output_manager()

  # # CREATE HERE THE TF SESSION

  print_flag = True
    
  for i in range(initialIteration, config.number_iterations):

   
    #   """ Get the training batch """
    

    #   start_time = time.time()
    #   """Save the model every 300 iterations"""
    start_time = time.time()
    if i%6000 == 0:

      save_model(saver,sess,config.models_path,i)


    training_manager.run_train_step(batch_tensor,sess,i)
    #   #print "RUNNED STEP"


    duration = time.time() - start_time

      
    #   """ With the current trained net, let the outputmanager print and save all the outputs """
    output_manager.print_outputs(i,duration) 

    if print_flag == True:
      #print entire batch(only once) to check if it is balanced
      np.savetxt('batch_values.txt', output_manager._logger._last_batch_inputs, newline=' ',)
      print_flag = False

      #print(open('batch_values.txt', 'r').read().count(" 1.0")
      #use something like this in terminal to check number of occurances of each
