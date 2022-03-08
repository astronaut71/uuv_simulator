;; Auto-generated. Do not edit!


(when (boundp 'ros_services::PressureValue)
  (if (not (find-package "ROS_SERVICES"))
    (make-package "ROS_SERVICES"))
  (shadow 'PressureValue (find-package "ROS_SERVICES")))
(unless (find-package "ROS_SERVICES::PRESSUREVALUE")
  (make-package "ROS_SERVICES::PRESSUREVALUE"))
(unless (find-package "ROS_SERVICES::PRESSUREVALUEREQUEST")
  (make-package "ROS_SERVICES::PRESSUREVALUEREQUEST"))
(unless (find-package "ROS_SERVICES::PRESSUREVALUERESPONSE")
  (make-package "ROS_SERVICES::PRESSUREVALUERESPONSE"))

(in-package "ROS")





(defclass ros_services::PressureValueRequest
  :super ros::object
  :slots (_current_pressure_c ))

(defmethod ros_services::PressureValueRequest
  (:init
   (&key
    ((:current_pressure_c __current_pressure_c) 0.0)
    )
   (send-super :init)
   (setq _current_pressure_c (float __current_pressure_c))
   self)
  (:current_pressure_c
   (&optional __current_pressure_c)
   (if __current_pressure_c (setq _current_pressure_c __current_pressure_c)) _current_pressure_c)
  (:serialization-length
   ()
   (+
    ;; float64 _current_pressure_c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_pressure_c
       (sys::poke _current_pressure_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_pressure_c
     (setq _current_pressure_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ros_services::PressureValueResponse
  :super ros::object
  :slots (_current_pressure_s _success ))

(defmethod ros_services::PressureValueResponse
  (:init
   (&key
    ((:current_pressure_s __current_pressure_s) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _current_pressure_s (float __current_pressure_s))
   (setq _success __success)
   self)
  (:current_pressure_s
   (&optional __current_pressure_s)
   (if __current_pressure_s (setq _current_pressure_s __current_pressure_s)) _current_pressure_s)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _current_pressure_s
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_pressure_s
       (sys::poke _current_pressure_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_pressure_s
     (setq _current_pressure_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_services::PressureValue
  :super ros::object
  :slots ())

(setf (get ros_services::PressureValue :md5sum-) "63d5115cef5af2fe80e52603ff8267f0")
(setf (get ros_services::PressureValue :datatype-) "ros_services/PressureValue")
(setf (get ros_services::PressureValue :request) ros_services::PressureValueRequest)
(setf (get ros_services::PressureValue :response) ros_services::PressureValueResponse)

(defmethod ros_services::PressureValueRequest
  (:response () (instance ros_services::PressureValueResponse :init)))

(setf (get ros_services::PressureValueRequest :md5sum-) "63d5115cef5af2fe80e52603ff8267f0")
(setf (get ros_services::PressureValueRequest :datatype-) "ros_services/PressureValueRequest")
(setf (get ros_services::PressureValueRequest :definition-)
      "float64 current_pressure_c
---
float64 current_pressure_s
bool success


")

(setf (get ros_services::PressureValueResponse :md5sum-) "63d5115cef5af2fe80e52603ff8267f0")
(setf (get ros_services::PressureValueResponse :datatype-) "ros_services/PressureValueResponse")
(setf (get ros_services::PressureValueResponse :definition-)
      "float64 current_pressure_c
---
float64 current_pressure_s
bool success


")



(provide :ros_services/PressureValue "63d5115cef5af2fe80e52603ff8267f0")


