#!/usr/bin/env python


import rospy
import numpy as np
from simple_pid import PID
from geometry_msgs.msg import Vector3
from std_msgs.msg import Float32
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped
from geometry_msgs.msg import Vector3

pid_z = PID(600/45, 45/45, 200/45, setpoint=0)
pid_z.output_limits = (-1.6, 2.2)

pid_r = PID(60/45, 5/45, 45/45, setpoint=0)
pid_r.output_limits = (-0.5, 0.5)


pub_motor0 = rospy.Publisher ('thrusters/0/input', FloatStamped, queue_size=2)
pub_motor1 = rospy.Publisher ('thrusters/1/input', FloatStamped, queue_size=2)
pub_motor2 = rospy.Publisher ('thrusters/2/input', FloatStamped, queue_size=2)

Fx = 0
turning = 0
zd = 0.5

def horizontal_allocation (rm,rd,Fx_body):
    e = rm-rd
    DF = pid_r(e)
    f0 = -Fx_body/2-DF
    f1 = -Fx_body/2+DF

    if f0 > 2.2:
        f0 = 2.2
        f1 = 2.2 + 2*DF

    if f1 > 2.2:
        f1 = 2.2
        f0 = 2.2 - 2*DF

    if f0 < -1.6:
        f0 = -1.6
        f1 = -1.6 + 2*DF

    if f1 < -1.6:
        f1 = -1.6
        f0 = -1.6 - 2*DF



    m0=motor_signal(f0)
    m1=motor_signal(f1)
    return [m0,m1]


def vertical_allocation (Fz,Fx,pitch):
    Cos = np.cos(np.radians(pitch))
    Sin = np.sin(np.radians(pitch))

    Fx_body = Fx*Cos + Fz*Sin
    Fz_body = Fz*Cos - Fx*Sin
    return [Fz_body,Fx_body]

def motor_signal(Force):
    m = FloatStamped()
    m.header.stamp = rospy.Time.now()
    m.header.frame_id = 'trash' # change with motor 0
    m.data = np.interp(Force,[-1.6,0,2.2],[-100,0,100])
    return m
    
def verticalPID (z,zp):
    e = (-zp - z)
    return pid_z(e)


def update_cmd(cmd):
    global Fx 
    global turning 
    global zd 

    Fx = cmd.x 
    turning = cmd.y
    zd = cmd.z

def control(fb):
    r = fb.x
    pitch = fb.y
    zp = fb.z
    Fz = verticalPID (zd,zp)
    [Fz_body,Fx_body] = vertical_allocation(Fz,Fx,pitch)
    m2 = motor_signal (Fz_body)
    [m0,m1] = horizontal_allocation (turning,r,Fx_body)
    pub_motor0.publish(m0)
    pub_motor1.publish(m1)
    pub_motor2.publish(m2)

def read_subscribers():
    rospy.init_node('demo_control_node')
    rospy.Subscriber("feedback", Vector3, control)
    rospy.Subscriber("cmd_force", Vector3, update_cmd)
    rospy.spin()


if __name__ == '__main__':
    while not rospy.has_param('tam'):
         rospy.sleep(1.1)
         print ('waiting for tam')
    tam = rospy.get_param('tam')

    read_subscribers()
