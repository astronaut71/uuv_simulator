#!/usr/bin/env python

# Copyright (c) TODO all Licence


# This is a ROS Node 
#
# Description: Read IMU and pressure topics
# Gives back a sigle vector containing:
# r: Component of angular velocity along z_body
# pitch angle 
# Depth from surface, [meters positive]
#
# Publisher 
#	*Topic:  feedback	Vector3
#
# Subscriber
#	*Topic:  imu	Imu
#	*Topic:  pressure	FluidPressure
#	
# Note: An approximate syncronization for imu and pressure inputs
# Note: All topics addresses are relative

import numpy as np
import rospy
import message_filters

from sensor_msgs.msg import Imu
from geometry_msgs.msg import Vector3
from sensor_msgs.msg import FluidPressure

from tf.transformations import euler_from_quaternion


pub_feed = rospy.Publisher('feedback', Vector3, queue_size=2)

def extract(imu, pressure): 
    global memory_r
    quaternion = [imu.orientation.x,imu.orientation.y,imu.orientation.z,imu.orientation.w]
    euler = euler_from_quaternion (quaternion)



    r = imu.angular_velocity.z
    pitch = euler[1]
    z =  -(pressure.fluid_pressure-101.325)/9.81

    # aggiungi filtro media 
    
    feedback = Vector3()
    feedback.x = r
    feedback.y = pitch
    feedback.z = z

    pub_feed.publish(feedback)

def read_sensors():
    rospy.init_node('sensor')

    imu = message_filters.Subscriber("imu", Imu)
    pressure = message_filters.Subscriber("pressure", FluidPressure)

    ts = message_filters.ApproximateTimeSynchronizer([imu, pressure], queue_size=1, slop=0.1, allow_headerless=False)
    ts.registerCallback(extract)

    rospy.spin()

if __name__ == '__main__':
    read_sensors()

