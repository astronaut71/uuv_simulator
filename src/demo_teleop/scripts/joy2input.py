#!/usr/bin/env python

# Copyright (c) TODO all Licence


# This is a ROS Node 
#
# Description: This ros node takes the input topic from the joystick node, and send a message to a simulated modem - to_modem topic
# The inputs are the up&down left&right of the right analog and the up and down buttons of the cross arrows.
# The analog values are divided in 9 levels [-4 -3 -2 -1 0 1 2 3 4 ] of equal amplitude. 
# the buttons are coded in 3 possible cases up = 1 none or both = 0 down = -1
# A unique value between 0 & 255 is generated and published. 
# A wait time is respected after eact message, then the last joy input is coded and sent. If the last coded messge is equal to the last sent message the node waits for an original command
#
# Publisher 
#	*Topic:   to_modem	Int16
#	*Topic:  thrusters/0/input	FloatStamped
#	*Topic:  thrusters/1/input	FloatStamped
#
# Subscriber
#	*Topic:   joy 		Joy
#
# Note: The joy only publish on a new command	
# Note: All topics addresses are relative

import rospy
from std_msgs.msg import Int16
from sensor_msgs.msg import Joy


# Initialize publisher
pub_cmd = rospy.Publisher('/to_modem', Int16, queue_size=1)
cmd = Int16()
cmd = 121  # 0 on all inputs

def send_cmd(j):

    global cmd
    # Unpack
    try:
        up = j.buttons[13]
        down = j.buttons[14]
        surge = j.axes[4]
        yaw = j.axes [3]
    except:
        surge = j.axes[4]
        yaw = j.axes [3]
        up = j.axes[7]
        down = 0
        

    # Coding the input in levels
    zvalue = up - down +1
    surgevalue = int(round(surge*4))  +4
    yawvalue = int(round(yaw*4))  +4

    # Creating a unique value 
    int_p = zvalue*81 + surgevalue*9 + yawvalue

    p = Int16()
    p = int_p

# UNUSED setup for dirrerent format of message
#    p.layout.dim.append(MultiArrayDimension())
#    p.layout.dim[0].label = 'sending_cmd'
#    p.layout.dim[0].size = 1
#    p.layout.dim[0].stride = 3
#    p.layout.data_offset = 0
#    p.data = [zvalue,surgevalue,yawvalue]

    # Save value in global param
    cmd = p

def read_joy():
    # Subscriber wait for a new command for 1.9 seconds
    try:
        rospy.wait_for_message("/joy", Joy, timeout=1.9)
        rospy.Subscriber("/joy", Joy, send_cmd)
    # If no command is recived wait 0.1 seconds and exit
    except:
        rate.sleep()


if __name__ == '__main__':

    rospy.init_node('joy2input') # Initialize node
    rate = rospy.Rate(10)        # set rate.sleep() = 0.1 seconds

    # Start main Loop
    while not rospy.is_shutdown():
        last_cmd = cmd           # Save last cmd

        while True:

            now = rospy.get_time()

	    # For 1 second collect joy inputs, overwriting the last one, collect at 10 Hz.
            while rospy.get_time() - now < 1: 
                rospy.Subscriber("/joy", Joy, send_cmd)
                rate.sleep()
            # Do if the cmd is different from the last one or there is a command on the z axis
            if  last_cmd != cmd or cmd<81 or cmd>162:
                pub_cmd.publish(cmd)  # Publish comand to modem
                rospy.loginfo(cmd)
                last_cmd = cmd        # Save last sent command
            else:
                break

        # To avoid shutdown on a continuous signal
        # If noting has appened for 3 seconds (1.9 + 0.1 + 1) Publish the last command and start over.
        read_joy()                    
        pub_cmd.publish(cmd)
        rospy.loginfo(cmd)

 



