; Auto-generated. Do not edit!


(cl:in-package ros_services-srv)


;//! \htmlinclude PressureValue-request.msg.html

(cl:defclass <PressureValue-request> (roslisp-msg-protocol:ros-message)
  ((current_pressure_c
    :reader current_pressure_c
    :initarg :current_pressure_c
    :type cl:float
    :initform 0.0))
)

(cl:defclass PressureValue-request (<PressureValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PressureValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PressureValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<PressureValue-request> is deprecated: use ros_services-srv:PressureValue-request instead.")))

(cl:ensure-generic-function 'current_pressure_c-val :lambda-list '(m))
(cl:defmethod current_pressure_c-val ((m <PressureValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_pressure_c-val is deprecated.  Use ros_services-srv:current_pressure_c instead.")
  (current_pressure_c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PressureValue-request>) ostream)
  "Serializes a message object of type '<PressureValue-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_pressure_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PressureValue-request>) istream)
  "Deserializes a message object of type '<PressureValue-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_pressure_c) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PressureValue-request>)))
  "Returns string type for a service object of type '<PressureValue-request>"
  "ros_services/PressureValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PressureValue-request)))
  "Returns string type for a service object of type 'PressureValue-request"
  "ros_services/PressureValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PressureValue-request>)))
  "Returns md5sum for a message object of type '<PressureValue-request>"
  "63d5115cef5af2fe80e52603ff8267f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PressureValue-request)))
  "Returns md5sum for a message object of type 'PressureValue-request"
  "63d5115cef5af2fe80e52603ff8267f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PressureValue-request>)))
  "Returns full string definition for message of type '<PressureValue-request>"
  (cl:format cl:nil "float64 current_pressure_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PressureValue-request)))
  "Returns full string definition for message of type 'PressureValue-request"
  (cl:format cl:nil "float64 current_pressure_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PressureValue-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PressureValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PressureValue-request
    (cl:cons ':current_pressure_c (current_pressure_c msg))
))
;//! \htmlinclude PressureValue-response.msg.html

(cl:defclass <PressureValue-response> (roslisp-msg-protocol:ros-message)
  ((current_pressure_s
    :reader current_pressure_s
    :initarg :current_pressure_s
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PressureValue-response (<PressureValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PressureValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PressureValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<PressureValue-response> is deprecated: use ros_services-srv:PressureValue-response instead.")))

(cl:ensure-generic-function 'current_pressure_s-val :lambda-list '(m))
(cl:defmethod current_pressure_s-val ((m <PressureValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_pressure_s-val is deprecated.  Use ros_services-srv:current_pressure_s instead.")
  (current_pressure_s m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PressureValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:success-val is deprecated.  Use ros_services-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PressureValue-response>) ostream)
  "Serializes a message object of type '<PressureValue-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_pressure_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PressureValue-response>) istream)
  "Deserializes a message object of type '<PressureValue-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_pressure_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PressureValue-response>)))
  "Returns string type for a service object of type '<PressureValue-response>"
  "ros_services/PressureValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PressureValue-response)))
  "Returns string type for a service object of type 'PressureValue-response"
  "ros_services/PressureValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PressureValue-response>)))
  "Returns md5sum for a message object of type '<PressureValue-response>"
  "63d5115cef5af2fe80e52603ff8267f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PressureValue-response)))
  "Returns md5sum for a message object of type 'PressureValue-response"
  "63d5115cef5af2fe80e52603ff8267f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PressureValue-response>)))
  "Returns full string definition for message of type '<PressureValue-response>"
  (cl:format cl:nil "float64 current_pressure_s~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PressureValue-response)))
  "Returns full string definition for message of type 'PressureValue-response"
  (cl:format cl:nil "float64 current_pressure_s~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PressureValue-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PressureValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PressureValue-response
    (cl:cons ':current_pressure_s (current_pressure_s msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PressureValue)))
  'PressureValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PressureValue)))
  'PressureValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PressureValue)))
  "Returns string type for a service object of type '<PressureValue>"
  "ros_services/PressureValue")