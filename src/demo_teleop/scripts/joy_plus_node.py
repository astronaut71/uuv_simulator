#!/usr/bin/env python

# Copyright (c) TODO all Licence


# This is a ROS Node 
#
# Description: Take the Joy input, add a derivative extra to the input
#  
#
# Publisher 
#	*Topic:  joy_plus	Joy
#
# Subscriber
#	*Topic:  joy_plus	Joy
#
#	
# Note: Topics addresses are absoulte

# This code is still in DEVELOPMENT


import rospy
from sensor_msgs.msg import Joy

pub_joy_plus = rospy.Publisher('/joy_plus', Joy, queue_size=1)

Kd_surge =200
Kd_yaw = 200

last_joy = [0,0]

last_time = -1

def limited (value):
    if value > 1:
        value = 1
    if value < -1:
        value = -1
    return value

def add_derivate(joy):

    global last_joy, last_time
    
    axes = list(joy.axes)
    time = rospy.get_rostime()
    now = time.nsecs
    #if now - last_time > 1000: 
    #   last_time = now-1000
    if now - last_time < 1 :
        last_time = now-1

    D_surge = (joy.axes[4] - last_joy[0]) / (now - last_time)
    D_yaw   = (joy.axes[3] - last_joy[1]) / (now - last_time)
    
    joy_plus = joy  
    axes[4] = limited (joy.axes[4] + Kd_surge * D_surge)
    axes[3] = limited (joy.axes[3] + Kd_yaw * D_yaw)
    joy_plus.axes = tuple(axes)

    last_time = now
    last_joy = [joy.axes[4],joy.axes[3]]

    pub_joy_plus.publish(joy_plus)

def read_joy():
    rospy.init_node('joy_plus')
    rospy.Subscriber("/joy", Joy, add_derivate)
    rospy.spin()



if __name__ == '__main__':
        read_joy()


 
