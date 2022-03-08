#!/usr/bin/env python


import rospy
from std_msgs.msg import Float32
from sensor_msgs.msg import FluidPressure

pub_pressure = rospy.Publisher ('depth', Float32, queue_size=2)

def convert(data):

    p =  -(data.fluid_pressure-101.325)/9.81
    pub_pressure.publish(p)

def read_pressure():
    rospy.init_node('Pressure2Depth', anonymous=True)
    rospy.Subscriber("pressure", FluidPressure, convert)
    rospy.spin()

if __name__ == '__main__':
    read_pressure()

