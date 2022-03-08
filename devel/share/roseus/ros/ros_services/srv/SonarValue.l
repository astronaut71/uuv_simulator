;; Auto-generated. Do not edit!


(when (boundp 'ros_services::SonarValue)
  (if (not (find-package "ROS_SERVICES"))
    (make-package "ROS_SERVICES"))
  (shadow 'SonarValue (find-package "ROS_SERVICES")))
(unless (find-package "ROS_SERVICES::SONARVALUE")
  (make-package "ROS_SERVICES::SONARVALUE"))
(unless (find-package "ROS_SERVICES::SONARVALUEREQUEST")
  (make-package "ROS_SERVICES::SONARVALUEREQUEST"))
(unless (find-package "ROS_SERVICES::SONARVALUERESPONSE")
  (make-package "ROS_SERVICES::SONARVALUERESPONSE"))

(in-package "ROS")





(defclass ros_services::SonarValueRequest
  :super ros::object
  :slots (_current_angle_min_c _current_angle_max_c _current_angle_increment_c _current_time_increment_c _current_scan_time_c _current_range_min_c _current_range_max_c ))

(defmethod ros_services::SonarValueRequest
  (:init
   (&key
    ((:current_angle_min_c __current_angle_min_c) 0.0)
    ((:current_angle_max_c __current_angle_max_c) 0.0)
    ((:current_angle_increment_c __current_angle_increment_c) 0.0)
    ((:current_time_increment_c __current_time_increment_c) 0.0)
    ((:current_scan_time_c __current_scan_time_c) 0.0)
    ((:current_range_min_c __current_range_min_c) 0.0)
    ((:current_range_max_c __current_range_max_c) 0.0)
    )
   (send-super :init)
   (setq _current_angle_min_c (float __current_angle_min_c))
   (setq _current_angle_max_c (float __current_angle_max_c))
   (setq _current_angle_increment_c (float __current_angle_increment_c))
   (setq _current_time_increment_c (float __current_time_increment_c))
   (setq _current_scan_time_c (float __current_scan_time_c))
   (setq _current_range_min_c (float __current_range_min_c))
   (setq _current_range_max_c (float __current_range_max_c))
   self)
  (:current_angle_min_c
   (&optional __current_angle_min_c)
   (if __current_angle_min_c (setq _current_angle_min_c __current_angle_min_c)) _current_angle_min_c)
  (:current_angle_max_c
   (&optional __current_angle_max_c)
   (if __current_angle_max_c (setq _current_angle_max_c __current_angle_max_c)) _current_angle_max_c)
  (:current_angle_increment_c
   (&optional __current_angle_increment_c)
   (if __current_angle_increment_c (setq _current_angle_increment_c __current_angle_increment_c)) _current_angle_increment_c)
  (:current_time_increment_c
   (&optional __current_time_increment_c)
   (if __current_time_increment_c (setq _current_time_increment_c __current_time_increment_c)) _current_time_increment_c)
  (:current_scan_time_c
   (&optional __current_scan_time_c)
   (if __current_scan_time_c (setq _current_scan_time_c __current_scan_time_c)) _current_scan_time_c)
  (:current_range_min_c
   (&optional __current_range_min_c)
   (if __current_range_min_c (setq _current_range_min_c __current_range_min_c)) _current_range_min_c)
  (:current_range_max_c
   (&optional __current_range_max_c)
   (if __current_range_max_c (setq _current_range_max_c __current_range_max_c)) _current_range_max_c)
  (:serialization-length
   ()
   (+
    ;; float32 _current_angle_min_c
    4
    ;; float32 _current_angle_max_c
    4
    ;; float32 _current_angle_increment_c
    4
    ;; float32 _current_time_increment_c
    4
    ;; float32 _current_scan_time_c
    4
    ;; float32 _current_range_min_c
    4
    ;; float32 _current_range_max_c
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_angle_min_c
       (sys::poke _current_angle_min_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_angle_max_c
       (sys::poke _current_angle_max_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_angle_increment_c
       (sys::poke _current_angle_increment_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_time_increment_c
       (sys::poke _current_time_increment_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_scan_time_c
       (sys::poke _current_scan_time_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_range_min_c
       (sys::poke _current_range_min_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_range_max_c
       (sys::poke _current_range_max_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_angle_min_c
     (setq _current_angle_min_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_angle_max_c
     (setq _current_angle_max_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_angle_increment_c
     (setq _current_angle_increment_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_time_increment_c
     (setq _current_time_increment_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_scan_time_c
     (setq _current_scan_time_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_range_min_c
     (setq _current_range_min_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_range_max_c
     (setq _current_range_max_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_services::SonarValueResponse
  :super ros::object
  :slots (_current_angle_min_s _current_angle_max_s _current_angle_increment_s _current_time_increment_s _current_scan_time_s _current_range_min_s _current_range_max_s _success ))

(defmethod ros_services::SonarValueResponse
  (:init
   (&key
    ((:current_angle_min_s __current_angle_min_s) 0.0)
    ((:current_angle_max_s __current_angle_max_s) 0.0)
    ((:current_angle_increment_s __current_angle_increment_s) 0.0)
    ((:current_time_increment_s __current_time_increment_s) 0.0)
    ((:current_scan_time_s __current_scan_time_s) 0.0)
    ((:current_range_min_s __current_range_min_s) 0.0)
    ((:current_range_max_s __current_range_max_s) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _current_angle_min_s (float __current_angle_min_s))
   (setq _current_angle_max_s (float __current_angle_max_s))
   (setq _current_angle_increment_s (float __current_angle_increment_s))
   (setq _current_time_increment_s (float __current_time_increment_s))
   (setq _current_scan_time_s (float __current_scan_time_s))
   (setq _current_range_min_s (float __current_range_min_s))
   (setq _current_range_max_s (float __current_range_max_s))
   (setq _success __success)
   self)
  (:current_angle_min_s
   (&optional __current_angle_min_s)
   (if __current_angle_min_s (setq _current_angle_min_s __current_angle_min_s)) _current_angle_min_s)
  (:current_angle_max_s
   (&optional __current_angle_max_s)
   (if __current_angle_max_s (setq _current_angle_max_s __current_angle_max_s)) _current_angle_max_s)
  (:current_angle_increment_s
   (&optional __current_angle_increment_s)
   (if __current_angle_increment_s (setq _current_angle_increment_s __current_angle_increment_s)) _current_angle_increment_s)
  (:current_time_increment_s
   (&optional __current_time_increment_s)
   (if __current_time_increment_s (setq _current_time_increment_s __current_time_increment_s)) _current_time_increment_s)
  (:current_scan_time_s
   (&optional __current_scan_time_s)
   (if __current_scan_time_s (setq _current_scan_time_s __current_scan_time_s)) _current_scan_time_s)
  (:current_range_min_s
   (&optional __current_range_min_s)
   (if __current_range_min_s (setq _current_range_min_s __current_range_min_s)) _current_range_min_s)
  (:current_range_max_s
   (&optional __current_range_max_s)
   (if __current_range_max_s (setq _current_range_max_s __current_range_max_s)) _current_range_max_s)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float32 _current_angle_min_s
    4
    ;; float32 _current_angle_max_s
    4
    ;; float32 _current_angle_increment_s
    4
    ;; float32 _current_time_increment_s
    4
    ;; float32 _current_scan_time_s
    4
    ;; float32 _current_range_min_s
    4
    ;; float32 _current_range_max_s
    4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_angle_min_s
       (sys::poke _current_angle_min_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_angle_max_s
       (sys::poke _current_angle_max_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_angle_increment_s
       (sys::poke _current_angle_increment_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_time_increment_s
       (sys::poke _current_time_increment_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_scan_time_s
       (sys::poke _current_scan_time_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_range_min_s
       (sys::poke _current_range_min_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_range_max_s
       (sys::poke _current_range_max_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_angle_min_s
     (setq _current_angle_min_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_angle_max_s
     (setq _current_angle_max_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_angle_increment_s
     (setq _current_angle_increment_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_time_increment_s
     (setq _current_time_increment_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_scan_time_s
     (setq _current_scan_time_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_range_min_s
     (setq _current_range_min_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_range_max_s
     (setq _current_range_max_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_services::SonarValue
  :super ros::object
  :slots ())

(setf (get ros_services::SonarValue :md5sum-) "531b870d85b27f9cb775cebf182532b1")
(setf (get ros_services::SonarValue :datatype-) "ros_services/SonarValue")
(setf (get ros_services::SonarValue :request) ros_services::SonarValueRequest)
(setf (get ros_services::SonarValue :response) ros_services::SonarValueResponse)

(defmethod ros_services::SonarValueRequest
  (:response () (instance ros_services::SonarValueResponse :init)))

(setf (get ros_services::SonarValueRequest :md5sum-) "531b870d85b27f9cb775cebf182532b1")
(setf (get ros_services::SonarValueRequest :datatype-) "ros_services/SonarValueRequest")
(setf (get ros_services::SonarValueRequest :definition-)
      "float32 current_angle_min_c
float32 current_angle_max_c
float32 current_angle_increment_c
float32 current_time_increment_c
float32 current_scan_time_c
float32 current_range_min_c
float32 current_range_max_c
---
float32 current_angle_min_s
float32 current_angle_max_s
float32 current_angle_increment_s
float32 current_time_increment_s
float32 current_scan_time_s
float32 current_range_min_s
float32 current_range_max_s
bool success



")

(setf (get ros_services::SonarValueResponse :md5sum-) "531b870d85b27f9cb775cebf182532b1")
(setf (get ros_services::SonarValueResponse :datatype-) "ros_services/SonarValueResponse")
(setf (get ros_services::SonarValueResponse :definition-)
      "float32 current_angle_min_c
float32 current_angle_max_c
float32 current_angle_increment_c
float32 current_time_increment_c
float32 current_scan_time_c
float32 current_range_min_c
float32 current_range_max_c
---
float32 current_angle_min_s
float32 current_angle_max_s
float32 current_angle_increment_s
float32 current_time_increment_s
float32 current_scan_time_s
float32 current_range_min_s
float32 current_range_max_s
bool success



")



(provide :ros_services/SonarValue "531b870d85b27f9cb775cebf182532b1")


