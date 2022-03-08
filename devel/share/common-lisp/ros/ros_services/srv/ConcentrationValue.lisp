; Auto-generated. Do not edit!


(cl:in-package ros_services-srv)


;//! \htmlinclude ConcentrationValue-request.msg.html

(cl:defclass <ConcentrationValue-request> (roslisp-msg-protocol:ros-message)
  ((current_concentration_c
    :reader current_concentration_c
    :initarg :current_concentration_c
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConcentrationValue-request (<ConcentrationValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConcentrationValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConcentrationValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<ConcentrationValue-request> is deprecated: use ros_services-srv:ConcentrationValue-request instead.")))

(cl:ensure-generic-function 'current_concentration_c-val :lambda-list '(m))
(cl:defmethod current_concentration_c-val ((m <ConcentrationValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_concentration_c-val is deprecated.  Use ros_services-srv:current_concentration_c instead.")
  (current_concentration_c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConcentrationValue-request>) ostream)
  "Serializes a message object of type '<ConcentrationValue-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_concentration_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConcentrationValue-request>) istream)
  "Deserializes a message object of type '<ConcentrationValue-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_concentration_c) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConcentrationValue-request>)))
  "Returns string type for a service object of type '<ConcentrationValue-request>"
  "ros_services/ConcentrationValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConcentrationValue-request)))
  "Returns string type for a service object of type 'ConcentrationValue-request"
  "ros_services/ConcentrationValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConcentrationValue-request>)))
  "Returns md5sum for a message object of type '<ConcentrationValue-request>"
  "8333b5c9fbed73738e837cc4d210323f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConcentrationValue-request)))
  "Returns md5sum for a message object of type 'ConcentrationValue-request"
  "8333b5c9fbed73738e837cc4d210323f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConcentrationValue-request>)))
  "Returns full string definition for message of type '<ConcentrationValue-request>"
  (cl:format cl:nil "float64 current_concentration_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConcentrationValue-request)))
  "Returns full string definition for message of type 'ConcentrationValue-request"
  (cl:format cl:nil "float64 current_concentration_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConcentrationValue-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConcentrationValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConcentrationValue-request
    (cl:cons ':current_concentration_c (current_concentration_c msg))
))
;//! \htmlinclude ConcentrationValue-response.msg.html

(cl:defclass <ConcentrationValue-response> (roslisp-msg-protocol:ros-message)
  ((current_concentration_s
    :reader current_concentration_s
    :initarg :current_concentration_s
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConcentrationValue-response (<ConcentrationValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConcentrationValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConcentrationValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<ConcentrationValue-response> is deprecated: use ros_services-srv:ConcentrationValue-response instead.")))

(cl:ensure-generic-function 'current_concentration_s-val :lambda-list '(m))
(cl:defmethod current_concentration_s-val ((m <ConcentrationValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_concentration_s-val is deprecated.  Use ros_services-srv:current_concentration_s instead.")
  (current_concentration_s m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConcentrationValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:success-val is deprecated.  Use ros_services-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConcentrationValue-response>) ostream)
  "Serializes a message object of type '<ConcentrationValue-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_concentration_s))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConcentrationValue-response>) istream)
  "Deserializes a message object of type '<ConcentrationValue-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_concentration_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConcentrationValue-response>)))
  "Returns string type for a service object of type '<ConcentrationValue-response>"
  "ros_services/ConcentrationValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConcentrationValue-response)))
  "Returns string type for a service object of type 'ConcentrationValue-response"
  "ros_services/ConcentrationValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConcentrationValue-response>)))
  "Returns md5sum for a message object of type '<ConcentrationValue-response>"
  "8333b5c9fbed73738e837cc4d210323f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConcentrationValue-response)))
  "Returns md5sum for a message object of type 'ConcentrationValue-response"
  "8333b5c9fbed73738e837cc4d210323f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConcentrationValue-response>)))
  "Returns full string definition for message of type '<ConcentrationValue-response>"
  (cl:format cl:nil "float64 current_concentration_s~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConcentrationValue-response)))
  "Returns full string definition for message of type 'ConcentrationValue-response"
  (cl:format cl:nil "float64 current_concentration_s~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConcentrationValue-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConcentrationValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConcentrationValue-response
    (cl:cons ':current_concentration_s (current_concentration_s msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConcentrationValue)))
  'ConcentrationValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConcentrationValue)))
  'ConcentrationValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConcentrationValue)))
  "Returns string type for a service object of type '<ConcentrationValue>"
  "ros_services/ConcentrationValue")