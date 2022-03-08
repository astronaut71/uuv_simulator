#!/usr/bin/env python

# Copyright (c) TODO all Licence


# This is a ROS Node 
#
# Description: This ros node converts an mixed input control into motor command to motors 0,1,2
# The inputs are desired depth, desired angular velocity, desired foward/backward Force
# The node requires a feedback from the pressure sensor and IMU to close the loop
# The node refers to the TAM matirx saved under /config to solve the allocation of thrust. 
#
# Publisher 
#	*Topic:  thrusters/0/input	FloatStamped
#	*Topic:  thrusters/0/input	FloatStamped
#	*Topic:  thrusters/1/input	FloatStamped
#
# Subscriber
#	*Topic:  feedback	Vector3
#		feedback.x = Angular velocity component z_body
#		feedback.y = Euler Angle pitch
#		feedback.z = Depth from pressure sensor
#
#	*Topic:  cmd	Vector3
#		cmd.x = Fx Foward force desired
#		cmd.y = Angular velocity desired along the z axis
#		cmd.z = Depth desired
#
# Parameteres required
#	tam	6x3 list
#	
# Note: The PID is using Real Time. A better approach would be using ROS_time
# Note: All topics addresses are relative

import rospy
import numpy as np
from simple_pid import PID
from geometry_msgs.msg import Vector3
from std_msgs.msg import Float32
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped

# Setting PIDs parameters
pid_z = PID(600/45, 45/45, 200/45, setpoint=0)
pid_z.output_limits = (-2.2, 1.6)

pid_r = PID(0.6, 0.2, 0.02, setpoint=0)
pid_r.output_limits = (-0.2, 0.2)

# Initialize Publishers
pub_motor0 = rospy.Publisher ('thrusters/0/input', FloatStamped, queue_size=2)
pub_motor1 = rospy.Publisher ('thrusters/1/input', FloatStamped, queue_size=2)
pub_motor2 = rospy.Publisher ('thrusters/2/input', FloatStamped, queue_size=2)

# initialize Global Variables
Fx = 0
yaw_dot = 0
zd = 0.5
limits = []
IRTAM = []
m0_old = 0
m1_old = 0

def calculate_limits(tam):
    # Single use functions:
    # calculates a1,b1 and a2,b2 where y=a1*x+b1 , y=a2*x+b2 are two rects
    # the two rects describe the area in which the motors can operate:
    # Area:  Fx <= a1*|Mz| + b1   Fx <= a1*|Mz| + b1

    Mmax = tam[5][0]*2.2+tam[5][1]*(-1.6)
    Fmmax = 2.2-1.6
    a1 = (Fmmax-(2.2*2))/Mmax
    a2 = (Fmmax+(1.6*2))/Mmax
    lim = [a1,(2.2*2),a2,(-1.6*2)]
    return lim

def calculate_IRTAM(tam):
    # Single use functions:
    # Calculate the reduced TAM (Fx,Fz,Mz)
    # Invert and save the resulting matix

    tam = np.array(tam)
    tam = np.delete(tam, [1, 3, 4], 0)
    IRTAM = np.linalg.inv(tam)

    return IRTAM

def motor_signal(Force):
    # Convert Thrust to motor imput and builds the FloatStamped message to be sent 

    m = FloatStamped()
    m.header.stamp = rospy.Time.now()
    m.header.frame_id = 'trash' # no importance
    m.data = np.interp(Force,[-2.2,0,1.6],[-100,0,100]) # Motor values
    return m

def from_stabilized_to_body (Vst,theta):
    # Vector rotation around y axis of angle pitch, suppose roll angle = 0
    # Transformation from Stabilized Rf to Body Rf

    Cos = np.cos(np.radians(theta))
    Sin = np.sin(np.radians(theta))
    Rtheta = np.array([[Cos,0,Sin],[0,1,0],[-Sin,0,Cos]])
    Vb =np.dot(Rtheta,Vst)
    return Vb

def Fx_correction (Vb, Mb,limits):
    # Check if the Force, Torque output requested is within motor limits
    # If not, reduce Fx until within limits

    Fr = Vb[0]

    if Fr > (limits[0]* abs(Mb[2]) + limits[1]) : 
        print [Fr, (limits[0]* abs(Mb[2]) + limits[1])]
        Fr = (limits[0]* abs(Mb[2]) + limits[1])
    if Fr < (limits[2]* abs(Mb[2]) + limits[3]) : 
        Fr = (limits[2]* abs(Mb[2]) + limits[3])

    Vr = np.array ([Fr,Vb[1],Vb[2]])
    return Vr
    
def verticalPID (z,zp):
    # Apply the vertical PID

    e = (zp + z) 
    return pid_z(e)

def yawdotPID (r_cmd,r):
    # Apply the angular velocity PID

    e2 = float(r_cmd - r)
    return pid_r(-e2)

def apply_IRTAM (IRTAM,F):
    # take the (Fx,Fz,Mz) vector, return the 3 motors thrust vector (T1,T2,T3)

    F = np.array(F)
    T =np.dot(IRTAM,F)
    return T

def update_cmd(cmd):
    # Callback to a new command - Updates the desired Fx, angular velocity and depth

    global Fx 
    global yaw_dot 
    global zd 

    Fx = cmd.x 
    yaw_dot = cmd.y 
    zd = cmd.z

def control(fb):
    # Callback to new sensor imput, contains main loop instructions.

    # Last commands for Motors 0 1 (for filtering - UNUSED)
    global m0_old
    global m1_old

    # Unpack feedback 
    r = fb.x            # Angular velocity Body_Frame
    pitch = fb.y        # Pitch Angle
    zp = fb.z           # Depth

    # Apply the vertical PID. Obtain Fz (stabilized_Frame)
    Fz = verticalPID (zd,zp)

    # Apply the angular PID. Obtain Mz (stabilized_Frame)
    Mz = yawdotPID (yaw_dot,r)

    # Obtain Vectors of desired force and torque in Body_frame
    Vb = from_stabilized_to_body (np.array([Fx,0,Fz]),pitch)
    Mb = from_stabilized_to_body (np.array([0,0,Mz]),pitch)

    # Check and apply mototr limits to Fx, Obtain the corrected Force vetcor
    Vr = Fx_correction (Vb,Mb,limits)

    # Apply Reduced Inverted Thrust Allocation Matrix
    Thrust = apply_IRTAM(IRTAM,[Vr[0],Vr[2],Mb[2]])
 
    # For each motor obtain 
    m0 = motor_signal(Thrust[0])
    m1 = motor_signal(Thrust[1])
    m2 = motor_signal(Thrust[2])

   # Filtering UNUSED
   # m0.data = (m0.data + m0_old)/2
   # m1.data = (m1.data + m1_old)/2

    # Publish all motors Output
    pub_motor0.publish(m0)
    pub_motor1.publish(m1)
    pub_motor2.publish(m2)

    # Save last published motor input, for filtering UNUSED
    m0_old = m0.data
    m1_old = m1.data

def read_subscribers():
    # Subscriber
    # Initialize the node
    # subscribe to 2 topic, callback one of the other
    # Main loop on feedback
    # cmd updates the desired status and returns

    rospy.init_node('demo_control_node')
    rospy.Subscriber("feedback", Vector3, control)
    rospy.Subscriber("cmd", Vector3, update_cmd)
    rospy.spin()


if __name__ == '__main__':

    # Wait for tam parameter to be avaiable before starting - check every 1.1 seconds
    while not rospy.has_param('tam'):
         rospy.sleep(1.1)
         print ('waiting for tam')

    # Get and save tam from parameter file
    tam = rospy.get_param('tam')

    # Run one-time functions
    limits = calculate_limits (tam)
    IRTAM = calculate_IRTAM(tam)

    # Run subscriber, stating loop
    read_subscribers()
