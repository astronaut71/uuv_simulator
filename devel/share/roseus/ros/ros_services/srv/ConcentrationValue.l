;; Auto-generated. Do not edit!


(when (boundp 'ros_services::ConcentrationValue)
  (if (not (find-package "ROS_SERVICES"))
    (make-package "ROS_SERVICES"))
  (shadow 'ConcentrationValue (find-package "ROS_SERVICES")))
(unless (find-package "ROS_SERVICES::CONCENTRATIONVALUE")
  (make-package "ROS_SERVICES::CONCENTRATIONVALUE"))
(unless (find-package "ROS_SERVICES::CONCENTRATIONVALUEREQUEST")
  (make-package "ROS_SERVICES::CONCENTRATIONVALUEREQUEST"))
(unless (find-package "ROS_SERVICES::CONCENTRATIONVALUERESPONSE")
  (make-package "ROS_SERVICES::CONCENTRATIONVALUERESPONSE"))

(in-package "ROS")





(defclass ros_services::ConcentrationValueRequest
  :super ros::object
  :slots (_current_concentration_c ))

(defmethod ros_services::ConcentrationValueRequest
  (:init
   (&key
    ((:current_concentration_c __current_concentration_c) 0.0)
    )
   (send-super :init)
   (setq _current_concentration_c (float __current_concentration_c))
   self)
  (:current_concentration_c
   (&optional __current_concentration_c)
   (if __current_concentration_c (setq _current_concentration_c __current_concentration_c)) _current_concentration_c)
  (:serialization-length
   ()
   (+
    ;; float64 _current_concentration_c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_concentration_c
       (sys::poke _current_concentration_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_concentration_c
     (setq _current_concentration_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ros_services::ConcentrationValueResponse
  :super ros::object
  :slots (_current_concentration_s _success ))

(defmethod ros_services::ConcentrationValueResponse
  (:init
   (&key
    ((:current_concentration_s __current_concentration_s) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _current_concentration_s (float __current_concentration_s))
   (setq _success __success)
   self)
  (:current_concentration_s
   (&optional __current_concentration_s)
   (if __current_concentration_s (setq _current_concentration_s __current_concentration_s)) _current_concentration_s)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _current_concentration_s
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_concentration_s
       (sys::poke _current_concentration_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_concentration_s
     (setq _current_concentration_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_services::ConcentrationValue
  :super ros::object
  :slots ())

(setf (get ros_services::ConcentrationValue :md5sum-) "8333b5c9fbed73738e837cc4d210323f")
(setf (get ros_services::ConcentrationValue :datatype-) "ros_services/ConcentrationValue")
(setf (get ros_services::ConcentrationValue :request) ros_services::ConcentrationValueRequest)
(setf (get ros_services::ConcentrationValue :response) ros_services::ConcentrationValueResponse)

(defmethod ros_services::ConcentrationValueRequest
  (:response () (instance ros_services::ConcentrationValueResponse :init)))

(setf (get ros_services::ConcentrationValueRequest :md5sum-) "8333b5c9fbed73738e837cc4d210323f")
(setf (get ros_services::ConcentrationValueRequest :datatype-) "ros_services/ConcentrationValueRequest")
(setf (get ros_services::ConcentrationValueRequest :definition-)
      "float64 current_concentration_c
---
float64 current_concentration_s
bool success


")

(setf (get ros_services::ConcentrationValueResponse :md5sum-) "8333b5c9fbed73738e837cc4d210323f")
(setf (get ros_services::ConcentrationValueResponse :datatype-) "ros_services/ConcentrationValueResponse")
(setf (get ros_services::ConcentrationValueResponse :definition-)
      "float64 current_concentration_c
---
float64 current_concentration_s
bool success


")



(provide :ros_services/ConcentrationValue "8333b5c9fbed73738e837cc4d210323f")


