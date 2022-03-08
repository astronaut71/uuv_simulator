#!/usr/bin/env python

# Copyright (c) TODO all Licence


import rospy
import numpy
from sensor_msgs.msg import Joy
from std_msgs.msg import Float32
pub = rospy.Publisher('joy_new', Joy, queue_size=1)

T = numpy.array([0])
X = numpy.array([0])
Y = numpy.array([0])

k = 0.5

def late(joy):
    global T
    now = rospy.get_rostime()
    Tnow = now.secs + now.nsecs/10e8
    if  Tnow - T[-1] > 1 :

        R = Joy()
        R.header.stamp = now
        buttons =[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        axes = [0, 0, 0, 0, 0, 0]
        axes[4] = X[-1]
        axes[3] = Y[-1]
        R.axes = axes
        pub.publish(R)

def predict(joy):

    global T
    global X
    global Y

    sec = joy.header.stamp.secs + joy.header.stamp.nsecs /10e8
    T = numpy.append(T,sec)

    surge = joy.axes[4]
    X = numpy.append(X,surge)

    turn = joy.axes[3]
    Y = numpy.append(Y,turn)



    m =(numpy.where(T<(sec-0.3)))
    T = numpy.delete(T,m,None)
    X = numpy.delete(X,m,None)
    Y = numpy.delete(Y,m,None)

    if len(T)<2:
        px = X[-1] 
        py = Y[-1] 

    else:
        fitx = numpy.polyfit(T,X,1)
        linex = numpy.poly1d(fitx)
        px = linex(sec+1)

        fity = numpy.polyfit(T,Y,1)
        liney = numpy.poly1d(fity)
        py = liney(sec+1)

    if px > 1  : px = 1   
    if px < -1 : px =-1  
    if py > 1  : py = 1   
    if py < -1 : py =-1 

    # R = Float32()
    # R.data = X[-1] + (X[-1]-X[0])/(T[-1]-T[0])
    # R.data = px
    # 
    
    R = Joy()
    R = joy
    axes = list(joy.axes)
    axes[4] = px * k + X[-1]*(1-k)
    axes[3] = py * k + Y[-1]*(1-k)
    R.axes = axes
    pub.publish(R)

    rospy.Timer(rospy.Duration(1.05), late, oneshot=True)

def read_joy():
    # Initialize node, Subscriber and Spin
    rospy.init_node('joy_predict')
    rospy.Subscriber("joy", Joy, predict)
    rospy.spin()

if __name__ == '__main__':

    read_joy()


