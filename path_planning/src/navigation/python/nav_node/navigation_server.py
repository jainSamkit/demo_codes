#!/usr/bin/env python

import rospy
from core_api.srv import *
from navigation.srv import MissionWaypoints
from geometry_msgs.msg import TwistStamped
from mavros_msgs.msg import Waypoint,WaypointList
import time

# from 

global lat_x
global lng_y 
global alt

lat_x = []
lng_y = []

waypoint_data_pub = rospy.Publisher('/waypoint_array', TwistStamped, queue_size=10)

def publish_waypoint_data(lat_x,lng_y):

	# rate = rospy.Rate(30)
	
	print "lat_x:",lat_x
	print "lng_y:",lng_y

	print "length lat_x:",len(lat_x)

	count = int(len(lat_x))
	i=0
	
	while not rospy.is_shutdown() and i<count:
		print "reached:",str(i)
		
		waypoint_msg_data = TwistStamped()
		waypoint_msg_data.twist.linear.x = lat_x[i]
		waypoint_msg_data.twist.linear.y = lng_y[i]
		waypoint_msg_data.twist.linear.z = 0

		waypoint_msg_data.twist.angular.x = 0
		waypoint_msg_data.twist.angular.y = 0
		waypoint_msg_data.twist.angular.z = 0
		# print "reached here:",str(i)
		waypoint_data_pub.publish(waypoint_msg_data)
		# rate.sleep()
		i = i+1
		print "i is:",str(i)
		


	# for i in range(len(lat_x)):
	# 	print "reached:",str(i)
	# 	waypoint_msg_data = TwistStamped()
	# 	waypoint_msg_data.twist.linear.x = lat_x[i]
	# 	waypoint_msg_data.twist.linear.y = lng_y[i]
	# 	waypoint_msg_data.twist.linear.z = alt

	# 	waypoint_msg_data.twist.angular.x = 0
 #    	waypoint_msg_data.twist.angular.y = 0
 #    	waypoint_msg_data.twist.angular.z = 0

 #    	waypoint_data_pub.publish(waypoint_msg_data)
 #    	rate.sleep()

		





def handle_set_mission_waypoints(req):

	global lat_x
	global lng_y
	global alt

	
	lat_x = req.lat
	lng_y = req.lng
	alt = req.height_agl

	print "MISSION WAYPOINTS REQUEST -> "
	print req
	print ""
	if lat_x is None:
		message ="No waypoints received."
		return False,message
	else:
		publish_waypoint_data(lat_x,lng_y)

		waypoint_list = []
		final_waypoint = WaypointList()
		

		# for i in range(len(lat_x)):

		# 	# print "reached "
		# 	# x = lat_x[i]
		# 	# y = lng_y[i]
		# 	# z = alt[i]
			
		# 	print "X AND Y COORDS ->"
		# 	print x
		# 	print y
		# 	print "--------------"
			
		# 	try:
		# 		print "Waiting for position_set_global"
		# 		rospy.wait_for_service('/flytos/navigation/position_set_global',timeout=2)
		# 		print "After "
		# 		handle = rospy.ServiceProxy('/flytos/navigation/position_set_global', PositionSetGlobal)
		# 		req_msg = PositionSetGlobalRequest(lat_x=x, long_y=y, rel_alt_z=z, yaw=0, tolerance=0.2, async=False, yaw_valid=False)
		# 		resp = handle(req_msg)

		# 	except rospy.ServiceException, e:
		# 		rospy.logerr("global pos set service call failed %s", e)
		# 		return False, e


		for i in range(len(lat_x)):
			waypoint = Waypoint()
			waypoint.frame = 3
			waypoint.command = 16
			if i==0:
				waypoint.is_current = True
			else:
				waypoint.is_current = False
			
			waypoint.autocontinue = True
			waypoint.param1 = 2.0
			waypoint.param2 = 0
			waypoint.param3 = 0
			waypoint.param4 = 0
			waypoint.x_lat = lat_x[i]
			waypoint.y_long = lng_y[i]
			waypoint.z_alt = 2.5
			
			print "Printing Waypoint ....."
			print waypoint
			
			waypoint_list.append(waypoint)
			
		final_waypoint.waypoints = [waypoint_list]

		try:
			rospy.wait_for_service('/flytos/navigation/waypoint_set',timeout=10)
			handle = rospy.ServiceProxy('/flytos/navigation/waypoint_set', WaypointSet)
			req_msg = WaypointSetRequest(waypoints = waypoint_list)
			resp = handle(req_msg)
			message = "Sent mission waypoints to the drone successfully."
			
			if resp.success is True:
				print "Mission sent successfully to the drone.Executing setpoints."
				
				try:
					rospy.wait_for_service('/flytos/navigation/waypoint_execute')
					handle = rospy.ServiceProxy('/flytos/navigation/waypoint_execute',WaypointExecute)
					req_msg = WaypointExecuteRequest()
					resp = handle(req_msg)
					message = "Executing mission!"
					
					return resp.success, resp.message
				except Exception as e:
					print e
					return False, str(e)
					
					

		except Exception as e:
			message = "Error sending waypoints to the drone" + " " + str(e)
			return False,message

	

	


# waypoint_array = rospy.Subscriber("/mission_waypoints",Waypoint,send_waypoint_to_drone)
send_mission_waypoints = rospy.Service('/navigation/mission_waypoints',MissionWaypoints,handle_set_mission_waypoints)





def main():
	global waypoint_data_pub
	
	rospy.init_node('navigation_server')
	

	# goto_setpoint_server = rospy.Service('/get_setpoints',GlobalSetpoint , handle_get_setpoints_array)
	rospy.spin()