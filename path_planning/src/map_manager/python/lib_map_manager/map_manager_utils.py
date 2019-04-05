#!/usr/bin/python
import rospy
import rospkg
from map_manager.srv import *
from path_planner.srv import *
from std_msgs.msg import Float32
from map_manager.msg import *
from commander.srv import *
# from navigation.srv import *
import transform_coordinates_2d as tc
from lib_trajectory_smoothening import trajectory_smoothening as ts
from shapely import geometry,wkt
import os
import numpy as np 
import json
import geojson
import cv2
import yaml


map_id = None
map_ids = []
map_ids_fname = None
# map_coords_combined = []
# local_coords = None
current_package_path = ""
roadmap_growth_time = 1.0
roadmap_expansion_time = 1.0
max_distance_bw_waypoints_local = 1000.0

def save_map_callback(req):
    try:
        global map_id
        map_id = req.map_id
        height = req.height_agl
        lng_coords = list(req.lng)
        lat_coords = list(req.lat)
        
        #Saving Map Id in a file.
        if(not map_id in map_ids):
            with open(map_ids_fname,'wb') as jsonfile:
                map_ids.append(map_id)
                json.dump({"ids":map_ids},jsonfile)

        # global map_coords_combined
        map_coords_combined = []
        [map_coords_combined.append([lng,lat]) for lng,lat in zip(lng_coords,lat_coords)]

        global transform_coords
        transform_coords = tc.transform_frame(resolution_x=2,resolution_y=2)
        transform_coords.find_origin_global_coordinates(map_coords_combined)

        map_info = {}
        map_info["id"] = map_id
        map_info["coords"] = map_coords_combined
        map_info["height"] = height 
        map_info["origin"] = transform_coords.origin

        with open(current_package_path+"/../i-o_files/"+str(map_id)+"_map.json",'wb') as jsonfile:
            json.dump(map_info,jsonfile)
        
        #Forwarding request parameters to /commander/get_map_info service
        get_map_info_client(map_id)

        
        # global local_coords
        local_coords = transform_coords.transform_global_to_local(map_coords_combined)

        transform_coords.max_x = max(local_coords, key=lambda x: x[0])[0]
        transform_coords.max_y = max(local_coords, key=lambda x: x[1])[1]

        transform_coordinates_instance_details = {"resolution_x":transform_coords.resolution_x,"resolution_y":transform_coords.resolution_y,"max_x":transform_coords.max_x,"max_y":transform_coords.max_y,
                                                    "origin":transform_coords.origin}

        with open(current_package_path+"/../i-o_files/"+str(map_id)+"_trans_coords_instance_details.json",'wb') as jsonfile:
            json.dump(transform_coordinates_instance_details,jsonfile)

        # rospy.loginfo("Creating occupancy grid ...")
        occupancy_grid = np.ones((int(transform_coords.max_y),int(transform_coords.max_x)),dtype=np.int8)*255
        
        rospy.logwarn("OCCUPANCY GRID CREATED")
        map_geofence_local_polygon = geometry.Polygon([[coord[0],coord[1]] for coord in local_coords])
    	
        rectangle_boundary = [[0,0],[0,int(transform_coords.max_y)+1],[int(transform_coords.max_x)+1,int(transform_coords.max_y)+1],[int(transform_coords.max_x)+1,0],[0,0]]

        print "GEOFENCE LOCAL COORDINATES -> ", map_geofence_local_polygon
        print "RECTANGLE COORDINATES -> ", rectangle_boundary

        map_geofence_local_polygon_rectangle_bound = geometry.Polygon(rectangle_boundary)
        


        intersection_polygon = map_geofence_local_polygon_rectangle_bound.intersection(map_geofence_local_polygon)
        intersection_polygon_wkt = wkt.loads(intersection_polygon.wkt)
        intersection_polygon_json = geojson.Feature(geometry=intersection_polygon_wkt,properties={})
        intersection_polygon_json_coordinates = intersection_polygon_json["geometry"]["coordinates"]

        intersection_polygon_json_coordinates = np.int32(([intersection_polygon_json_coordinates]))

        cv2.fillPoly(occupancy_grid[:, :], pts=intersection_polygon_json_coordinates, color=(0))

        cv2.imwrite(current_package_path+"/../i-o_files/"+str(map_id)+"_map.jpg",occupancy_grid)

        return True,""

    except Exception as e:
        print e 
        message = "EXCEPTION OCCURED IN SAVE MAP SERVICE CALLBACK"
        if(len(str(e)) == 0):
        	return False, message
        return False,str(e)

def save_obstacles_callback(req):
    try:
        map_id = req.map_id
        obstacle_ids = req.obstacle_ids
        all_obstacle_lngs = req.lngs
        all_obstacle_lats = req.lats

        all_obstacles_dict = {}
        all_obstacles_combined_list = []

        print "REQUEST OF SAVE OBSTACLES SERVICE -> "
        print req
        print " "

        for i in range(len(obstacle_ids)):
            id_ = obstacle_ids[i]
            print "Printing type -> ",type(all_obstacle_lngs[i])

            obstacle_lngs = all_obstacle_lngs[i].single_coord 
            obstacle_lats = all_obstacle_lats[i].single_coord

            obstacle_combined = []
            [obstacle_combined.append([lng,lat]) for lng,lat in zip(obstacle_lngs,obstacle_lats)]
            all_obstacles_combined_list.append(obstacle_combined)

            all_obstacles_dict[id_] = {"lngs":obstacle_lngs,"lats":obstacle_lats}

        with open(current_package_path+"/../i-o_files/"+str(map_id)+"_global_obstacles.json",'wb') as jsonfile:
            json.dump(all_obstacles_dict,jsonfile)

        #Transforming obstacles from global to local frame.
        transform_coords_instance_details = {}

        with open(current_package_path+"/../i-o_files/"+str(map_id)+"_trans_coords_instance_details.json",'rb') as jsonfile:
            transform_coords_instance_details = json.load(jsonfile) 

        transform_coords = tc.transform_frame(resolution_x=transform_coords_instance_details["resolution_x"],resolution_y=transform_coords_instance_details["resolution_y"])
        transform_coords.max_x = transform_coords_instance_details["max_x"]
        transform_coords.max_y = transform_coords_instance_details["max_y"]
        transform_coords.origin = transform_coords_instance_details["origin"] 

        occupancy_grid = cv2.imread(current_package_path+"/../i-o_files/"+str(map_id)+"_map.jpg")[:,:,0]
        occupancy_grid_copy = np.copy(occupancy_grid)

        for obstacle in all_obstacles_combined_list:
            local_coords = transform_coords.transform_global_to_local(obstacle)
            local_coords = np.int32(([local_coords]))
            cv2.fillPoly(occupancy_grid_copy[:, :], pts=np.array([local_coords],dtype = np.int32), color=(255))
            
        cv2.imwrite(current_package_path+"/../i-o_files/"+str(map_id)+"_map.jpg",occupancy_grid_copy)

        width = int(transform_coords.max_x)
        height = int(transform_coords.max_y)
        maxval = 255

        image = occupancy_grid_copy
        image = np.dstack((image,image,image))
        image = np.ravel(image)

        ppm_header = 'P6' + str(width) + ' ' + str(height) + ' ' + str(maxval) + '\n'
        with open(current_package_path+"/../i-o_files/"+str(map_id)+"_map.ppm",'wb') as f:
            f.write(bytearray(ppm_header,'ascii'))
            image.tofile(f)
        
        #Calling /path_planner/create_graph service
        rospy.wait_for_service('/path_planner/create_graph',timeout=2)
        create_graph_service = rospy.ServiceProxy('/path_planner/create_graph',CreateGraph)
        response = create_graph_service(map_id,roadmap_growth_time,roadmap_expansion_time)        

        print "CREATE GRAPH SERVICE ->", response
        if(not response.success):
            return False,response.message

        return True,""

    except Exception as e:
        print e
        return False,str(e)

# def get_map_info_client(req):
#     try:
#         rospy.wait_for_service('/commander/get_map_info',timeout=2)
#         send_map_info = rospy.ServiceProxy('/commander/get_map_info',GET_MAP_INFO)
#         response = send_map_info(req.map_id,req.height_agl,req.lng,req.lat)
#         return (response.success, response.message)

#     except rospy.ServiceException, e:
#         return (False,str(e))

def start_mission_callback(req):
    try:
        print "Checking Existence of files needed to make PRM Roadmap ..."
        fname1 = current_package_path+"/../i-o_files/"+str(req.map_id)+"_coordinates.csv"
        fname2 = current_package_path+"/../i-o_files/"+str(req.map_id)+"_edges.csv"
        check1 = os.path.isfile(fname1)
        check2 = os.path.isfile(fname2)
        
        if(not check1):
            return False, fname1+" does not exist."
        if(not check2):
            return False, fname2+" does not exist."

        fname3 = current_package_path+"/../i-o_files/"+str(req.map_id)+"_trans_coords_instance_details.json"
        check3 = os.path.isfile(fname3)
        if(not check3):
            return False, fname3+" does not exist."

        print "Setting up an instance of transform frame class ..."
        #Setting up an instance of transform_frame class with the same member values as used while generating map.
        transform_coords_instance_details = {}        
        with open(fname3,'rb') as jsonfile:
            transform_coords_instance_details = json.load(jsonfile) 

        transform_coords = tc.transform_frame(resolution_x=transform_coords_instance_details["resolution_x"],resolution_y=transform_coords_instance_details["resolution_y"])
        transform_coords.max_x = transform_coords_instance_details["max_x"]
        transform_coords.max_y = transform_coords_instance_details["max_y"]
        transform_coords.origin = transform_coords_instance_details["origin"] 

        start_target_global_coords = [[req.start_lng,req.start_lat],[req.target_lng,req.target_lat]]

        start_target_local_coords = transform_coords.transform_global_to_local(start_target_global_coords)

        height_agl = None
        with open(current_package_path+"/../i-o_files/"+str(req.map_id)+"_map.json",'rb') as jsonfile:
            height_agl = json.load(jsonfile)["height"]

        #Calling /path_planner/find_path service.
        print "Calling find_path_service"
        success,response = get_waypoints_local_client(req.map_id,start_target_local_coords,height_agl)
        
        if(not success):
            return False, response
        elif(success and not response.success):
            return False, response.message

        local_pos_x = response.pos_x
        local_pos_y = response.pos_y 

        #Converting local to global coordinates
        print "Converting local path coordinates to global ..."
        combined_path_local_coords = []
        [combined_path_local_coords.append([x,y]) for x,y in zip(local_pos_x,local_pos_y)]

        print "Path before smoothening -----------------"
        print combined_path_local_coords

        traj_smoothen = ts.smoothen_path(np.asarray(combined_path_local_coords),max_distance = max_distance_bw_waypoints_local)
        smoothened_combined_path_local_coords = traj_smoothen.fix_path()

        print "Path after smoothening ------------------"
        print smoothened_combined_path_local_coords

        
        path_global_coords = transform_coords.transform_local_to_global(combined_path_local_coords)
        print "Global Path Waypoints -------------------"
        print path_global_coords
        
        # #Calling MissionWaypoints Service
        # success,response = mission_waypoints_client(path_global_coords,height_agl)
        # if(not success):
        #     return False, response
        # elif(success and not response.success):
        #     return False,response.message

        return True, response.message
    except Exception as e:
        print "Start Mission Service Exception -> ",e
        return False,str(e)

def get_waypoints_local_client(map_id,start_target_local_coords,height_agl):
    try:
        rospy.wait_for_service('/path_planner/find_path',timeout=2)
        find_path_service = rospy.ServiceProxy('/path_planner/find_path',FindPath)
        find_path_response = find_path_service(map_id,start_target_local_coords[0],start_target_local_coords[1],height_agl)
        return True,find_path_response

    except Exception as e:
        print "Find Path Service Exception -> ",e
        return False,str(e)

# def mission_waypoints_client(path_global_coords,height_agl):
#     try:
#         path_lng_coords = []
#         path_lat_coords = []
#         path_height_agl_coords = []

#         for i in range(len(path_global_coords)):
#             c = path_global_coords[i]
#             path_lng_coords.append(c[0])
#             path_lat_coords.append(c[1])
#             path_height_agl_coords.append(height_agl)
    
#         rospy.wait_for_service('/navigation/mission_waypoints',timeout=2)
#         mission_waypoints_service = rospy.ServiceProxy('/navigation/mission_waypoints',MissionWaypoints)
#         service_request = MissionWaypointsRequest(lng = path_lng_coords,lat = path_lat_coords,height_agl = path_height_agl_coords)
#         response = mission_waypoints_service(service_request)

#         return True,response
        
#     except Exception as e:
#         print "Mission Waypoints Service Exception -> ",e
#         return False, str(e)

# def get_map_info_callback(req):
#     print "Printing Request parameters for get map info service..."
#     print req.map_id
#     print req.height_agl
#     print req.lng
#     print req.lat

#     return True,""

def get_map_info_client(local_map_id):
    try:
        print "CALLING GET MAP INFO"
        map_lng = [] 
        map_lat = []
        map_height_agl = 0

        if(len(local_map_id) != 0):
            fname = current_package_path+"/../i-o_files/"+local_map_id+"_map.json"
            with open(fname,'rb') as jsonfile:
                map_info = json.load(jsonfile)
                coords = map_info["coords"]
                for coord in coords:
                    map_lng.append(coord[0])
                    map_lat.append(coord[1])
                map_height_agl = map_info["height"]


        rospy.wait_for_service('/commander/get_map_info',timeout=2)
        get_map_info_service = rospy.ServiceProxy('/commander/get_map_info',GET_MAP_INFO)
        print "CREATING SERVICE REQUEST MESSAGE ..."
        service_request = GET_MAP_INFORequest(local_map_id,map_lat,map_lng,map_height_agl)
        print "CALLING NOW ..."
        get_map_info_response = get_map_info_service(service_request)
        # get_map_info_response = get_map_info_service(local_map_id,map_height_agl,map_lng,map_lat)

        if(get_map_info_response.success):
            print "Get_Map_Info service request successful!"
        else:
            print "Get_Map_Info service request failed due to -> ",get_map_info_response.message

    except Exception as e:
        print "Execption in get_map_info service call -> ",e

def get_map_list_callback(req):
    try:
        fname = current_package_path+"/../i-o_files/map_ids.json"
        check_file_existence = os.path.isfile(fname)
        service_response = GetMapListResponse()

        service_response.success = True
        service_response.message = "Map IDs obtained successfully"
        service_response.map_ids = None

        if(not check_file_existence):
            service_response.success = False
            service_response.message = "No Maps have been added yet."
            service_response.map_ids = []
            return service_response
        

        with open(map_ids_fname,'rb') as jsonfile:
            map_ids = json.load(jsonfile)["ids"]

        service_response.map_ids = map_ids
        return service_response
        
    except Exception as e:
        print "Exception occured in Get Map List Callback -> ",e
        service_response = GetMapListResponse()
        service_response.success = False
        service_response.message = str(e)
        service_response.map_ids = []
        return service_response

def get_map_info_by_name_callback(req):
    try:
        print("Recieved the following map_id : {}".format(req.map_id))
        map_id = req.map_id
        service_response = GetMapInfoByNameResponse()
        service_response.success = True
        service_response.message = "Map Information obtained successfully."
        service_response.map_lng = []
        service_response.map_lat = []
        service_response.obstacle_ids = []
        service_response.obstacle_lngs = []
        service_response.obstacle_lats = []

        map_fname = current_package_path+"/../i-o_files/"+str(map_id)+"_map.json"
        print "MAP FILE NAME -> ",map_fname
        
        check_file_existence1 = os.path.isfile(map_fname)
        if(not check_file_existence1):
            service_response.success = False
            service_response.message = "No Maps have been added yet. : "    
            return service_response     

        get_map_info_client(map_id)
        
        with open(map_fname,'rb') as jsonfile:
            map_coords = json.load(jsonfile)["coords"]

        map_lng = []
        map_lat = []

        for coord in map_coords:
            map_lng.append(coord[0])
            map_lat.append(coord[1])

        obstacle_fname = current_package_path+"/../i-o_files/"+str(map_id)+"_global_obstacles.json"
        check_file_existence2 = os.path.isfile(obstacle_fname)
        if(not check_file_existence2):
            service_response.message = "No Obstacles have been added for this map yet."
            service_response.map_lat = map_lat
            service_response.map_lng = map_lng
            return service_response

        
        service_response.map_lng = map_lng
        service_response.map_lat = map_lat

        global_obstacles = None
        with open(obstacle_fname) as jsonfile:
            global_obstacles = json.load(jsonfile)

        obstacle_ids = []
        obstacle_lngs = []
        obstacle_lats = []

        for key in global_obstacles.keys():
            obstacle_ids.append(key)
            obstacle_lngs.append(Float1DArray(global_obstacles[key]["lngs"]))
            obstacle_lats.append(Float1DArray(global_obstacles[key]["lats"]))

        service_response.obstacle_ids = obstacle_ids
        service_response.obstacle_lngs = obstacle_lngs
        service_response.obstacle_lats = obstacle_lats
        return service_response

    except Exception as e:
        print "Exception in Get Map Info By Name Callback -> ",e
        service_response.success = False
        service_response.message = "Exception in GetMapInfoByName -> "+str(e)
        service_response.map_lng = []
        service_response.map_lat = []
        service_response.obstacle_ids = []
        service_response.obstacle_lngs = []
        service_response.obstacle_lats = []
        return service_response
                   

def get_obstacles_callback(req):
    try:
        map_id = req.map_id

        check_file_existence = os.path.isfile(map_ids_fname)
        if(not check_file_existence):

            return False,"No obstacles file exists for Map ID -> "+map_id,[],[],[]
            
        print "get_obstacles service called with map_id -> ",map_id
        with open(current_package_path+"/../i-o_files/"+map_id+"_global_obstacles.json") as jsonfile:
            global_obstacles = json.load(jsonfile)
        
        obstacles_ids = []
        obstacles_lngs = []
        obstacles_lats = []
        
        for key in global_obstacles.keys():
            obstacles_ids.append(key)
            obstacles_lngs.append(Float1DArray(global_obstacles[key]["lngs"]))
            obstacles_lats.append(Float1DArray(global_obstacles[key]["lats"]))

        service_response = GetObstaclesResponse()

        service_response.success = True
        service_response.obstacle_ids = obstacles_ids 
        service_response.lngs = obstacles_lngs
        service_response.lats = obstacles_lats
        return service_response

    except (Exception, rospy.ServiceException), e:
        print "Exception in get_obstacles service -> ",e
        return False,str(e),[],[],[]

def main():
    try:
        rospy.init_node('map_manager')

        print "creating services."
        rospack = rospkg.RosPack()
        global current_package_path
        current_package_path = rospack.get_path('map_manager')

        _ = rospy.Service('/map_manager/save_map',SaveMap,save_map_callback)
        _ = rospy.Service('/map_manager/save_obstacles',SaveObstacles,save_obstacles_callback)
        _ = rospy.Service('/map_manager/start_mission',StartMission,start_mission_callback)
        _ = rospy.Service('/map_manager/get_obstacles',GetObstacles,get_obstacles_callback)
        _ = rospy.Service('/map_manager/get_map_list',GetMapList,get_map_list_callback)
        _ = rospy.Service('/map_manager/get_map_info_by_name',GetMapInfoByName,get_map_info_by_name_callback)
        # _ = rospy.Service('/commander/get_map_info',GET_MAP_INFO,get_map_info_callback) 

        #Checking if a file containing map_ids exist. If yes, then read and save the IDs. Also, selecting a random map ID to get its details for /commander/get_map_info service request.
        random_map_id = ""
        global map_ids_fname 
        map_ids_fname = current_package_path+"/../i-o_files/map_ids.json"
        check_file_existence = os.path.isfile(map_ids_fname)
        
        if(check_file_existence):
            with open(map_ids_fname,'rb') as jsonfile:  
                global map_ids
                map_ids = json.load(jsonfile)["ids"]
                random_map_id = map_ids[0]
        
        # get_map_info_client(random_map_id)
    
        rospy.spin()

    except Exception as e:
        print "Exception caught in creating services in Map Manager Node -> ",e
