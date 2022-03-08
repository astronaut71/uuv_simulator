#!/usr/bin/env python

# Copyright (c) TODO all Licence


# This is a ROS Node 
#
# Description: Emulates the modem delay
#
# Publisher 
#	*Topic:  to_modem	Int16
#
# Subscriber
#	*Topic:  from_modem	Int16
#
# Note: All topics addresses are relative -> but can be used as absolute

import rospy
from std_msgs.msg import Int16


pub = rospy.Publisher('from_modem', Int16, queue_size=1)

def delay(data):
    rospy.sleep(0.86) # Wait for the transmission time - make the message avaiable after the set time. Dosent allow for any other message to arrive in the meantime.
    pub.publish(data)
    rospy.loginfo(data)

def listen():
    rospy.init_node('modem_v2')
    rospy.Subscriber("to_modem", Int16, delay)
    rospy.spin()

if __name__ == '__main__':
    
    listen()
