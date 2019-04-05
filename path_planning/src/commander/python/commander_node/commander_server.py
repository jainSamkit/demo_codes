#!/usr/bin/env python

import rospy
# from core_api.srv import *
# from navigation.srv import GlobalSetpoint,GlobalSetpointResponse
# from navigation.msg import Waypoint
from geometry_msgs.msg import TwistStamped
from sensor_msgs.msg import NavSatFix
from geopy.distance import geodesic
from commander.srv import *
from map_manager.srv import *
from map_manager.msg import *

global drone_long
global drone_lat
global drone_alt

drone_long = None
drone_lat = None
drone_alt = None


global obstacle_lat,obstacle_long

obstacle_lat = [[37.42933, 37.4293345, 37.4293393, 37.4293443, 37.4293493, 37.4293543, 37.4293592, 37.4293638, 37.4293687, 37.4293739, 37.4293786, 37.4293834, 37.4293884, 37.4293936, 37.4293982, 37.4294028, 37.4294076, 37.4294124, 37.4294174, 37.4294225, 37.4294277, 37.429433, 37.4294383, 37.4294435, 37.4294482, 37.429453, 37.4294579, 37.4294625, 37.4294667, 37.429467, 37.4294661, 37.4294651, 37.4294641, 37.4294632, 37.4294624, 37.4294617, 37.429461, 37.4294605, 37.4294599, 37.4294595, 37.429459, 37.4294586, 37.4294582, 37.4294577, 37.4294573, 37.4294569, 37.4294565, 37.4294561, 37.4294557, 37.4294554, 37.429455, 37.4294546, 37.4294542, 37.4294537, 37.4294533, 37.4294527, 37.4294509, 37.4294465, 37.4294418, 37.4294369, 37.4294322, 37.4294275, 37.4294229, 37.429418, 37.4294135, 37.4294088, 37.4294038, 37.4293987, 37.4293942, 37.4293895, 37.4293847, 37.4293797, 37.4293747, 37.4293695, 37.4293643, 37.4293598, 37.4293553, 37.4293506, 37.429346, 37.4293412, 37.4293365, 37.4293313, 37.4293265, 37.429322, 37.4293183, 37.4293171, 37.4293172, 37.4293177, 37.4293184, 37.4293192, 37.42932, 37.4293207, 37.4293214, 37.4293221, 37.4293228, 37.4293236, 37.4293243, 37.4293248, 37.4293253, 37.4293259, 37.4293265, 37.429327, 37.4293276, 37.4293282, 37.4293287, 37.4293293, 37.4293298, 37.4293303, 37.4293307, 37.429331, 37.4293303],
				[37.4296085, 37.4296129, 37.4296174, 37.4296223, 37.429627, 37.4296316, 37.4296367, 37.4296416, 37.4296467, 37.4296514, 37.4296563, 37.4296614, 37.4296667, 37.4296713, 37.429676, 37.4296809, 37.4296859, 37.429691, 37.4296963, 37.4297017, 37.4297071, 37.4297127, 37.429718, 37.4297231, 37.4297284, 37.4297334, 37.4297381, 37.4297427, 37.4297453, 37.4297442, 37.4297429, 37.4297418, 37.4297408, 37.42974, 37.4297393, 37.4297387, 37.4297381, 37.4297376, 37.4297371, 37.4297366, 37.4297362, 37.4297357, 37.4297353, 37.4297348, 37.4297343, 37.4297338, 37.4297332, 37.4297327, 37.4297323, 37.4297318, 37.4297313, 37.4297308, 37.4297302, 37.4297298, 37.4297292, 37.4297282, 37.4297253, 37.4297208, 37.429716, 37.4297113, 37.4297068, 37.4297019, 37.429697, 37.4296924, 37.4296875, 37.4296825, 37.4296779, 37.4296732, 37.4296683, 37.4296633, 37.4296581, 37.4296536, 37.429649, 37.4296442, 37.4296394, 37.4296345, 37.4296295, 37.4296244, 37.4296192, 37.429614, 37.4296088, 37.4296042, 37.4295994, 37.4295952, 37.4295933, 37.4295931, 37.4295934, 37.4295939, 37.4295945, 37.4295952, 37.4295958, 37.4295965, 37.4295972, 37.4295979, 37.4295985, 37.4295991, 37.4295997, 37.4296003, 37.4296009, 37.4296015, 37.429602, 37.4296026, 37.4296031, 37.4296036, 37.429604, 37.4296045, 37.4296049, 37.4296053, 37.4296055, 37.4296047],
				 [37.4294241, 37.4294191, 37.4294142, 37.4294096, 37.4294046, 37.4293994, 37.4293946, 37.4293897, 37.4293845, 37.4293798, 37.4293751, 37.4293701, 37.4293651, 37.4293599, 37.4293545, 37.4293499, 37.4293453, 37.4293406, 37.4293357, 37.4293308, 37.4293259, 37.4293209, 37.4293157, 37.4293105, 37.4293052, 37.4292998, 37.4292944, 37.4292892, 37.4292842, 37.4292791, 37.4292741, 37.4292694, 37.4292657, 37.4292654, 37.429266, 37.4292668, 37.4292676, 37.4292684, 37.4292691, 37.4292698, 37.4292705, 37.4292711, 37.4292717, 37.4292722, 37.4292727, 37.4292732, 37.4292737, 37.4292741, 37.4292745, 37.4292749, 37.4292752, 37.4292756, 37.4292759, 37.4292763, 37.4292766, 37.429277, 37.4292774, 37.4292777, 37.4292781, 37.4292785, 37.4292788, 37.4292792, 37.4292796, 37.42928, 37.4292803, 37.4292806, 37.4292809, 37.4292812, 37.4292828, 37.429287, 37.4292916, 37.4292961, 37.4293009, 37.4293058, 37.4293105, 37.4293155, 37.4293202, 37.429325, 37.4293302, 37.4293347, 37.4293395, 37.4293443, 37.4293493, 37.4293545, 37.4293597, 37.4293642, 37.4293687, 37.4293733, 37.429378, 37.4293828, 37.4293877, 37.4293926, 37.4293976, 37.4294027, 37.4294078, 37.429413, 37.4294184, 37.4294237, 37.4294291, 37.4294346, 37.4294399, 37.4294448, 37.4294499, 37.4294548, 37.4294594, 37.4294628, 37.4294634, 37.429463, 37.4294623, 37.4294616, 37.4294608, 37.42946, 37.4294593, 37.4294587, 37.4294581, 37.4294575, 37.429457, 37.4294565, 37.429456, 37.4294555, 37.4294551, 37.4294547, 37.4294543, 37.4294539, 37.4294536, 37.4294532, 37.4294528, 37.4294525, 37.4294521, 37.4294517, 37.4294514, 37.429451, 37.4294507, 37.4294504, 37.4294501, 37.4294497, 37.4294494, 37.429449, 37.4294487, 37.4294485, 37.4294488]]

obstacle_lng = [[-122.0834054, -122.0834044, -122.0834042, -122.0834042, -122.0834042, -122.0834042, -122.0834043, -122.0834043, -122.0834044, -122.0834044, -122.0834045, -122.0834045, -122.0834045, -122.0834046, -122.0834046, -122.0834046, -122.0834046, -122.0834045, -122.0834045, -122.0834045, -122.0834045, -122.0834044, -122.0834044, -122.0834044, -122.0834044, -122.0834045, -122.0834047, -122.0834046, -122.0834022, -122.0833964, -122.0833904, -122.0833848, -122.0833788, -122.0833728, -122.083367, -122.0833609, -122.0833551, -122.0833491, -122.0833429, -122.0833372, -122.0833314, -122.0833254, -122.0833193, -122.0833131, -122.0833067, -122.0833002, -122.0832936, -122.0832878, -122.0832819, -122.0832759, -122.0832698, -122.0832635, -122.0832572, -122.0832509, -122.0832446, -122.083239, -122.0832337, -122.0832316, -122.0832321, -122.0832332, -122.0832343, -122.0832354, -122.0832364, -122.0832374, -122.0832383, -122.0832392, -122.08324, -122.0832408, -122.0832414, -122.0832421, -122.0832428, -122.0832434, -122.0832441, -122.0832448, -122.0832454, -122.0832459, -122.0832465, -122.0832471, -122.0832477, -122.0832482, -122.0832488, -122.0832494, -122.08325, -122.083251, -122.0832544, -122.0832601, -122.083266, -122.083272, -122.0832782, -122.0832843, -122.0832901, -122.0832963, -122.0833019, -122.0833078, -122.083314, -122.0833205, -122.0833272, -122.0833329, -122.0833388, -122.0833448, -122.083351, -122.0833573, -122.0833637, -122.0833703, -122.083377, -122.0833837, -122.0833904, -122.0833965, -122.0834031, -122.0834088, -122.0834145],
				[-122.0829862, -122.0829847, -122.0829844, -122.0829843, -122.0829843, -122.0829843, -122.0829844, -122.0829845, -122.0829845, -122.0829846, -122.0829846, -122.0829846, -122.0829846, -122.0829846, -122.0829846, -122.0829846, -122.0829845, -122.0829845, -122.0829845, -122.0829845, -122.0829844, -122.0829844, -122.0829843, -122.0829843, -122.0829844, -122.0829847, -122.0829848, -122.0829841, -122.0829794, -122.0829736, -122.0829681, -122.0829626, -122.0829569, -122.082951, -122.0829453, -122.0829395, -122.0829336, -122.0829275, -122.0829213, -122.0829156, -122.0829097, -122.0829038, -122.0828978, -122.0828915, -122.0828857, -122.0828798, -122.0828737, -122.0828674, -122.0828617, -122.0828558, -122.0828497, -122.0828435, -122.0828371, -122.0828314, -122.0828251, -122.0828195, -122.0828151, -122.0828147, -122.0828154, -122.0828164, -122.0828174, -122.0828184, -122.0828193, -122.08282, -122.0828208, -122.0828215, -122.0828221, -122.0828227, -122.0828233, -122.0828239, -122.0828245, -122.082825, -122.0828255, -122.082826, -122.0828265, -122.082827, -122.0828276, -122.0828281, -122.0828287, -122.0828293, -122.0828298, -122.0828304, -122.0828312, -122.0828339, -122.0828394, -122.0828455, -122.0828517, -122.0828574, -122.0828637, -122.0828698, -122.0828754, -122.0828813, -122.0828875, -122.082894, -122.0828997, -122.0829056, -122.0829117, -122.0829179, -122.0829243, -122.0829309, -122.0829377, -122.0829446, -122.0829516, -122.0829573, -122.082963, -122.0829699, -122.0829763, -122.082983, -122.082989, -122.0829946],
				[-122.0835861, -122.0835861, -122.0835861, -122.0835861, -122.083586, -122.083586, -122.0835859, -122.0835859, -122.0835858, -122.0835858, -122.0835858, -122.0835857, -122.0835857, -122.0835857, -122.0835856, -122.0835856, -122.0835856, -122.0835855, -122.0835855, -122.0835855, -122.0835855, -122.0835854, -122.0835854, -122.0835854, -122.0835854, -122.0835854, -122.0835854, -122.0835854, -122.0835854, -122.0835854, -122.0835853, -122.0835858, -122.0835893, -122.0835954, -122.0836012, -122.083607, -122.0836129, -122.0836188, -122.0836244, -122.0836303, -122.0836365, -122.0836431, -122.0836489, -122.083655, -122.0836612, -122.0836676, -122.0836742, -122.083681, -122.0836867, -122.0836926, -122.0836986, -122.0837047, -122.0837109, -122.0837172, -122.0837236, -122.08373, -122.0837366, -122.0837433, -122.0837501, -122.0837569, -122.0837638, -122.0837695, -122.0837765, -122.0837835, -122.0837899, -122.0837956, -122.0838019, -122.0838079, -122.0838132, -122.0838156, -122.0838155, -122.0838146, -122.0838136, -122.0838125, -122.0838116, -122.0838106, -122.0838098, -122.083809, -122.0838082, -122.0838076, -122.083807, -122.0838065, -122.083806, -122.0838055, -122.083805, -122.0838045, -122.0838041, -122.0838037, -122.0838033, -122.083803, -122.0838026, -122.0838022, -122.0838018, -122.0838015, -122.0838011, -122.0838007, -122.0838003, -122.0837998, -122.0837994, -122.083799, -122.0837986, -122.0837982, -122.0837978, -122.0837975, -122.0837962, -122.0837923, -122.0837865, -122.0837806, -122.0837748, -122.0837689, -122.0837631, -122.0837568, -122.0837509, -122.0837447, -122.0837391, -122.0837333, -122.0837273, -122.0837211, -122.0837147, -122.0837081, -122.0837024, -122.0836966, -122.0836906, -122.0836846, -122.0836784, -122.0836721, -122.0836657, -122.0836592, -122.0836526, -122.0836459, -122.0836391, -122.0836321, -122.0836251, -122.0836194, -122.0836137, -122.0836079, -122.0836009, -122.0835944, -122.0835887, -122.0835823, -122.0835766]
				]


class Map():
	def __init__(self):
		self.map_id = None
		self.map_lat = None
		self.map_lng = None
		self.map_alt = None

		self.obstacle_index = None

	def make_map(self,map_id,map_lat,map_lng,map_alt):
		self.map_id = map_id
		self.map_lng = map_lng
		self.map_lat = map_lat
		self.map_alt = map_alt

	def get_map_id(self):
		return self.map_id
	
	def print_map_info(self):
		print self.map_id
		print self.map_lat
		print self.map_lng
		

	def get_map_info(self):
		if self.map_lat is not None:
			return [self.map_id,self.map_lat,self.map_lng]
		else:
			return False

class Obstacle():
	def __init__(self):
		self.obs_name = None
		self.obs_lat = []
		self.obs_long = []
		self.prev_lat = None
		self.prev_long = None
		self.curr_long = None
		self.curr_lat = None
		self.found_first_data = False
		self.start_capture = True
		self.obstacle_length = 0

	def record_data(self,name):
		global drone_lat,drone_long,drone_alt
		self.obs_name = name

		while self.start_capture is True:
			if self.found_first_data is False:
				self.prev_long = drone_long
				self.prev_lat = drone_lat
				self.curr_lat = self.prev_lat
				self.curr_long = self.prev_long

				self.obs_lat.append(self.prev_lat)
				self.obs_long.append(self.prev_long)


				self.obstacle_length +=1
				self.found_first_data = True
			else:
				
				self.curr_long = drone_long
				self.curr_lat = drone_lat
				distance = geodesic((self.curr_lat,self.curr_long),(self.prev_lat,self.prev_long)).meters
				if distance > 0.5:
					self.obs_lat.append(self.curr_lat)
					self.obs_long.append(self.curr_long)
					self.prev_long = self.curr_long
					self.prev_lat = self.curr_lat
					self.obstacle_length+=1

	def record_data_dummy(self,name,index):
		global obstacle_lat,obstacle_lng
		self.obs_name = name

		self.found_first_data = True
		self.obs_lat = obstacle_lat[index%3]
		self.obs_long = obstacle_lng[index%3]

		self.obstacle_length = 5




				
	def stop_recording_data(self):
		self.start_capture = False
		if self.obstacle_length >=3:
			return True
		else:
			return False


	def get_obstacle_data(self):
		if self.found_first_data is not False:
			return [self.obs_name,self.obs_lat,self.obs_long]
		else:
			return False

	def make_obstacle(self,lat,lng,name):
		print "INSIDE MAKE OBSTACLE "
		# print type(lat)
		# print lat
		# print type(lat.single_coord)
		self.found_first_data = True
		self.obs_name = name
		self.obs_long = lng.single_coord
		self.obs_lat = lat.single_coord
		self.obstacle_length = len(self.obs_lat)




class commander():

	def __init__(self):
		
		# self.init_vars()
		self.curr_obs = None
		self.obstacle_list = []
		self.map = None
		if self.map is None:
			rospy.logwarn("The map is initialised to none")

		self.init_services()



	def handle_start_obstacle_capture(self,req):

		# rospy.logwarn("printing map data:------------------------------------------------------------>")
		# # rospy.loginfo(self.map)
		if self.map is None:
			rospy.logwarn("printing map data1:-------------------------------------------------------->")
			message = "No map initialised to start obstacle capture"
			return False,message
		else:
			try:
				if req.name is None or req.name=='':
					message = "Pass a name to the obstacle."
					return False,message
				elif self.curr_obs is None:
					self.curr_obs = Obstacle()
					index = self.map.obstacle_index
					self.curr_obs.record_data_dummy(req.name,index)
					message = "Started capturing data."
					return True,message
				else:
					message = "Already capturing data.Please stop recording previous data capture."
					return False,message
					
			except Exception as e:
				message = "Unable to capture obstacle data."
				return False,message	


	def handle_stop_obstacle_capture(self,req):

		if self.map is None:
			message = "No map initialised to stop obstacle capture"
			return 'NONE',[0],[0],message

		try:
			if self.curr_obs is not None:
				a = self.curr_obs.stop_recording_data()
				if a is True:
					print "Data obstacle:"
					obs_data = self.curr_obs.get_obstacle_data()
					obs_name = obs_data[0]
					obs_lat = obs_data[1]
					obs_lng = obs_data[2]
					self.obstacle_list.append(self.curr_obs)
					self.curr_obs = None
					self.map.obstacle_index+=1
					message = "Successfully saved obstacle."
					return obs_name,obs_lat,obs_lng,message
				elif a is False:
					message  = "Not enough data to construct an obstacle."
					return "NONE",[0],[0],message
			else:
				message = "No obstacle to save."
				return "NONE",[0],[0],message

		except Exception as e:
			message = "Unable to stop capturing data."
			return "NONE",[0],[0],message


	def handle_cancel_obstacle_capture(self,req):
		try:
			if self.curr_obs is None:
				message = "No obstacle data being recorded at present."
				return False,message

			else:
				a = self.curr_obs.stop_recording_data()
				self.curr_obs= None
				print self.obstacle_list
				message = "Cancelled current obstacle recording"
				return True,message
		except Exception as e:
			message = "Not able to cancel recording data."
			return False,message


	def handle_delete_obstacle_capture(self,req):

		if self.map is None:
			message = "No map init to delete obstacle"
			return False,message

		if req.name == ():
			message = "No obstacle name received to delete obstacle."
			return False,message
		else:
			index_to_delete = None
			name = req.name 
			for i in range(len(self.obstacle_list)):
				if name==self.obstacle_list[i].obs_name:
					index_to_delete = i

			if index_to_delete is None:
				message = "No obstacle found with this name"
				return False,message
			else:
				del self.obstacle_list[index_to_delete]
				self.map.obstacle_index-=1
				print "Obstacle list:"
				print self.obstacle_list
				resp,message = self.handle_delete_obstacle()
				if resp is True:
					message = "Successfully deleted the obstacle" + " " + str(name)
					return True,message
				else:
					return False,message

	def handle_delete_obstacle(self):

		obs_lat_list =[]
		obs_lng_list =[]
		obs_name_list =[]
		map_name = self.map.get_map_id()

		for i in range(len(self.obstacle_list)):
			obs_to_query = self.obstacle_list[i]
			a = obs_to_query.get_obstacle_data()
			if a is False:
				message = "Not enough data found in the obstacle.Not saving this information"
				print message + " " + a[0]
				# return False,message
			else:
				obs_name = a[0]
				obs_name_list.append(obs_name)

				obs_lat = Float1DArray(a[1])
				obs_lat_list.append(obs_lat)

				obs_lng = Float1DArray(a[2])
				obs_lng_list.append(obs_lng)

		# self.publish_obstacle_data(obs_lat_list,obs_lng_list)

		rospy.wait_for_service('/map_manager/save_obstacles')
		print "PRINTING REQUEST FOR SAVE OBSTACLES SERVICE -> "
		print map_name
		print obs_name_list
		print obs_lng_list
		print obs_lat_list
		print type(obs_lat_list),type(obs_lng_list)
		try:
			handle = rospy.ServiceProxy("/map_manager/save_obstacles",SaveObstacles)
			req_msg = SaveObstaclesRequest(map_name,obs_name_list,obs_lng_list,obs_lat_list)
			resp = handle(req_msg)
			if resp.success is True:
				message = "True"
				return True,message
			else:
				message = resp.message
				return False,message

		except Exception as e:
			message ="Not able to call map manager to save obstacles."
			return False,message


	def handle_save_obstacle_data(self,req):
		if self.map is None:
			message = "No map id present to save obstacles."
			return False,message

		if len(self.obstacle_list) == 0:
			message = "No obstacle on the map to save."
			return False,message

		obs_lat_list =[]
		obs_lng_list =[]
		obs_name_list =[]
		map_name = self.map.get_map_id()

		for i in range(len(self.obstacle_list)):
			obs_to_query = self.obstacle_list[i]
			a = obs_to_query.get_obstacle_data()
			if a is False:
				message = "Not enough data found in the obstacle.Not saving this information"
				print message + " " + a[0]
				# return False,message
			else:
				obs_name = a[0]
				obs_name_list.append(obs_name)

				obs_lat = Float1DArray(a[1])
				obs_lat_list.append(obs_lat)

				obs_lng = Float1DArray(a[2])
				obs_lng_list.append(obs_lng)

		# self.publish_obstacle_data(obs_lat_list,obs_lng_list)

		rospy.wait_for_service('/map_manager/save_obstacles')
		print "PRINTING REQUEST FOR SAVE OBSTACLES SERVICE -> "
		print map_name
		print obs_name_list
		print obs_lng_list
		print obs_lat_list
		print type(obs_lat_list),type(obs_lng_list)
		try:
			print "data sent to save obstacle map manager."
			handle = rospy.ServiceProxy("/map_manager/save_obstacles",SaveObstacles)
			print "data received from the map manager."
			req_msg = SaveObstaclesRequest(map_name,obs_name_list,obs_lng_list,obs_lat_list)
			resp = handle(req_msg)
			if resp.success is True:
				message = "Obstacle data for map"+ " " + str(map_name) + " " + "saved to the system."
				return True,message
			else:
				message = resp.message
				return False,message

		except Exception as e:
			message ="Not able to call map manager to save obstacles."
			return False,message

	def get_obstacle_data(self,name):
		print "WAITING FOR CALL ..."
		rospy.wait_for_service('/map_manager/get_obstacles')
		try:
			print "REQUESTING GET OBSTACLE SERVICE ..."
			handle = rospy.ServiceProxy("/map_manager/get_obstacles", GetObstacles)
			# print "Creating request type ..."
			# print "NAME -> ",name
			req_msg = GetObstaclesRequest(name)
			# print "CALLING NOW ..."
			resp = handle(req_msg)
			print "RESPONSE FROM GET OBSTACLES SERVICE ->", resp
			if resp.success is True:

				self.obstacle_list =[]
				self.curr_obs = None
				lat_list_obs = resp.lats
				lng_list_obs = resp.lngs
				obs_name_list = resp.obstacle_ids

				for i in range(len(obs_name_list)):
					obs_name = obs_name_list[i]
					obs_lat = lat_list_obs[i]
					obs_lng = lng_list_obs[i]
					curr_obs = Obstacle()
					curr_obs.make_obstacle(obs_lat,obs_lng,obs_name)
					print "PRINTING OBSTACLE DATA"
					print curr_obs.get_obstacle_data()
					self.obstacle_list.append(curr_obs)

				# print "PRINTING OBSTACLE LNGS -> ", 

				return len(obs_name_list)
			else:
				message = "No obstacle data received for the map"
				rospy.logerr(message)
				return None

		except Exception as e:
			message = "Not able to query obstacles from map manager"
			rospy.logerr(e)
			return None


	def handle_get_map_id(self,req):
		try:
			if req.map_id is None:
				message = "No map data received."
				return False,message
			else:
				self.map = Map()
				map_name = req.map_id
				map_lat = req.map_lat
				map_lng = req.map_lng
				map_alt = req.height_agl
				self.map.make_map(map_name,map_lat,map_lng,map_alt)
				print "printing map info:"
				self.map.print_map_info()
				message = "Get map id successful"
				obs_length = self.get_obstacle_data(req.map_id)

				if obs_length is not None:
					self.map.obstacle_index = obs_length 
				else:
					self.map.obstacle_index = 0

				return True,message

		except Exception as e:
			message = "Not able to get map id."
			return False,message



	def init_services(self):
		self.start_obs_capture = rospy.Service('/commander/start_obs_capture',START_OBS_CAPTURE,self.handle_start_obstacle_capture)
		self.stop_obs_capture = rospy.Service('/commander/stop_obs_capture',STOP_OBS_CAPTURE,self.handle_stop_obstacle_capture)
		self.cancel_obs_capture = rospy.Service('/commander/cancel_obs_capture',CANCEL_OBS_CAPTURE,self.handle_cancel_obstacle_capture)
		self.delete_obs_capture = rospy.Service('/commander/delete_obs_capture',DELETE_OBS_CAPTURE,self.handle_delete_obstacle_capture)
		self.save_map_id = rospy.Service('/commander/get_map_info',GET_MAP_INFO,self.handle_get_map_id)
		self.save_obstacle_data = rospy.Service('/commander/save_obstacles',SAVE_OBS_DATA,self.handle_save_obstacle_data)


def main():
	rospy.init_node('command_server',anonymous = True)
	print "[Started commander node]"

	commander()
	try:
		rospy.spin()
	except KeyboardInterrupt:
		print "[Commander Node] : Shutting Down the Commander Node"