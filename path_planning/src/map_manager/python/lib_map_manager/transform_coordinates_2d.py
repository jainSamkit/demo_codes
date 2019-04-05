#!/usr/bin/python

import numpy as np
import math

class transform_frame():
    """

    Two tasks can be accomplished using this library.
    1. Converting global to local coordinates.
    2. Converting local to global coordinates.

    Works only for Converting GPS coordinates to local and vice-versa.
    ...

    Methods
    -------
    find_origin_global_coordinates(bounding_coordinates)
        sets origin among these boundary coordinates so that other coordinates can be transformed according to this origin.

    transform_global_to_local(points)
        returns coordinates given in the list points in local frame.

    transform_local_to_global(points)
        returns coordinates given in the list points in global frame.

    """

    def __init__(self, resolution_x=75, resolution_y=75):

        """
        Parameters
        ----------

        resolution_x : float
            represents how many meters are represented by the grid along x-axis.
        resolution_y : float
            represents how many meters are represented by the grid along y-axis.

        """
        
        self.resolution_x = resolution_x
        self.resolution_y = resolution_y
        self.origin = None
        self.min_x = 0.0
        self.min_y = 0.0
        self.max_x = None
        self.max_y = None
        self.sum_180 = 0.0
        self.sum_0 = 0.0
        self.R = 6371000  # Radius of earth in meters.
        self.local_coords = []

        # self.find_origin_global_coordinates()

    def find_origin_global_coordinates(self,bounding_coordinates):
        """Finds origin among the given 4 boundary coordinates.
        Sets up origin parameter which will be used in other methods.

        .......

        Parameters
        ----------

        bounding_coordinates : list of lists -> [[longitude1,latitude1],[longitude2,latitude2],........].
            boundary coordinates(GPS) for the map 

        ......
        Returns origin as [longitude, latitude]

        """
        min_lng = bounding_coordinates[0][0]
        min_lat = bounding_coordinates[0][1]

        for lng, _ in bounding_coordinates:
            self.sum_0 += (abs(lng))
            self.sum_180 += (180 - abs(lng))

        for lng, lat in bounding_coordinates:
            min_lat = min(min_lat, lat)
            sign_0 = np.sign(min_lng)
            sign_1 = np.sign(lng)
            if(sign_0 == sign_1):
                min_lng = min(min_lng, lng)
            else:
                if(self.sum_180 <= self.sum_0):
                    min_lng = max(min_lng, lng)
                else:
                    min_lng = min(min_lng, lng)
        self.origin = [min_lng, min_lat]

    def transform_global_to_local(self, points):
        """Transforms global coordinates to local frame.

        ........

        Parameters
        ----------
        points : array -> [[longitude1,latitude1],[longitude2,latitude2],....]
            global coordinates to be transformed, 

        ........

        Returns list of lists of local coordinates in the form [[x1,y1],[x2,y2],....]

        """

        if(isinstance(points,list)):
            points = np.asarray(points)

        origin_lng_rad = np.deg2rad(self.origin[0])
        origin_lat_rad = np.deg2rad(self.origin[1])
        local_coords = np.empty(points.shape)

        for i in range(points.shape[0]):
            lng = np.deg2rad(points[i][0])
            lat = np.deg2rad(points[i][1])
            del_lng = (lng - origin_lng_rad)
            del_lat = (lat - origin_lat_rad)
            lat_mean = (lat+origin_lat_rad)/2
            temp_x = (del_lng * math.cos(lat_mean) * self.R)/self.resolution_x
            temp_y = (del_lat * self.R)/self.resolution_y
            local_coords[i][0] = temp_x
            local_coords[i][1] = temp_y

        if(self.max_x == None):
            self.local_coords = local_coords
            self.max_x = np.ceil(max(local_coords, key=lambda x: x[0])[0])
            self.max_y = np.ceil(max(local_coords, key=lambda x: x[1])[1])
        return local_coords

    def transform_local_to_global(self, points):
        """Transforms local coordinates to global frame.

        ........

        Parameters
        ----------
        points : list of lists -> [[x1,y1],[x2,y2]]
            local coordinates to be transformed.

        .......

        Returns list of lists of global coordinates in the form [[longitude1,latitude1],[longitude2,latitude2]].

        """

        global_coords = [] 
        origin_lng_rad = np.deg2rad(self.origin[0])
        origin_lat_rad = np.deg2rad(self.origin[1])

        # Calculating latitude using y = (latitude(final) - latitude of origin)
        # Calculating longitude using x = (longitude_final - longitude_of_origin)*cos((latitude_final  + latitude_of_origin)/2)

        for x, y in points:
            temp_lat = ((y*self.resolution_y/self.R) + origin_lat_rad)
            temp_lng = np.rad2deg(
                ((x*self.resolution_x/self.R)/math.cos((origin_lat_rad+temp_lat)/2)) + origin_lng_rad)
            temp_lat = np.rad2deg(temp_lat)
            global_coords.append([temp_lng, temp_lat])
        return global_coords


# boundary = [[-73.95,40.0],[-76.0,40.0],[-76.0,42.0],[-73.95,42.0]]
# abc = transform_frame()
# abc.find_origin_global_coordinates(boundary)
# local_coords = abc.transform_global_to_local(boundary)

# print ("Printing Local Coordinates ...")
# print (local_coords)

# global_coords = abc.transform_local_to_global(local_coords)

# print ("Printing Global Coordinates ...")
# print (global_coords)
