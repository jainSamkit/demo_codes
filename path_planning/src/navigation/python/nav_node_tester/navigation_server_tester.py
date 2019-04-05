#!/usr/bin/env python

import rospy
from navigation.msg import Waypoint

waypoint_array = rospy.Publisher("/mission_waypoints",Waypoint,queue_size=10)

def send_waypoints_to_drone():
	waypoint_msg = Waypoint()
	waypoint_msg.alt = 5
	lat = []
	lng = []
	# for i in range(3):
	# 	lat.append(8*i)
	# 	lng.append(48*i)

	lat = [47.54,47.74,47.96]
	lng = [8.89,9.00,9.12]
	waypoint_msg.lat = lat
	waypoint_msg.lng = lng

	waypoint_array.publish(waypoint_msg)


def main():
	rospy.init_node('navigation_server_tester')
	send_waypoints_to_drone()

	# goto_setpoint_server = rospy.Service('/get_setpoints',GlobalSetpoint , handle_get_setpoints_array)
	rospy.spin()