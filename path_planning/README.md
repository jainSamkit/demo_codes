# sc2_web_app

## This project aims at path planning of the drones in a predefined constraied environment.

##Commander 

THis module exposes high level APIs as rosservice calls to define a map and obstacles inside it.The apis start and stop obstacle are implemented to tacke this task.

##Map Manager

This module aims to load and save map details at runtime.It further schedules tasks for the path planner whenever any changes are made in the real time map.

##Path Planner

This module is used to plan a path around map from one location to the another.Path planning uses ROS OMPL library .

##Navigation

This module is used to schedule a waypoint/setpoint mission for the drone.