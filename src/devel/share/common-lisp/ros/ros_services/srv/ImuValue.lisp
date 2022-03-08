; Auto-generated. Do not edit!


(cl:in-package ros_services-srv)


;//! \htmlinclude ImuValue-request.msg.html

(cl:defclass <ImuValue-request> (roslisp-msg-protocol:ros-message)
  ((current_x_orientation_c
    :reader current_x_orientation_c
    :initarg :current_x_orientation_c
    :type cl:float
    :initform 0.0)
   (current_y_orientation_c
    :reader current_y_orientation_c
    :initarg :current_y_orientation_c
    :type cl:float
    :initform 0.0)
   (current_z_orientation_c
    :reader current_z_orientation_c
    :initarg :current_z_orientation_c
    :type cl:float
    :initform 0.0)
   (current_w_orientation_c
    :reader current_w_orientation_c
    :initarg :current_w_orientation_c
    :type cl:float
    :initform 0.0)
   (current_x_angular_velocity_c
    :reader current_x_angular_velocity_c
    :initarg :current_x_angular_velocity_c
    :type cl:float
    :initform 0.0)
   (current_y_angular_velocity_c
    :reader current_y_angular_velocity_c
    :initarg :current_y_angular_velocity_c
    :type cl:float
    :initform 0.0)
   (current_z_angular_velocity_c
    :reader current_z_angular_velocity_c
    :initarg :current_z_angular_velocity_c
    :type cl:float
    :initform 0.0)
   (current_x_linear_acceleration_c
    :reader current_x_linear_acceleration_c
    :initarg :current_x_linear_acceleration_c
    :type cl:float
    :initform 0.0)
   (current_y_linear_acceleration_c
    :reader current_y_linear_acceleration_c
    :initarg :current_y_linear_acceleration_c
    :type cl:float
    :initform 0.0)
   (current_z_linear_acceleration_c
    :reader current_z_linear_acceleration_c
    :initarg :current_z_linear_acceleration_c
    :type cl:float
    :initform 0.0))
)

(cl:defclass ImuValue-request (<ImuValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<ImuValue-request> is deprecated: use ros_services-srv:ImuValue-request instead.")))

(cl:ensure-generic-function 'current_x_orientation_c-val :lambda-list '(m))
(cl:defmethod current_x_orientation_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_x_orientation_c-val is deprecated.  Use ros_services-srv:current_x_orientation_c instead.")
  (current_x_orientation_c m))

(cl:ensure-generic-function 'current_y_orientation_c-val :lambda-list '(m))
(cl:defmethod current_y_orientation_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_y_orientation_c-val is deprecated.  Use ros_services-srv:current_y_orientation_c instead.")
  (current_y_orientation_c m))

(cl:ensure-generic-function 'current_z_orientation_c-val :lambda-list '(m))
(cl:defmethod current_z_orientation_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_z_orientation_c-val is deprecated.  Use ros_services-srv:current_z_orientation_c instead.")
  (current_z_orientation_c m))

(cl:ensure-generic-function 'current_w_orientation_c-val :lambda-list '(m))
(cl:defmethod current_w_orientation_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_w_orientation_c-val is deprecated.  Use ros_services-srv:current_w_orientation_c instead.")
  (current_w_orientation_c m))

(cl:ensure-generic-function 'current_x_angular_velocity_c-val :lambda-list '(m))
(cl:defmethod current_x_angular_velocity_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_x_angular_velocity_c-val is deprecated.  Use ros_services-srv:current_x_angular_velocity_c instead.")
  (current_x_angular_velocity_c m))

(cl:ensure-generic-function 'current_y_angular_velocity_c-val :lambda-list '(m))
(cl:defmethod current_y_angular_velocity_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_y_angular_velocity_c-val is deprecated.  Use ros_services-srv:current_y_angular_velocity_c instead.")
  (current_y_angular_velocity_c m))

(cl:ensure-generic-function 'current_z_angular_velocity_c-val :lambda-list '(m))
(cl:defmethod current_z_angular_velocity_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_z_angular_velocity_c-val is deprecated.  Use ros_services-srv:current_z_angular_velocity_c instead.")
  (current_z_angular_velocity_c m))

(cl:ensure-generic-function 'current_x_linear_acceleration_c-val :lambda-list '(m))
(cl:defmethod current_x_linear_acceleration_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_x_linear_acceleration_c-val is deprecated.  Use ros_services-srv:current_x_linear_acceleration_c instead.")
  (current_x_linear_acceleration_c m))

(cl:ensure-generic-function 'current_y_linear_acceleration_c-val :lambda-list '(m))
(cl:defmethod current_y_linear_acceleration_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_y_linear_acceleration_c-val is deprecated.  Use ros_services-srv:current_y_linear_acceleration_c instead.")
  (current_y_linear_acceleration_c m))

(cl:ensure-generic-function 'current_z_linear_acceleration_c-val :lambda-list '(m))
(cl:defmethod current_z_linear_acceleration_c-val ((m <ImuValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_z_linear_acceleration_c-val is deprecated.  Use ros_services-srv:current_z_linear_acceleration_c instead.")
  (current_z_linear_acceleration_c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuValue-request>) ostream)
  "Serializes a message object of type '<ImuValue-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_x_orientation_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_y_orientation_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_z_orientation_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_w_orientation_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_x_angular_velocity_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_y_angular_velocity_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_z_angular_velocity_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_x_linear_acceleration_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_y_linear_acceleration_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_z_linear_acceleration_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuValue-request>) istream)
  "Deserializes a message object of type '<ImuValue-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x_orientation_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y_orientation_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_z_orientation_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_w_orientation_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x_angular_velocity_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y_angular_velocity_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_z_angular_velocity_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x_linear_acceleration_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y_linear_acceleration_c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_z_linear_acceleration_c) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuValue-request>)))
  "Returns string type for a service object of type '<ImuValue-request>"
  "ros_services/ImuValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuValue-request)))
  "Returns string type for a service object of type 'ImuValue-request"
  "ros_services/ImuValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuValue-request>)))
  "Returns md5sum for a message object of type '<ImuValue-request>"
  "d594bb3c4eeaf0325c0b0e4feeca4c15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuValue-request)))
  "Returns md5sum for a message object of type 'ImuValue-request"
  "d594bb3c4eeaf0325c0b0e4feeca4c15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuValue-request>)))
  "Returns full string definition for message of type '<ImuValue-request>"
  (cl:format cl:nil "float64 current_x_orientation_c~%float64 current_y_orientation_c~%float64 current_z_orientation_c~%float64 current_w_orientation_c~%float64 current_x_angular_velocity_c~%float64 current_y_angular_velocity_c~%float64 current_z_angular_velocity_c~%float64 current_x_linear_acceleration_c~%float64 current_y_linear_acceleration_c~%float64 current_z_linear_acceleration_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuValue-request)))
  "Returns full string definition for message of type 'ImuValue-request"
  (cl:format cl:nil "float64 current_x_orientation_c~%float64 current_y_orientation_c~%float64 current_z_orientation_c~%float64 current_w_orientation_c~%float64 current_x_angular_velocity_c~%float64 current_y_angular_velocity_c~%float64 current_z_angular_velocity_c~%float64 current_x_linear_acceleration_c~%float64 current_y_linear_acceleration_c~%float64 current_z_linear_acceleration_c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuValue-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuValue-request
    (cl:cons ':current_x_orientation_c (current_x_orientation_c msg))
    (cl:cons ':current_y_orientation_c (current_y_orientation_c msg))
    (cl:cons ':current_z_orientation_c (current_z_orientation_c msg))
    (cl:cons ':current_w_orientation_c (current_w_orientation_c msg))
    (cl:cons ':current_x_angular_velocity_c (current_x_angular_velocity_c msg))
    (cl:cons ':current_y_angular_velocity_c (current_y_angular_velocity_c msg))
    (cl:cons ':current_z_angular_velocity_c (current_z_angular_velocity_c msg))
    (cl:cons ':current_x_linear_acceleration_c (current_x_linear_acceleration_c msg))
    (cl:cons ':current_y_linear_acceleration_c (current_y_linear_acceleration_c msg))
    (cl:cons ':current_z_linear_acceleration_c (current_z_linear_acceleration_c msg))
))
;//! \htmlinclude ImuValue-response.msg.html

(cl:defclass <ImuValue-response> (roslisp-msg-protocol:ros-message)
  ((current_x_orientation_s
    :reader current_x_orientation_s
    :initarg :current_x_orientation_s
    :type cl:float
    :initform 0.0)
   (current_y_orientation_s
    :reader current_y_orientation_s
    :initarg :current_y_orientation_s
    :type cl:float
    :initform 0.0)
   (current_z_orientation_s
    :reader current_z_orientation_s
    :initarg :current_z_orientation_s
    :type cl:float
    :initform 0.0)
   (current_w_orientation_s
    :reader current_w_orientation_s
    :initarg :current_w_orientation_s
    :type cl:float
    :initform 0.0)
   (current_x_angular_velocity_s
    :reader current_x_angular_velocity_s
    :initarg :current_x_angular_velocity_s
    :type cl:float
    :initform 0.0)
   (current_y_angular_velocity_s
    :reader current_y_angular_velocity_s
    :initarg :current_y_angular_velocity_s
    :type cl:float
    :initform 0.0)
   (current_z_angular_velocity_s
    :reader current_z_angular_velocity_s
    :initarg :current_z_angular_velocity_s
    :type cl:float
    :initform 0.0)
   (current_x_linear_acceleration_s
    :reader current_x_linear_acceleration_s
    :initarg :current_x_linear_acceleration_s
    :type cl:float
    :initform 0.0)
   (current_y_linear_acceleration_s
    :reader current_y_linear_acceleration_s
    :initarg :current_y_linear_acceleration_s
    :type cl:float
    :initform 0.0)
   (current_z_linear_acceleration_s
    :reader current_z_linear_acceleration_s
    :initarg :current_z_linear_acceleration_s
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ImuValue-response (<ImuValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_services-srv:<ImuValue-response> is deprecated: use ros_services-srv:ImuValue-response instead.")))

(cl:ensure-generic-function 'current_x_orientation_s-val :lambda-list '(m))
(cl:defmethod current_x_orientation_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_x_orientation_s-val is deprecated.  Use ros_services-srv:current_x_orientation_s instead.")
  (current_x_orientation_s m))

(cl:ensure-generic-function 'current_y_orientation_s-val :lambda-list '(m))
(cl:defmethod current_y_orientation_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_y_orientation_s-val is deprecated.  Use ros_services-srv:current_y_orientation_s instead.")
  (current_y_orientation_s m))

(cl:ensure-generic-function 'current_z_orientation_s-val :lambda-list '(m))
(cl:defmethod current_z_orientation_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_z_orientation_s-val is deprecated.  Use ros_services-srv:current_z_orientation_s instead.")
  (current_z_orientation_s m))

(cl:ensure-generic-function 'current_w_orientation_s-val :lambda-list '(m))
(cl:defmethod current_w_orientation_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_w_orientation_s-val is deprecated.  Use ros_services-srv:current_w_orientation_s instead.")
  (current_w_orientation_s m))

(cl:ensure-generic-function 'current_x_angular_velocity_s-val :lambda-list '(m))
(cl:defmethod current_x_angular_velocity_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_x_angular_velocity_s-val is deprecated.  Use ros_services-srv:current_x_angular_velocity_s instead.")
  (current_x_angular_velocity_s m))

(cl:ensure-generic-function 'current_y_angular_velocity_s-val :lambda-list '(m))
(cl:defmethod current_y_angular_velocity_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_y_angular_velocity_s-val is deprecated.  Use ros_services-srv:current_y_angular_velocity_s instead.")
  (current_y_angular_velocity_s m))

(cl:ensure-generic-function 'current_z_angular_velocity_s-val :lambda-list '(m))
(cl:defmethod current_z_angular_velocity_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_z_angular_velocity_s-val is deprecated.  Use ros_services-srv:current_z_angular_velocity_s instead.")
  (current_z_angular_velocity_s m))

(cl:ensure-generic-function 'current_x_linear_acceleration_s-val :lambda-list '(m))
(cl:defmethod current_x_linear_acceleration_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_x_linear_acceleration_s-val is deprecated.  Use ros_services-srv:current_x_linear_acceleration_s instead.")
  (current_x_linear_acceleration_s m))

(cl:ensure-generic-function 'current_y_linear_acceleration_s-val :lambda-list '(m))
(cl:defmethod current_y_linear_acceleration_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_y_linear_acceleration_s-val is deprecated.  Use ros_services-srv:current_y_linear_acceleration_s instead.")
  (current_y_linear_acceleration_s m))

(cl:ensure-generic-function 'current_z_linear_acceleration_s-val :lambda-list '(m))
(cl:defmethod current_z_linear_acceleration_s-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:current_z_linear_acceleration_s-val is deprecated.  Use ros_services-srv:current_z_linear_acceleration_s instead.")
  (current_z_linear_acceleration_s m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ImuValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_services-srv:success-val is deprecated.  Use ros_services-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuValue-response>) ostream)
  "Serializes a message object of type '<ImuValue-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_x_orientation_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_y_orientation_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_z_orientation_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_w_orientation_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_x_angular_velocity_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_y_angular_velocity_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_z_angular_velocity_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_x_linear_acceleration_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_y_linear_acceleration_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_z_linear_acceleration_s))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuValue-response>) istream)
  "Deserializes a message object of type '<ImuValue-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x_orientation_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y_orientation_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_z_orientation_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_w_orientation_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x_angular_velocity_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y_angular_velocity_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_z_angular_velocity_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x_linear_acceleration_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y_linear_acceleration_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_z_linear_acceleration_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuValue-response>)))
  "Returns string type for a service object of type '<ImuValue-response>"
  "ros_services/ImuValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuValue-response)))
  "Returns string type for a service object of type 'ImuValue-response"
  "ros_services/ImuValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuValue-response>)))
  "Returns md5sum for a message object of type '<ImuValue-response>"
  "d594bb3c4eeaf0325c0b0e4feeca4c15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuValue-response)))
  "Returns md5sum for a message object of type 'ImuValue-response"
  "d594bb3c4eeaf0325c0b0e4feeca4c15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuValue-response>)))
  "Returns full string definition for message of type '<ImuValue-response>"
  (cl:format cl:nil "float64 current_x_orientation_s~%float64 current_y_orientation_s~%float64 current_z_orientation_s~%float64 current_w_orientation_s~%float64 current_x_angular_velocity_s~%float64 current_y_angular_velocity_s~%float64 current_z_angular_velocity_s~%float64 current_x_linear_acceleration_s~%float64 current_y_linear_acceleration_s~%float64 current_z_linear_acceleration_s~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuValue-response)))
  "Returns full string definition for message of type 'ImuValue-response"
  (cl:format cl:nil "float64 current_x_orientation_s~%float64 current_y_orientation_s~%float64 current_z_orientation_s~%float64 current_w_orientation_s~%float64 current_x_angular_velocity_s~%float64 current_y_angular_velocity_s~%float64 current_z_angular_velocity_s~%float64 current_x_linear_acceleration_s~%float64 current_y_linear_acceleration_s~%float64 current_z_linear_acceleration_s~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuValue-response>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuValue-response
    (cl:cons ':current_x_orientation_s (current_x_orientation_s msg))
    (cl:cons ':current_y_orientation_s (current_y_orientation_s msg))
    (cl:cons ':current_z_orientation_s (current_z_orientation_s msg))
    (cl:cons ':current_w_orientation_s (current_w_orientation_s msg))
    (cl:cons ':current_x_angular_velocity_s (current_x_angular_velocity_s msg))
    (cl:cons ':current_y_angular_velocity_s (current_y_angular_velocity_s msg))
    (cl:cons ':current_z_angular_velocity_s (current_z_angular_velocity_s msg))
    (cl:cons ':current_x_linear_acceleration_s (current_x_linear_acceleration_s msg))
    (cl:cons ':current_y_linear_acceleration_s (current_y_linear_acceleration_s msg))
    (cl:cons ':current_z_linear_acceleration_s (current_z_linear_acceleration_s msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImuValue)))
  'ImuValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImuValue)))
  'ImuValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuValue)))
  "Returns string type for a service object of type '<ImuValue>"
  "ros_services/ImuValue")