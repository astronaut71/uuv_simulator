#!/usr/bin/env python

import numpy as np

class Motor:

    def __init__(self,motor_index):
        if motor_index==0:
            self.position = 'right thruster'
        if motor_index==1:
            self.position = 'left thruster'
        if motor_index==2:
            self.position = 'bottom thruster'

        self.max = 2.2
        self.min = 1.6
        # self.time = rospy.get_time()
        self.Input = 0.0
        self.T = 0.0
        self.DTdt = 5 # Variation of Thrust in N/s

    def ist_thrust(self,motor_input):

        if motor_input > 100 :
            motor_input = 100
        if motor_input < -100 :
            motor_input = -100
        return np.interp(motor_input,[-100,-0.001,0.001,100],[-self.min,0,0,self.max])

    def command(self,thrust):
        if thrust > self.max :
            thrust = self.max
        if thrust < -self.min :
            thrust = -self.min
        return np.interp(thrust,[-self.min,0,self.max],[-100,0,100])


