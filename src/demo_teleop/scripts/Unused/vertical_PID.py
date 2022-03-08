#!/usr/bin/env python


import rospy
import numpy as np
from simple_pid import PID
from std_msgs.msg import Float32
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped


pid = PID(600/45, 45/45, 200/45, setpoint=0)
pid.output_limits = (-1.6, 2.2)
pub_motor2 = rospy.Publisher ('thrusters/2/input', FloatStamped, queue_size=2)

def do_PID(data):

    zd = rospy.get_param("desired_depth")
    zp = -data.data

    e = (zp - zd)

    motor_output = pid(e)

    m2 = FloatStamped()
    m2.header.stamp = rospy.Time.now()
    m2.header.frame_id = 'trash' # change with motor 2


    motor_cmd  = np.interp(motor_output,[-1.6,0,2.2],[-100,0,100])
    m2.data = motor_cmd

    pub_motor2.publish(m2)

def read_inputs():
    rospy.init_node('vertical_position_PID')
    rospy.Subscriber("depth", Float32, do_PID)
    rospy.spin()

if __name__ == '__main__':
    read_inputs()

