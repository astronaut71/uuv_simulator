;; Auto-generated. Do not edit!


(when (boundp 'ros_services::ImuValue)
  (if (not (find-package "ROS_SERVICES"))
    (make-package "ROS_SERVICES"))
  (shadow 'ImuValue (find-package "ROS_SERVICES")))
(unless (find-package "ROS_SERVICES::IMUVALUE")
  (make-package "ROS_SERVICES::IMUVALUE"))
(unless (find-package "ROS_SERVICES::IMUVALUEREQUEST")
  (make-package "ROS_SERVICES::IMUVALUEREQUEST"))
(unless (find-package "ROS_SERVICES::IMUVALUERESPONSE")
  (make-package "ROS_SERVICES::IMUVALUERESPONSE"))

(in-package "ROS")





(defclass ros_services::ImuValueRequest
  :super ros::object
  :slots (_current_x_orientation_c _current_y_orientation_c _current_z_orientation_c _current_w_orientation_c _current_x_angular_velocity_c _current_y_angular_velocity_c _current_z_angular_velocity_c _current_x_linear_acceleration_c _current_y_linear_acceleration_c _current_z_linear_acceleration_c ))

(defmethod ros_services::ImuValueRequest
  (:init
   (&key
    ((:current_x_orientation_c __current_x_orientation_c) 0.0)
    ((:current_y_orientation_c __current_y_orientation_c) 0.0)
    ((:current_z_orientation_c __current_z_orientation_c) 0.0)
    ((:current_w_orientation_c __current_w_orientation_c) 0.0)
    ((:current_x_angular_velocity_c __current_x_angular_velocity_c) 0.0)
    ((:current_y_angular_velocity_c __current_y_angular_velocity_c) 0.0)
    ((:current_z_angular_velocity_c __current_z_angular_velocity_c) 0.0)
    ((:current_x_linear_acceleration_c __current_x_linear_acceleration_c) 0.0)
    ((:current_y_linear_acceleration_c __current_y_linear_acceleration_c) 0.0)
    ((:current_z_linear_acceleration_c __current_z_linear_acceleration_c) 0.0)
    )
   (send-super :init)
   (setq _current_x_orientation_c (float __current_x_orientation_c))
   (setq _current_y_orientation_c (float __current_y_orientation_c))
   (setq _current_z_orientation_c (float __current_z_orientation_c))
   (setq _current_w_orientation_c (float __current_w_orientation_c))
   (setq _current_x_angular_velocity_c (float __current_x_angular_velocity_c))
   (setq _current_y_angular_velocity_c (float __current_y_angular_velocity_c))
   (setq _current_z_angular_velocity_c (float __current_z_angular_velocity_c))
   (setq _current_x_linear_acceleration_c (float __current_x_linear_acceleration_c))
   (setq _current_y_linear_acceleration_c (float __current_y_linear_acceleration_c))
   (setq _current_z_linear_acceleration_c (float __current_z_linear_acceleration_c))
   self)
  (:current_x_orientation_c
   (&optional __current_x_orientation_c)
   (if __current_x_orientation_c (setq _current_x_orientation_c __current_x_orientation_c)) _current_x_orientation_c)
  (:current_y_orientation_c
   (&optional __current_y_orientation_c)
   (if __current_y_orientation_c (setq _current_y_orientation_c __current_y_orientation_c)) _current_y_orientation_c)
  (:current_z_orientation_c
   (&optional __current_z_orientation_c)
   (if __current_z_orientation_c (setq _current_z_orientation_c __current_z_orientation_c)) _current_z_orientation_c)
  (:current_w_orientation_c
   (&optional __current_w_orientation_c)
   (if __current_w_orientation_c (setq _current_w_orientation_c __current_w_orientation_c)) _current_w_orientation_c)
  (:current_x_angular_velocity_c
   (&optional __current_x_angular_velocity_c)
   (if __current_x_angular_velocity_c (setq _current_x_angular_velocity_c __current_x_angular_velocity_c)) _current_x_angular_velocity_c)
  (:current_y_angular_velocity_c
   (&optional __current_y_angular_velocity_c)
   (if __current_y_angular_velocity_c (setq _current_y_angular_velocity_c __current_y_angular_velocity_c)) _current_y_angular_velocity_c)
  (:current_z_angular_velocity_c
   (&optional __current_z_angular_velocity_c)
   (if __current_z_angular_velocity_c (setq _current_z_angular_velocity_c __current_z_angular_velocity_c)) _current_z_angular_velocity_c)
  (:current_x_linear_acceleration_c
   (&optional __current_x_linear_acceleration_c)
   (if __current_x_linear_acceleration_c (setq _current_x_linear_acceleration_c __current_x_linear_acceleration_c)) _current_x_linear_acceleration_c)
  (:current_y_linear_acceleration_c
   (&optional __current_y_linear_acceleration_c)
   (if __current_y_linear_acceleration_c (setq _current_y_linear_acceleration_c __current_y_linear_acceleration_c)) _current_y_linear_acceleration_c)
  (:current_z_linear_acceleration_c
   (&optional __current_z_linear_acceleration_c)
   (if __current_z_linear_acceleration_c (setq _current_z_linear_acceleration_c __current_z_linear_acceleration_c)) _current_z_linear_acceleration_c)
  (:serialization-length
   ()
   (+
    ;; float64 _current_x_orientation_c
    8
    ;; float64 _current_y_orientation_c
    8
    ;; float64 _current_z_orientation_c
    8
    ;; float64 _current_w_orientation_c
    8
    ;; float64 _current_x_angular_velocity_c
    8
    ;; float64 _current_y_angular_velocity_c
    8
    ;; float64 _current_z_angular_velocity_c
    8
    ;; float64 _current_x_linear_acceleration_c
    8
    ;; float64 _current_y_linear_acceleration_c
    8
    ;; float64 _current_z_linear_acceleration_c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_x_orientation_c
       (sys::poke _current_x_orientation_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_y_orientation_c
       (sys::poke _current_y_orientation_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_z_orientation_c
       (sys::poke _current_z_orientation_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_w_orientation_c
       (sys::poke _current_w_orientation_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_x_angular_velocity_c
       (sys::poke _current_x_angular_velocity_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_y_angular_velocity_c
       (sys::poke _current_y_angular_velocity_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_z_angular_velocity_c
       (sys::poke _current_z_angular_velocity_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_x_linear_acceleration_c
       (sys::poke _current_x_linear_acceleration_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_y_linear_acceleration_c
       (sys::poke _current_y_linear_acceleration_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_z_linear_acceleration_c
       (sys::poke _current_z_linear_acceleration_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_x_orientation_c
     (setq _current_x_orientation_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_y_orientation_c
     (setq _current_y_orientation_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_z_orientation_c
     (setq _current_z_orientation_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_w_orientation_c
     (setq _current_w_orientation_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_x_angular_velocity_c
     (setq _current_x_angular_velocity_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_y_angular_velocity_c
     (setq _current_y_angular_velocity_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_z_angular_velocity_c
     (setq _current_z_angular_velocity_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_x_linear_acceleration_c
     (setq _current_x_linear_acceleration_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_y_linear_acceleration_c
     (setq _current_y_linear_acceleration_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_z_linear_acceleration_c
     (setq _current_z_linear_acceleration_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ros_services::ImuValueResponse
  :super ros::object
  :slots (_current_x_orientation_s _current_y_orientation_s _current_z_orientation_s _current_w_orientation_s _current_x_angular_velocity_s _current_y_angular_velocity_s _current_z_angular_velocity_s _current_x_linear_acceleration_s _current_y_linear_acceleration_s _current_z_linear_acceleration_s _success ))

(defmethod ros_services::ImuValueResponse
  (:init
   (&key
    ((:current_x_orientation_s __current_x_orientation_s) 0.0)
    ((:current_y_orientation_s __current_y_orientation_s) 0.0)
    ((:current_z_orientation_s __current_z_orientation_s) 0.0)
    ((:current_w_orientation_s __current_w_orientation_s) 0.0)
    ((:current_x_angular_velocity_s __current_x_angular_velocity_s) 0.0)
    ((:current_y_angular_velocity_s __current_y_angular_velocity_s) 0.0)
    ((:current_z_angular_velocity_s __current_z_angular_velocity_s) 0.0)
    ((:current_x_linear_acceleration_s __current_x_linear_acceleration_s) 0.0)
    ((:current_y_linear_acceleration_s __current_y_linear_acceleration_s) 0.0)
    ((:current_z_linear_acceleration_s __current_z_linear_acceleration_s) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _current_x_orientation_s (float __current_x_orientation_s))
   (setq _current_y_orientation_s (float __current_y_orientation_s))
   (setq _current_z_orientation_s (float __current_z_orientation_s))
   (setq _current_w_orientation_s (float __current_w_orientation_s))
   (setq _current_x_angular_velocity_s (float __current_x_angular_velocity_s))
   (setq _current_y_angular_velocity_s (float __current_y_angular_velocity_s))
   (setq _current_z_angular_velocity_s (float __current_z_angular_velocity_s))
   (setq _current_x_linear_acceleration_s (float __current_x_linear_acceleration_s))
   (setq _current_y_linear_acceleration_s (float __current_y_linear_acceleration_s))
   (setq _current_z_linear_acceleration_s (float __current_z_linear_acceleration_s))
   (setq _success __success)
   self)
  (:current_x_orientation_s
   (&optional __current_x_orientation_s)
   (if __current_x_orientation_s (setq _current_x_orientation_s __current_x_orientation_s)) _current_x_orientation_s)
  (:current_y_orientation_s
   (&optional __current_y_orientation_s)
   (if __current_y_orientation_s (setq _current_y_orientation_s __current_y_orientation_s)) _current_y_orientation_s)
  (:current_z_orientation_s
   (&optional __current_z_orientation_s)
   (if __current_z_orientation_s (setq _current_z_orientation_s __current_z_orientation_s)) _current_z_orientation_s)
  (:current_w_orientation_s
   (&optional __current_w_orientation_s)
   (if __current_w_orientation_s (setq _current_w_orientation_s __current_w_orientation_s)) _current_w_orientation_s)
  (:current_x_angular_velocity_s
   (&optional __current_x_angular_velocity_s)
   (if __current_x_angular_velocity_s (setq _current_x_angular_velocity_s __current_x_angular_velocity_s)) _current_x_angular_velocity_s)
  (:current_y_angular_velocity_s
   (&optional __current_y_angular_velocity_s)
   (if __current_y_angular_velocity_s (setq _current_y_angular_velocity_s __current_y_angular_velocity_s)) _current_y_angular_velocity_s)
  (:current_z_angular_velocity_s
   (&optional __current_z_angular_velocity_s)
   (if __current_z_angular_velocity_s (setq _current_z_angular_velocity_s __current_z_angular_velocity_s)) _current_z_angular_velocity_s)
  (:current_x_linear_acceleration_s
   (&optional __current_x_linear_acceleration_s)
   (if __current_x_linear_acceleration_s (setq _current_x_linear_acceleration_s __current_x_linear_acceleration_s)) _current_x_linear_acceleration_s)
  (:current_y_linear_acceleration_s
   (&optional __current_y_linear_acceleration_s)
   (if __current_y_linear_acceleration_s (setq _current_y_linear_acceleration_s __current_y_linear_acceleration_s)) _current_y_linear_acceleration_s)
  (:current_z_linear_acceleration_s
   (&optional __current_z_linear_acceleration_s)
   (if __current_z_linear_acceleration_s (setq _current_z_linear_acceleration_s __current_z_linear_acceleration_s)) _current_z_linear_acceleration_s)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _current_x_orientation_s
    8
    ;; float64 _current_y_orientation_s
    8
    ;; float64 _current_z_orientation_s
    8
    ;; float64 _current_w_orientation_s
    8
    ;; float64 _current_x_angular_velocity_s
    8
    ;; float64 _current_y_angular_velocity_s
    8
    ;; float64 _current_z_angular_velocity_s
    8
    ;; float64 _current_x_linear_acceleration_s
    8
    ;; float64 _current_y_linear_acceleration_s
    8
    ;; float64 _current_z_linear_acceleration_s
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_x_orientation_s
       (sys::poke _current_x_orientation_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_y_orientation_s
       (sys::poke _current_y_orientation_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_z_orientation_s
       (sys::poke _current_z_orientation_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_w_orientation_s
       (sys::poke _current_w_orientation_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_x_angular_velocity_s
       (sys::poke _current_x_angular_velocity_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_y_angular_velocity_s
       (sys::poke _current_y_angular_velocity_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_z_angular_velocity_s
       (sys::poke _current_z_angular_velocity_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_x_linear_acceleration_s
       (sys::poke _current_x_linear_acceleration_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_y_linear_acceleration_s
       (sys::poke _current_y_linear_acceleration_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_z_linear_acceleration_s
       (sys::poke _current_z_linear_acceleration_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_x_orientation_s
     (setq _current_x_orientation_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_y_orientation_s
     (setq _current_y_orientation_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_z_orientation_s
     (setq _current_z_orientation_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_w_orientation_s
     (setq _current_w_orientation_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_x_angular_velocity_s
     (setq _current_x_angular_velocity_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_y_angular_velocity_s
     (setq _current_y_angular_velocity_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_z_angular_velocity_s
     (setq _current_z_angular_velocity_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_x_linear_acceleration_s
     (setq _current_x_linear_acceleration_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_y_linear_acceleration_s
     (setq _current_y_linear_acceleration_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_z_linear_acceleration_s
     (setq _current_z_linear_acceleration_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_services::ImuValue
  :super ros::object
  :slots ())

(setf (get ros_services::ImuValue :md5sum-) "d594bb3c4eeaf0325c0b0e4feeca4c15")
(setf (get ros_services::ImuValue :datatype-) "ros_services/ImuValue")
(setf (get ros_services::ImuValue :request) ros_services::ImuValueRequest)
(setf (get ros_services::ImuValue :response) ros_services::ImuValueResponse)

(defmethod ros_services::ImuValueRequest
  (:response () (instance ros_services::ImuValueResponse :init)))

(setf (get ros_services::ImuValueRequest :md5sum-) "d594bb3c4eeaf0325c0b0e4feeca4c15")
(setf (get ros_services::ImuValueRequest :datatype-) "ros_services/ImuValueRequest")
(setf (get ros_services::ImuValueRequest :definition-)
      "float64 current_x_orientation_c
float64 current_y_orientation_c
float64 current_z_orientation_c
float64 current_w_orientation_c
float64 current_x_angular_velocity_c
float64 current_y_angular_velocity_c
float64 current_z_angular_velocity_c
float64 current_x_linear_acceleration_c
float64 current_y_linear_acceleration_c
float64 current_z_linear_acceleration_c
---
float64 current_x_orientation_s
float64 current_y_orientation_s
float64 current_z_orientation_s
float64 current_w_orientation_s
float64 current_x_angular_velocity_s
float64 current_y_angular_velocity_s
float64 current_z_angular_velocity_s
float64 current_x_linear_acceleration_s
float64 current_y_linear_acceleration_s
float64 current_z_linear_acceleration_s
bool success


")

(setf (get ros_services::ImuValueResponse :md5sum-) "d594bb3c4eeaf0325c0b0e4feeca4c15")
(setf (get ros_services::ImuValueResponse :datatype-) "ros_services/ImuValueResponse")
(setf (get ros_services::ImuValueResponse :definition-)
      "float64 current_x_orientation_c
float64 current_y_orientation_c
float64 current_z_orientation_c
float64 current_w_orientation_c
float64 current_x_angular_velocity_c
float64 current_y_angular_velocity_c
float64 current_z_angular_velocity_c
float64 current_x_linear_acceleration_c
float64 current_y_linear_acceleration_c
float64 current_z_linear_acceleration_c
---
float64 current_x_orientation_s
float64 current_y_orientation_s
float64 current_z_orientation_s
float64 current_w_orientation_s
float64 current_x_angular_velocity_s
float64 current_y_angular_velocity_s
float64 current_z_angular_velocity_s
float64 current_x_linear_acceleration_s
float64 current_y_linear_acceleration_s
float64 current_z_linear_acceleration_s
bool success


")



(provide :ros_services/ImuValue "d594bb3c4eeaf0325c0b0e4feeca4c15")


