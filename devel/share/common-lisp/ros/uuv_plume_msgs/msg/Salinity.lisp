; Auto-generated. Do not edit!


(cl:in-package uuv_plume_msgs-msg)


;//! \htmlinclude Salinity.msg.html

(cl:defclass <Salinity> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (geo_point
    :reader geo_point
    :initarg :geo_point
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint))
   (salinity
    :reader salinity
    :initarg :salinity
    :type cl:float
    :initform 0.0)
   (variance
    :reader variance
    :initarg :variance
    :type cl:float
    :initform 0.0)
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform ""))
)

(cl:defclass Salinity (<Salinity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Salinity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Salinity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uuv_plume_msgs-msg:<Salinity> is deprecated: use uuv_plume_msgs-msg:Salinity instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Salinity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uuv_plume_msgs-msg:header-val is deprecated.  Use uuv_plume_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Salinity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uuv_plume_msgs-msg:position-val is deprecated.  Use uuv_plume_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'geo_point-val :lambda-list '(m))
(cl:defmethod geo_point-val ((m <Salinity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uuv_plume_msgs-msg:geo_point-val is deprecated.  Use uuv_plume_msgs-msg:geo_point instead.")
  (geo_point m))

(cl:ensure-generic-function 'salinity-val :lambda-list '(m))
(cl:defmethod salinity-val ((m <Salinity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uuv_plume_msgs-msg:salinity-val is deprecated.  Use uuv_plume_msgs-msg:salinity instead.")
  (salinity m))

(cl:ensure-generic-function 'variance-val :lambda-list '(m))
(cl:defmethod variance-val ((m <Salinity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uuv_plume_msgs-msg:variance-val is deprecated.  Use uuv_plume_msgs-msg:variance instead.")
  (variance m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <Salinity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uuv_plume_msgs-msg:unit-val is deprecated.  Use uuv_plume_msgs-msg:unit instead.")
  (unit m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Salinity>)))
    "Constants for message type '<Salinity>"
  '((:PSU . "psu")
    (:PPM . "ppm")
    (:PPT . "ppt"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Salinity)))
    "Constants for message type 'Salinity"
  '((:PSU . "psu")
    (:PPM . "ppm")
    (:PPT . "ppt"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Salinity>) ostream)
  "Serializes a message object of type '<Salinity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geo_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'salinity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Salinity>) istream)
  "Deserializes a message object of type '<Salinity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geo_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'salinity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'variance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Salinity>)))
  "Returns string type for a message object of type '<Salinity>"
  "uuv_plume_msgs/Salinity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Salinity)))
  "Returns string type for a message object of type 'Salinity"
  "uuv_plume_msgs/Salinity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Salinity>)))
  "Returns md5sum for a message object of type '<Salinity>"
  "ac60fca26fda93a259ffa302a9f33351")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Salinity)))
  "Returns md5sum for a message object of type 'Salinity"
  "ac60fca26fda93a259ffa302a9f33351")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Salinity>)))
  "Returns full string definition for message of type '<Salinity>"
  (cl:format cl:nil "# Copyright (c) 2016 The UUV Simulator Authors.~%# All rights reserved.~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#     http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# Practical salinity units~%string PSU=\"psu\"~%# Parts per million~%string PPM=\"ppm\"~%# Parts per thousand~%string PPT=\"ppt\"~%~%std_msgs/Header header~%# Sensor link position~%geometry_msgs/Vector3 position~%# WGS84 coordinates~%geographic_msgs/GeoPoint geo_point~%float64 salinity~%float64 variance~%string unit~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Salinity)))
  "Returns full string definition for message of type 'Salinity"
  (cl:format cl:nil "# Copyright (c) 2016 The UUV Simulator Authors.~%# All rights reserved.~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#     http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# Practical salinity units~%string PSU=\"psu\"~%# Parts per million~%string PPM=\"ppm\"~%# Parts per thousand~%string PPT=\"ppt\"~%~%std_msgs/Header header~%# Sensor link position~%geometry_msgs/Vector3 position~%# WGS84 coordinates~%geographic_msgs/GeoPoint geo_point~%float64 salinity~%float64 variance~%string unit~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Salinity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geo_point))
     8
     8
     4 (cl:length (cl:slot-value msg 'unit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Salinity>))
  "Converts a ROS message object to a list"
  (cl:list 'Salinity
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':geo_point (geo_point msg))
    (cl:cons ':salinity (salinity msg))
    (cl:cons ':variance (variance msg))
    (cl:cons ':unit (unit msg))
))
