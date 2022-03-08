; Auto-generated. Do not edit!


(cl:in-package ros_services-srv)


;//! \htmlinclude SonarValue-request.msg.html

(cl:defclass <SonarValue-request> (roslisp-msg-protocol:ros-message)
  ((current_angle_min_c
    :reader current_angle_min_c
    :initarg :current_angle_min_c
    :type cl:float
    :initform 0.0)
   (current_angle_max_c
    :reader current_angle_max_c
    :initarg :current_angle_max_c
    :type cl:float
    :initform 0.0)
   (current_angle_increment_c
    :reader current_angle_increment_c
    :initarg :current_angle_increment_c
    :type cl:float
    :initform 0.0)
   (current_time_increment_c
    :reader current_time_increment_c
    :initarg :current_time_increment_c
    :type cl:float
    :initform 0.0)
   (current_scan_time_c
    :reader current_scan_time_c
    :initarg :current_scan_time_c
    :type cl:float
    :initform 0.0)
   (current_range_min_c
    :reader current_range_min_c
    :initarg :current_range_min_c
    :type cl:float
    :initform 0.0)
   (current_range_max_c
    :reader current_range_max_c
    :initarg :current_range_max_c
    :type cl:float
    :initform 0.0))
)

(cl:defclass SonarValue-request (<SonarValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<SonarValue-request> is deprecated: use ros_services-srv:SonarValue-request instead.")))

(cl:ensure-generic-function 'current_angle_min_c-val :lambda-list '(m))
(cl:defmethod current_angle_min_c-val ((m <SonarValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_angle_min_c-val is deprecated.  Use ros_services-srv:current_angle_min_c instead.")
  (current_angle_min_c m))

(cl:ensure-generic-function 'current_angle_max_c-val :lambda-list '(m))
(cl:defmethod current_angle_max_c-val ((m <SonarValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_angle_max_c-val is deprecated.  Use ros_services-srv:current_angle_max_c instead.")
  (current_angle_max_c m))

(cl:ensure-generic-function 'current_angle_increment_c-val :lambda-list '(m))
(cl:defmethod current_angle_increment_c-val ((m <SonarValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_angle_increment_c-val is deprecated.  Use ros_services-srv:current_angle_increment_c instead.")
  (current_angle_increment_c m))

(cl:ensure-generic-function 'current_time_increment_c-val :lambda-list '(m))
(cl:defmethod current_time_increment_c-val ((m <SonarValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_time_increment_c-val is deprecated.  Use ros_services-srv:current_time_increment_c instead.")
  (current_time_increment_c m))

(cl:ensure-generic-function 'current_scan_time_c-val :lambda-list '(m))
(cl:defmethod current_scan_time_c-val ((m <SonarValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_scan_time_c-val is deprecated.  Use ros_services-srv:current_scan_time_c instead.")
  (current_scan_time_c m))

(cl:ensure-generic-function 'current_range_min_c-val :lambda-list '(m))
(cl:defmethod current_range_min_c-val ((m <SonarValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_range_min_c-val is deprecated.  Use ros_services-srv:current_range_min_c instead.")
  (current_range_min_c m))

(cl:ensure-generic-function 'current_range_max_c-val :lambda-list '(m))
(cl:defmethod current_range_max_c-val ((m <SonarValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_range_max_c-val is deprecated.  Use ros_services-srv:current_range_max_c instead.")
  (current_range_max_c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarValue-request>) ostream)
  "Serializes a message object of type '<SonarValue-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle_min_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle_max_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle_increment_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_time_increment_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_scan_time_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_range_min_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_range_max_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarValue-request>) istream)
  "Deserializes a message object of type '<SonarValue-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle_min_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle_max_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle_increment_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_time_increment_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_scan_time_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_range_min_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_range_max_c) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarValue-request>)))
  "Returns string type for a service object of type '<SonarValue-request>"
  "ros_services/SonarValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarValue-request)))
  "Returns string type for a service object of type 'SonarValue-request"
  "ros_services/SonarValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarValue-request>)))
  "Returns md5sum for a message object of type '<SonarValue-request>"
  "531b870d85b27f9cb775cebf182532b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarValue-request)))
  "Returns md5sum for a message object of type 'SonarValue-request"
  "531b870d85b27f9cb775cebf182532b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarValue-request>)))
  "Returns full string definition for message of type '<SonarValue-request>"
  (cl:format cl:nil "float32 current_angle_min_c~%float32 current_angle_max_c~%float32 current_angle_increment_c~%float32 current_time_increment_c~%float32 current_scan_time_c~%float32 current_range_min_c~%float32 current_range_max_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarValue-request)))
  "Returns full string definition for message of type 'SonarValue-request"
  (cl:format cl:nil "float32 current_angle_min_c~%float32 current_angle_max_c~%float32 current_angle_increment_c~%float32 current_time_increment_c~%float32 current_scan_time_c~%float32 current_range_min_c~%float32 current_range_max_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarValue-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarValue-request
    (cl:cons ':current_angle_min_c (current_angle_min_c msg))
    (cl:cons ':current_angle_max_c (current_angle_max_c msg))
    (cl:cons ':current_angle_increment_c (current_angle_increment_c msg))
    (cl:cons ':current_time_increment_c (current_time_increment_c msg))
    (cl:cons ':current_scan_time_c (current_scan_time_c msg))
    (cl:cons ':current_range_min_c (current_range_min_c msg))
    (cl:cons ':current_range_max_c (current_range_max_c msg))
))
;//! \htmlinclude SonarValue-response.msg.html

(cl:defclass <SonarValue-response> (roslisp-msg-protocol:ros-message)
  ((current_angle_min_s
    :reader current_angle_min_s
    :initarg :current_angle_min_s
    :type cl:float
    :initform 0.0)
   (current_angle_max_s
    :reader current_angle_max_s
    :initarg :current_angle_max_s
    :type cl:float
    :initform 0.0)
   (current_angle_increment_s
    :reader current_angle_increment_s
    :initarg :current_angle_increment_s
    :type cl:float
    :initform 0.0)
   (current_time_increment_s
    :reader current_time_increment_s
    :initarg :current_time_increment_s
    :type cl:float
    :initform 0.0)
   (current_scan_time_s
    :reader current_scan_time_s
    :initarg :current_scan_time_s
    :type cl:float
    :initform 0.0)
   (current_range_min_s
    :reader current_range_min_s
    :initarg :current_range_min_s
    :type cl:float
    :initform 0.0)
   (current_range_max_s
    :reader current_range_max_s
    :initarg :current_range_max_s
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SonarValue-response (<SonarValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<SonarValue-response> is deprecated: use ros_services-srv:SonarValue-response instead.")))

(cl:ensure-generic-function 'current_angle_min_s-val :lambda-list '(m))
(cl:defmethod current_angle_min_s-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_angle_min_s-val is deprecated.  Use ros_services-srv:current_angle_min_s instead.")
  (current_angle_min_s m))

(cl:ensure-generic-function 'current_angle_max_s-val :lambda-list '(m))
(cl:defmethod current_angle_max_s-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_angle_max_s-val is deprecated.  Use ros_services-srv:current_angle_max_s instead.")
  (current_angle_max_s m))

(cl:ensure-generic-function 'current_angle_increment_s-val :lambda-list '(m))
(cl:defmethod current_angle_increment_s-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_angle_increment_s-val is deprecated.  Use ros_services-srv:current_angle_increment_s instead.")
  (current_angle_increment_s m))

(cl:ensure-generic-function 'current_time_increment_s-val :lambda-list '(m))
(cl:defmethod current_time_increment_s-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_time_increment_s-val is deprecated.  Use ros_services-srv:current_time_increment_s instead.")
  (current_time_increment_s m))

(cl:ensure-generic-function 'current_scan_time_s-val :lambda-list '(m))
(cl:defmethod current_scan_time_s-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_scan_time_s-val is deprecated.  Use ros_services-srv:current_scan_time_s instead.")
  (current_scan_time_s m))

(cl:ensure-generic-function 'current_range_min_s-val :lambda-list '(m))
(cl:defmethod current_range_min_s-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_range_min_s-val is deprecated.  Use ros_services-srv:current_range_min_s instead.")
  (current_range_min_s m))

(cl:ensure-generic-function 'current_range_max_s-val :lambda-list '(m))
(cl:defmethod current_range_max_s-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_range_max_s-val is deprecated.  Use ros_services-srv:current_range_max_s instead.")
  (current_range_max_s m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SonarValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:success-val is deprecated.  Use ros_services-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarValue-response>) ostream)
  "Serializes a message object of type '<SonarValue-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle_min_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle_max_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle_increment_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_time_increment_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_scan_time_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_range_min_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_range_max_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarValue-response>) istream)
  "Deserializes a message object of type '<SonarValue-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle_min_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle_max_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle_increment_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_time_increment_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_scan_time_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_range_min_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_range_max_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarValue-response>)))
  "Returns string type for a service object of type '<SonarValue-response>"
  "ros_services/SonarValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarValue-response)))
  "Returns string type for a service object of type 'SonarValue-response"
  "ros_services/SonarValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarValue-response>)))
  "Returns md5sum for a message object of type '<SonarValue-response>"
  "531b870d85b27f9cb775cebf182532b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarValue-response)))
  "Returns md5sum for a message object of type 'SonarValue-response"
  "531b870d85b27f9cb775cebf182532b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarValue-response>)))
  "Returns full string definition for message of type '<SonarValue-response>"
  (cl:format cl:nil "float32 current_angle_min_s~%float32 current_angle_max_s~%float32 current_angle_increment_s~%float32 current_time_increment_s~%float32 current_scan_time_s~%float32 current_range_min_s~%float32 current_range_max_s~%bool success~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarValue-response)))
  "Returns full string definition for message of type 'SonarValue-response"
  (cl:format cl:nil "float32 current_angle_min_s~%float32 current_angle_max_s~%float32 current_angle_increment_s~%float32 current_time_increment_s~%float32 current_scan_time_s~%float32 current_range_min_s~%float32 current_range_max_s~%bool success~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarValue-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarValue-response
    (cl:cons ':current_angle_min_s (current_angle_min_s msg))
    (cl:cons ':current_angle_max_s (current_angle_max_s msg))
    (cl:cons ':current_angle_increment_s (current_angle_increment_s msg))
    (cl:cons ':current_time_increment_s (current_time_increment_s msg))
    (cl:cons ':current_scan_time_s (current_scan_time_s msg))
    (cl:cons ':current_range_min_s (current_range_min_s msg))
    (cl:cons ':current_range_max_s (current_range_max_s msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SonarValue)))
  'SonarValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SonarValue)))
  'SonarValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarValue)))
  "Returns string type for a service object of type '<SonarValue>"
  "ros_services/SonarValue")