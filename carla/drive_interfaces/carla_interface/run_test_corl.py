from __future__ import print_function


import pdb
#from scene_parameters import SceneParams

from PIL import Image
import numpy as np
import json, csv

import random
import time
import sys
import argparse
import logging
from socket import error as socket_error
sys.path.append('protoc')


sys.path.append('drive_interfaces')
sys.path.append('drive_interfaces/carla_interface')
sys.path.append('drive_interfaces/carla_interface/carla_client')

sys.path.append('drive_interfaces/carla_interface/carla_client/protoc')
sys.path.append('test_interfaces')
sys.path.append('utils')
sys.path.append('dataset_manipulation')
sys.path.append('configuration')
sys.path.append('input')
sys.path.append('train')
sys.path.append('utils')
sys.path.append('input/spliter')
sys.path.append('structures')


from carla_pack_pb2 import  Scene,EpisodeStart,EpisodeReady,Control,Reward
from carla_machine import *
from carla_unreal import CarlaUnreal

from run_tests import load_carla_0_parameters,load_carla_1_parameters,run_experiment

def generate_camera_str(dic):
    camera_str = '''
[CARLA/SceneCapture/%s]
PostProcessing=%s
ImageSizeX=%d
ImageSizeY=%d
CameraFOV=%d
CameraPositionX=%d
CameraPositionY=%d
CameraPositionZ=%d
CameraRotationPitch=%d
CameraRotationRoll=%d
CameraRotationYaw=%d''' % (dic['NAME'], dic['TYPE'], dic['ImageSizeX'], dic['ImageSizeY'], 
    dic['CameraFOV'], dic['CameraPositionX'], dic['CameraPositionY'],
    dic['CameraPositionZ'], dic['CameraRotationPitch'], 
    dic['CameraRotationRoll'], dic['CameraRotationYaw'])
    
    return (dic['NAME'], camera_str)

    
def generate_conffile_from_dict(opt_dict):
    str_preamble = '''
[CARLA/Server]
UseNetworking=true
WorldPort=2000
WritePort=2001
ReadPort=2002'''

    str_level = '''
[CARLA/LevelSettings]
NumberOfVehicles=%d
NumberOfPedestrians=%d
WeatherId=%d''' % (opt_dict['VEHICLES'], opt_dict['PEDESTRIANS'], opt_dict['WEATHER'])
                
                
    str_camera_pre = '''
[CARLA/SceneCapture]
Cameras='''
              
    str_camera_pos = ''
    N = len(opt_dict['CAMERAS'])
    for c in range(N):
        (camera_name, str_camera) = generate_camera_str(opt_dict['CAMERAS'][c])
        str_camera_pos += ('\n' + str_camera)
        
        str_camera_pre += camera_name
        if(c+1 != N):
            str_camera_pre += ','
           
    str_cameras = str_camera_pre + '\n' + str_camera_pos
    str_conf = str_preamble + '\n\n' + str_level + '\n\n' + str_cameras + '\n'
    
    with open(opt_dict['EXP_NAME'], "w") as text_file:
        text_file.write(str_conf)
    



def main(host,port,summary_name,ncars,npedestrians,city,resolution,timeouts,experiments_to_run,weathers_in,runnable):
    host = host
    port = int(port)

    summary_file = summary_name
    
    # cameras setup
    width = resolution[0]
    height = resolution[1]
    fov = 100
    c_x = 140
    c_y = 0
    c_z = 140
    r_p = -10
    r_r = 0
    r_y = 0



    cameras = [ {'NAME':'RGB', 'TYPE':'SceneFinal', 'ImageSizeX':width, 
                 'ImageSizeY':height, 'CameraFOV':fov, 'CameraPositionX':c_x,
                 'CameraPositionY':c_y, 'CameraPositionZ':c_z,
                 'CameraRotationPitch':r_p, 'CameraRotationRoll':r_r,
                 'CameraRotationYaw':r_y}   
            
               ]



    if city == 'carla_0':
      start_goal_poses,pedestrians,vehicles,weathers, repetitions_per_experiment = load_carla_0_parameters()
    else:
      start_goal_poses,pedestrians,vehicles,weathers, repetitions_per_experiment = load_carla_1_parameters()

    weathers =weathers_in
    opt_dict = {'CARLA':None, 'HOST':host, 'PORT':port, 'TIMEOUT':timeouts, 
                'OUTPUT_SUMMARY':summary_file, 'RUNNABLE':runnable, 
                'CAMERAS':cameras, 'WIDTH':width, 'HEIGHT':height, 
                'WEATHERS':weathers, 'REPETITIONS':repetitions_per_experiment,
                'START_GOAL_POSES':start_goal_poses, 'PEDESTRIANS':pedestrians,
                'VEHICLES':vehicles, 'EXPERIMENTS_TO_RUN':experiments_to_run}

    # run experiments
    run_experiment(opt_dict)
            

if(__name__ == '__main__'):

  parser = argparse.ArgumentParser(description='Chauffeur')



  parser.add_argument('-g','--gpu', type=str,default="0", help='GPU NUMBER')
  parser.add_argument('-lg', '--log', help="activate the log file",action="store_true") 
  parser.add_argument('-db', '--debug', help="put the log file to screen",action="store_true") 

  # Train 
  # TODO: some kind of dictionary to change the parameters
  parser.add_argument('-e', '--experiment-name', help="The experiment name (NAME.py file should be in configuration folder, and the results will be saved to models/NAME)", default="")


  # Drive
  parser.add_argument('-cc', '--carla-config', help="Carla config file used for driving", default="./drive_interfaces/carla_interface/CarlaSettings.ini")
  parser.add_argument('-l', '--host', type=str, default='127.0.0.1', help='The IP where DeepGTAV is running')
  parser.add_argument('-p', '--port', default=8000, help='The port where DeepGTAV is running')  
  parser.add_argument('-pt','--path', type=str,default="/media/adas/012B4138528FF294/TestBranchNoCol2/", help='Path to Store outputs')
  parser.add_argument('-sc', '--show_screen', action="store_true", help='If we are showing the screen of the player')
  parser.add_argument('-res', '--resolution', default="400,300", help='If we are showing the screen of the player')
  parser.add_argument('-nc', '--ncars', default=20, help='The number of cars')
  parser.add_argument('-np', '--npedestrians', default=100, help='The number of pedestrians')
  parser.add_argument('--driver', default="Human", help='Select who is driving, a human or a machine')
  parser.add_argument('-s','--summary', default="summary_number_1", help='summary')
  parser.add_argument('-cy','--city', default="carla_1", help='select the graph from the city being used')
  parser.add_argument('-t', '--tasks', default="0,1,2,3", help='The tasks used on testing')
  parser.add_argument('-ti', '--time', default="60,90,120,150", help='The times for each experiment')
  parser.add_argument('-w', '--weathers', default="1", help='The weathers')


  args = parser.parse_args()
  res_string = args.resolution.split(',')
  resolution = []
  resolution.append(int(res_string[0]))
  resolution.append(int(res_string[1]))


  tasks_string = args.tasks.split(',')
  tasks = [int(x) for x in tasks_string ]

  weathers_string = args.weathers.split(',')
  weathers = [int(x) for x in weathers_string ]


  time_string = args.time.split(',')
  timeouts = [float(x) for x in time_string ]

  # instance your controller here
  runnable = CarlaMachine("0",args.experiment_name,True,'drive_interfaces/carla_interface/'+args.city+'.txt','drive_interfaces/carla_interface/'+args.city+'.png')
  main(args.host,args.port,args.summary,args.ncars,args.npedestrians,args.city,resolution,timeouts,tasks,weathers,runnable)
