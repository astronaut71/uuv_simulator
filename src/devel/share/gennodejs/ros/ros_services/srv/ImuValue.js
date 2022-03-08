// Auto-generated. Do not edit!

// (in-package ros_services.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ImuValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_x_orientation_c = null;
      this.current_y_orientation_c = null;
      this.current_z_orientation_c = null;
      this.current_w_orientation_c = null;
      this.current_x_angular_velocity_c = null;
      this.current_y_angular_velocity_c = null;
      this.current_z_angular_velocity_c = null;
      this.current_x_linear_acceleration_c = null;
      this.current_y_linear_acceleration_c = null;
      this.current_z_linear_acceleration_c = null;
    }
    else {
      if (initObj.hasOwnProperty('current_x_orientation_c')) {
        this.current_x_orientation_c = initObj.current_x_orientation_c
      }
      else {
        this.current_x_orientation_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_y_orientation_c')) {
        this.current_y_orientation_c = initObj.current_y_orientation_c
      }
      else {
        this.current_y_orientation_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_z_orientation_c')) {
        this.current_z_orientation_c = initObj.current_z_orientation_c
      }
      else {
        this.current_z_orientation_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_w_orientation_c')) {
        this.current_w_orientation_c = initObj.current_w_orientation_c
      }
      else {
        this.current_w_orientation_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_x_angular_velocity_c')) {
        this.current_x_angular_velocity_c = initObj.current_x_angular_velocity_c
      }
      else {
        this.current_x_angular_velocity_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_y_angular_velocity_c')) {
        this.current_y_angular_velocity_c = initObj.current_y_angular_velocity_c
      }
      else {
        this.current_y_angular_velocity_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_z_angular_velocity_c')) {
        this.current_z_angular_velocity_c = initObj.current_z_angular_velocity_c
      }
      else {
        this.current_z_angular_velocity_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_x_linear_acceleration_c')) {
        this.current_x_linear_acceleration_c = initObj.current_x_linear_acceleration_c
      }
      else {
        this.current_x_linear_acceleration_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_y_linear_acceleration_c')) {
        this.current_y_linear_acceleration_c = initObj.current_y_linear_acceleration_c
      }
      else {
        this.current_y_linear_acceleration_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_z_linear_acceleration_c')) {
        this.current_z_linear_acceleration_c = initObj.current_z_linear_acceleration_c
      }
      else {
        this.current_z_linear_acceleration_c = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuValueRequest
    // Serialize message field [current_x_orientation_c]
    bufferOffset = _serializer.float64(obj.current_x_orientation_c, buffer, bufferOffset);
    // Serialize message field [current_y_orientation_c]
    bufferOffset = _serializer.float64(obj.current_y_orientation_c, buffer, bufferOffset);
    // Serialize message field [current_z_orientation_c]
    bufferOffset = _serializer.float64(obj.current_z_orientation_c, buffer, bufferOffset);
    // Serialize message field [current_w_orientation_c]
    bufferOffset = _serializer.float64(obj.current_w_orientation_c, buffer, bufferOffset);
    // Serialize message field [current_x_angular_velocity_c]
    bufferOffset = _serializer.float64(obj.current_x_angular_velocity_c, buffer, bufferOffset);
    // Serialize message field [current_y_angular_velocity_c]
    bufferOffset = _serializer.float64(obj.current_y_angular_velocity_c, buffer, bufferOffset);
    // Serialize message field [current_z_angular_velocity_c]
    bufferOffset = _serializer.float64(obj.current_z_angular_velocity_c, buffer, bufferOffset);
    // Serialize message field [current_x_linear_acceleration_c]
    bufferOffset = _serializer.float64(obj.current_x_linear_acceleration_c, buffer, bufferOffset);
    // Serialize message field [current_y_linear_acceleration_c]
    bufferOffset = _serializer.float64(obj.current_y_linear_acceleration_c, buffer, bufferOffset);
    // Serialize message field [current_z_linear_acceleration_c]
    bufferOffset = _serializer.float64(obj.current_z_linear_acceleration_c, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuValueRequest
    let len;
    let data = new ImuValueRequest(null);
    // Deserialize message field [current_x_orientation_c]
    data.current_x_orientation_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_y_orientation_c]
    data.current_y_orientation_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_z_orientation_c]
    data.current_z_orientation_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_w_orientation_c]
    data.current_w_orientation_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_x_angular_velocity_c]
    data.current_x_angular_velocity_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_y_angular_velocity_c]
    data.current_y_angular_velocity_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_z_angular_velocity_c]
    data.current_z_angular_velocity_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_x_linear_acceleration_c]
    data.current_x_linear_acceleration_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_y_linear_acceleration_c]
    data.current_y_linear_acceleration_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_z_linear_acceleration_c]
    data.current_z_linear_acceleration_c = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/ImuValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba80b4a22f2f77611473d2d4f470fb77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 current_x_orientation_c
    float64 current_y_orientation_c
    float64 current_z_orientation_c
    float64 current_w_orientation_c
    float64 current_x_angular_velocity_c
    float64 current_y_angular_velocity_c
    float64 current_z_angular_velocity_c
    float64 current_x_linear_acceleration_c
    float64 current_y_linear_acceleration_c
    float64 current_z_linear_acceleration_c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImuValueRequest(null);
    if (msg.current_x_orientation_c !== undefined) {
      resolved.current_x_orientation_c = msg.current_x_orientation_c;
    }
    else {
      resolved.current_x_orientation_c = 0.0
    }

    if (msg.current_y_orientation_c !== undefined) {
      resolved.current_y_orientation_c = msg.current_y_orientation_c;
    }
    else {
      resolved.current_y_orientation_c = 0.0
    }

    if (msg.current_z_orientation_c !== undefined) {
      resolved.current_z_orientation_c = msg.current_z_orientation_c;
    }
    else {
      resolved.current_z_orientation_c = 0.0
    }

    if (msg.current_w_orientation_c !== undefined) {
      resolved.current_w_orientation_c = msg.current_w_orientation_c;
    }
    else {
      resolved.current_w_orientation_c = 0.0
    }

    if (msg.current_x_angular_velocity_c !== undefined) {
      resolved.current_x_angular_velocity_c = msg.current_x_angular_velocity_c;
    }
    else {
      resolved.current_x_angular_velocity_c = 0.0
    }

    if (msg.current_y_angular_velocity_c !== undefined) {
      resolved.current_y_angular_velocity_c = msg.current_y_angular_velocity_c;
    }
    else {
      resolved.current_y_angular_velocity_c = 0.0
    }

    if (msg.current_z_angular_velocity_c !== undefined) {
      resolved.current_z_angular_velocity_c = msg.current_z_angular_velocity_c;
    }
    else {
      resolved.current_z_angular_velocity_c = 0.0
    }

    if (msg.current_x_linear_acceleration_c !== undefined) {
      resolved.current_x_linear_acceleration_c = msg.current_x_linear_acceleration_c;
    }
    else {
      resolved.current_x_linear_acceleration_c = 0.0
    }

    if (msg.current_y_linear_acceleration_c !== undefined) {
      resolved.current_y_linear_acceleration_c = msg.current_y_linear_acceleration_c;
    }
    else {
      resolved.current_y_linear_acceleration_c = 0.0
    }

    if (msg.current_z_linear_acceleration_c !== undefined) {
      resolved.current_z_linear_acceleration_c = msg.current_z_linear_acceleration_c;
    }
    else {
      resolved.current_z_linear_acceleration_c = 0.0
    }

    return resolved;
    }
};

class ImuValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_x_orientation_s = null;
      this.current_y_orientation_s = null;
      this.current_z_orientation_s = null;
      this.current_w_orientation_s = null;
      this.current_x_angular_velocity_s = null;
      this.current_y_angular_velocity_s = null;
      this.current_z_angular_velocity_s = null;
      this.current_x_linear_acceleration_s = null;
      this.current_y_linear_acceleration_s = null;
      this.current_z_linear_acceleration_s = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('current_x_orientation_s')) {
        this.current_x_orientation_s = initObj.current_x_orientation_s
      }
      else {
        this.current_x_orientation_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_y_orientation_s')) {
        this.current_y_orientation_s = initObj.current_y_orientation_s
      }
      else {
        this.current_y_orientation_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_z_orientation_s')) {
        this.current_z_orientation_s = initObj.current_z_orientation_s
      }
      else {
        this.current_z_orientation_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_w_orientation_s')) {
        this.current_w_orientation_s = initObj.current_w_orientation_s
      }
      else {
        this.current_w_orientation_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_x_angular_velocity_s')) {
        this.current_x_angular_velocity_s = initObj.current_x_angular_velocity_s
      }
      else {
        this.current_x_angular_velocity_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_y_angular_velocity_s')) {
        this.current_y_angular_velocity_s = initObj.current_y_angular_velocity_s
      }
      else {
        this.current_y_angular_velocity_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_z_angular_velocity_s')) {
        this.current_z_angular_velocity_s = initObj.current_z_angular_velocity_s
      }
      else {
        this.current_z_angular_velocity_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_x_linear_acceleration_s')) {
        this.current_x_linear_acceleration_s = initObj.current_x_linear_acceleration_s
      }
      else {
        this.current_x_linear_acceleration_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_y_linear_acceleration_s')) {
        this.current_y_linear_acceleration_s = initObj.current_y_linear_acceleration_s
      }
      else {
        this.current_y_linear_acceleration_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_z_linear_acceleration_s')) {
        this.current_z_linear_acceleration_s = initObj.current_z_linear_acceleration_s
      }
      else {
        this.current_z_linear_acceleration_s = 0.0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuValueResponse
    // Serialize message field [current_x_orientation_s]
    bufferOffset = _serializer.float64(obj.current_x_orientation_s, buffer, bufferOffset);
    // Serialize message field [current_y_orientation_s]
    bufferOffset = _serializer.float64(obj.current_y_orientation_s, buffer, bufferOffset);
    // Serialize message field [current_z_orientation_s]
    bufferOffset = _serializer.float64(obj.current_z_orientation_s, buffer, bufferOffset);
    // Serialize message field [current_w_orientation_s]
    bufferOffset = _serializer.float64(obj.current_w_orientation_s, buffer, bufferOffset);
    // Serialize message field [current_x_angular_velocity_s]
    bufferOffset = _serializer.float64(obj.current_x_angular_velocity_s, buffer, bufferOffset);
    // Serialize message field [current_y_angular_velocity_s]
    bufferOffset = _serializer.float64(obj.current_y_angular_velocity_s, buffer, bufferOffset);
    // Serialize message field [current_z_angular_velocity_s]
    bufferOffset = _serializer.float64(obj.current_z_angular_velocity_s, buffer, bufferOffset);
    // Serialize message field [current_x_linear_acceleration_s]
    bufferOffset = _serializer.float64(obj.current_x_linear_acceleration_s, buffer, bufferOffset);
    // Serialize message field [current_y_linear_acceleration_s]
    bufferOffset = _serializer.float64(obj.current_y_linear_acceleration_s, buffer, bufferOffset);
    // Serialize message field [current_z_linear_acceleration_s]
    bufferOffset = _serializer.float64(obj.current_z_linear_acceleration_s, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuValueResponse
    let len;
    let data = new ImuValueResponse(null);
    // Deserialize message field [current_x_orientation_s]
    data.current_x_orientation_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_y_orientation_s]
    data.current_y_orientation_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_z_orientation_s]
    data.current_z_orientation_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_w_orientation_s]
    data.current_w_orientation_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_x_angular_velocity_s]
    data.current_x_angular_velocity_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_y_angular_velocity_s]
    data.current_y_angular_velocity_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_z_angular_velocity_s]
    data.current_z_angular_velocity_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_x_linear_acceleration_s]
    data.current_x_linear_acceleration_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_y_linear_acceleration_s]
    data.current_y_linear_acceleration_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_z_linear_acceleration_s]
    data.current_z_linear_acceleration_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 81;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/ImuValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf57795100e7d925db9b4cb90363b047';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImuValueResponse(null);
    if (msg.current_x_orientation_s !== undefined) {
      resolved.current_x_orientation_s = msg.current_x_orientation_s;
    }
    else {
      resolved.current_x_orientation_s = 0.0
    }

    if (msg.current_y_orientation_s !== undefined) {
      resolved.current_y_orientation_s = msg.current_y_orientation_s;
    }
    else {
      resolved.current_y_orientation_s = 0.0
    }

    if (msg.current_z_orientation_s !== undefined) {
      resolved.current_z_orientation_s = msg.current_z_orientation_s;
    }
    else {
      resolved.current_z_orientation_s = 0.0
    }

    if (msg.current_w_orientation_s !== undefined) {
      resolved.current_w_orientation_s = msg.current_w_orientation_s;
    }
    else {
      resolved.current_w_orientation_s = 0.0
    }

    if (msg.current_x_angular_velocity_s !== undefined) {
      resolved.current_x_angular_velocity_s = msg.current_x_angular_velocity_s;
    }
    else {
      resolved.current_x_angular_velocity_s = 0.0
    }

    if (msg.current_y_angular_velocity_s !== undefined) {
      resolved.current_y_angular_velocity_s = msg.current_y_angular_velocity_s;
    }
    else {
      resolved.current_y_angular_velocity_s = 0.0
    }

    if (msg.current_z_angular_velocity_s !== undefined) {
      resolved.current_z_angular_velocity_s = msg.current_z_angular_velocity_s;
    }
    else {
      resolved.current_z_angular_velocity_s = 0.0
    }

    if (msg.current_x_linear_acceleration_s !== undefined) {
      resolved.current_x_linear_acceleration_s = msg.current_x_linear_acceleration_s;
    }
    else {
      resolved.current_x_linear_acceleration_s = 0.0
    }

    if (msg.current_y_linear_acceleration_s !== undefined) {
      resolved.current_y_linear_acceleration_s = msg.current_y_linear_acceleration_s;
    }
    else {
      resolved.current_y_linear_acceleration_s = 0.0
    }

    if (msg.current_z_linear_acceleration_s !== undefined) {
      resolved.current_z_linear_acceleration_s = msg.current_z_linear_acceleration_s;
    }
    else {
      resolved.current_z_linear_acceleration_s = 0.0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ImuValueRequest,
  Response: ImuValueResponse,
  md5sum() { return 'd594bb3c4eeaf0325c0b0e4feeca4c15'; },
  datatype() { return 'ros_services/ImuValue'; }
};
