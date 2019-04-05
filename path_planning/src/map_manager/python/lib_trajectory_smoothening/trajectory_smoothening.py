import numpy as np
import csv

class smoothen_path():
    def __init__(self,path,max_distance = 1000):
        self.path = path
        self.max_distance = max_distance

    def find_distance(self,x1,y1,x2,y2):
        distance = np.sqrt((x1-x2)**2+(y1-y2)**2)
        return distance

    def find_slope_degrees(self, coords_1, coords_2): 
        # Range = 0-360 degrees
        if(isinstance(coords_1, np.ndarray)):

            delta_x = coords_2[0] - coords_1[0]
            delta_y = coords_2[1] - coords_1[1]

        else:
            delta_x = coords_1
            delta_y = coords_2

        if(abs(delta_x) < 0.01):
            if(np.sign(delta_y) == -1):					
                slope = 270.0
            else:
                slope = 90.0
        else:
            slope = np.rad2deg(np.arctan2(delta_y, delta_x))

        if(np.sign(slope) == -1):
            slope = 360.0 + slope

        return slope

    #Divides the line into multiple segments of length equal to maximum distance given. Required to restrict the maximum distance between two waypoints.
    def find_coordinates_on_line(self,previous_x, previous_y, new_x, new_y, slope):
        coordinates = []
        distance = self.find_distance(previous_x, previous_y, new_x, new_y)
        if(distance <= self.max_distance):
            coordinates.append([new_x,new_y])
        else:
            sign_x = np.sign(new_x - previous_x)
            sign_y = np.sign(new_y - previous_y)
            temp_x = previous_x
            temp_y = previous_y

            while(abs(temp_x - new_x) != 0):
                if(sign_x == 1):
                    temp_x = min(new_x, previous_x + self.max_distance*np.cos(np.deg2rad(slope)))
                elif(sign_x == -1):
                    temp_x = max(new_x, previous_x + self.max_distance*np.cos(np.deg2rad(slope)))
                if(sign_y == 1):
                    temp_y = min(new_y,previous_y + self.max_distance*np.sin(np.deg2rad(slope)))
                elif(sign_y == -1):
                    temp_y = max(new_y,previous_y + self.max_distance*np.sin(np.deg2rad(slope)))
                coordinates.append([temp_x, temp_y])
                previous_x = temp_x
                previous_y = temp_y
        return coordinates

    #Creates a single line segment with the waypoints that line on the same line or different lines with very small difference in their slopes and are separated by a distance less than the maximum distance allowed between the waypoints. 
    # It increases the waypoints when two consecutive waypoints are separated by a distance greater than the maximum allowed distance.
    def fix_path(self):

        max_distance = None
        
        new_path = []
        prev_x = self.path[0][0]
        prev_y = self.path[0][1]
        pres_x = self.path[1][0]
        pres_y = self.path[1][1]
        new_path.append([prev_x, prev_y])

        i = 0
        slope_1 = self.find_slope_degrees(np.array([prev_x,prev_y]),np.array([pres_x,pres_y]))
        path_shape = self.path.shape

        if(path_shape[0]>2):
            while(i < path_shape[0]-2):
                new_x = self.path[i+2][0]
                new_y = self.path[i+2][1]
                slope_2 = self.find_slope_degrees(np.array([pres_x, pres_y]),np.array([new_x, new_y]))

                #If true, then the line segment with slope 1 is broken down into equally spaced waypoints.
                if(abs(slope_1 - slope_2) > 2.0):
                    coordinates = self.find_coordinates_on_line(prev_x, prev_y, pres_x, pres_y, slope_1)
                    for coord in coordinates:
                        new_path.append(coord)

                    if(i == self.path.shape[0]-3): #To add the goal coordinate if not added.
                        coordinates = self.find_coordinates_on_line(pres_x,pres_y,new_x,new_y,slope_2)
                        for coord in coordinates:
                            new_path.append(coord)

                #If slope difference between two lines is less than the threshold value, next waypoint is chosen and the slope connecting this new waypoint and the last waypoint is again checked.
                else:
                    if(i+2 == path_shape[0]-1):
                        print "prev_x,prev_y,pres_x,pres_y,new_x,new_y,max_distance = ",prev_x,prev_y,pres_x,pres_y,new_x,new_y,max_distance
                        coordinates = self.find_coordinates_on_line(prev_x, prev_y, new_x, new_y, slope_2)
                        print "COORDINATES ON LINE = ",coordinates
                        for coord in coordinates:
                            new_path.append(coord)

                slope_1 = slope_2
                prev_x = pres_x
                prev_y = pres_y
                pres_x = new_x
                pres_y = new_y

                i+=1
        else:
            coordinates = self.find_coordinates_on_line(prev_x, prev_y, pres_x, pres_y, slope_1)
            for coord in coordinates:
                new_path.append(coord)

        return new_path