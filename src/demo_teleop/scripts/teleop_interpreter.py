#!/usr/bin/env python

import math
import rospy
from simple_pid import PID
from std_msgs.msg import Int16
from std_msgs.msg import Float32
from geometry_msgs.msg import Vector3

pubf = rospy.Publisher('cmd', Vector3, queue_size=1)



def code(cmd):

    rawz = math.floor(int(cmd.data)/81)
    rawx = math.floor((int(cmd.data) - 81*rawz)/9)
    rawy = math.floor(int(cmd.data) - 81*rawz - 9*rawx)

    Dz = -(rawz-1)*0.05
    Fx = 1.0/4 * (rawx-4)
    Mz =  1.0/4 * (rawy-4) *0.6

    F.x = Fx
    F.y = Mz

    z = rospy.get_param("desired_depth")
    new_z = z + Dz
    if new_z < 0.05:
        new_z = 0.05
    rospy.set_param('desired_depth',(new_z))
    F.z = new_z

    pubf.publish(F)

def listen():

    while not rospy.is_shutdown():
        try:
            rospy.wait_for_message("/from_modem", Int16, timeout=3)
            print (' message recived ')
            rospy.Subscriber("/from_modem", Int16, code)
            rospy.spin()

        except:
            print ('no message recived - stop ')
            F.x = 0
            F.y = 0
            pubf.publish(F)

if __name__ == '__main__':
    
    rospy.init_node('interpreter')
    rospy.set_param('desired_depth', 0.5 )
    F = Vector3()
    F.x = 0
    F.y = 0
    pubf.publish(F)
    listen()
