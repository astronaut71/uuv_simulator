#!/usr/bin/env python


import rospy
import numpy as np
from geometry_msgs.msg import Vector3
from std_msgs.msg import Float32
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped

pub_motor0 = rospy.Publisher ('thrusters/0/input', FloatStamped, queue_size=2)
pub_motor1 = rospy.Publisher ('thrusters/1/input', FloatStamped, queue_size=2)

def send_inputs(F):

    F_out = np.array([F.x*100,F.y*2])
    m = np.dot(T_inv,F_out)
    

    m0 = FloatStamped()
    m0.header.stamp = rospy.Time.now()
    m0.header.frame_id = 'trash' # change with motor 0
    m0.data = m[0]
    pub_motor0.publish(m0)


    m1 = FloatStamped()
    m1.header.stamp = rospy.Time.now()
    m1.header.frame_id = 'trash' # change with motor 1
    m1.data = m[1]
    pub_motor1.publish(m1)

def read_inputs():
    rospy.init_node('horizontal_force_cmd')
    rospy.Subscriber("cmd_force", Vector3, send_inputs)
    rospy.spin()

if __name__ == '__main__':
    while not rospy.has_param('tam'):
         rospy.sleep(1.1)
         print ('waiting for tam')
    tam = rospy.get_param('tam')
    T = np.array([[tam[0][0], tam[0][1]], [tam[5][0], tam[5][1]]])
    T_inv = np.linalg.inv(T)
    
    read_inputs()

