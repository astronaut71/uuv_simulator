#!/usr/bin/env python

# Copyright (c) TODO all Licence


# This is a ROS Node 
#
# Description: This ros node couples the Motors 0 & 1 input directely to buttons Square and Circle on the Joystic.
# The signal is either 0 when unpressed or 100 when pressed
#
# Publisher: 
#	*Topic:  /minion/thrusters/0/input	FloatStamped
#	*Topic:  /minion/thrusters/0/input	FloatStamped
# Subscriber
#	*Topic:  /joy	Joy
#
# Note: All topics addresses are absolute


import rospy

from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped
from sensor_msgs.msg import Joy

# Create Publishers
pub_motor0 = rospy.Publisher ('/minion/thrusters/0/input', FloatStamped, queue_size=2)
pub_motor1 = rospy.Publisher ('/minion/thrusters/1/input', FloatStamped, queue_size=2)


def send_cmd(j):
    # Store inputs and convert
    m1data = -j.buttons[1]*100
    m0data = -j.buttons[3]*100
    
    # Create FloatStamped variable and Publish for motor 0
    m0 = FloatStamped()
    m0.header.stamp = rospy.Time.now()
    m0.header.frame_id = 'trash' # unused
    m0.data = m0data
    pub_motor0.publish(m0)

    # Create FloatStamped variable and Publish for motor 1
    m1 = FloatStamped()
    m1.header.stamp = rospy.Time.now()
    m1.header.frame_id = 'trash' # unused
    m1.data = m1data
    pub_motor1.publish(m1)


def read_joy():
    # Initialize node, Subscribe and Spin
    rospy.init_node('button_full_throttle')
    rospy.Subscriber("/joy", Joy, send_cmd)
    rospy.spin()

if __name__ == '__main__':
    read_joy()



 



