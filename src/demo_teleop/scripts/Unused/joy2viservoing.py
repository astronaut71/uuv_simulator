#!/usr/bin/env python


import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Vector3

K = 0.15
pub = rospy.Publisher('cmd', Vector3, queue_size=1)


def send_cmd(joy):

    surge = joy.axes[4]
    turn = joy.axes [3]

    cmd = Vector3()
    cmd.y = turn * 0.5

    z = rospy.get_param("desired_depth")
    cmd.z = z
    
    alpha = (1-surge)/4+ 0.01
    meters = K/alpha
    
    Fx = (meters-0.58)*0.8
    if Fx >1:
        Fx = 1

    cmd.x = Fx

    pub.publish(cmd)
    print ('horizontal: ',turn,'  distance: ',meters,' meters')


def read_joy():

    rospy.init_node('joy2viservoing')
    rospy.Subscriber("/joy", Joy, send_cmd)
    rospy.spin()


if __name__ == '__main__':


    rospy.set_param('desired_depth', 0.5 )
    
    read_joy()

