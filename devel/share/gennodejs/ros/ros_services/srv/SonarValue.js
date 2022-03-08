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

class SonarValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_angle_min_c = null;
      this.current_angle_max_c = null;
      this.current_angle_increment_c = null;
      this.current_time_increment_c = null;
      this.current_scan_time_c = null;
      this.current_range_min_c = null;
      this.current_range_max_c = null;
    }
    else {
      if (initObj.hasOwnProperty('current_angle_min_c')) {
        this.current_angle_min_c = initObj.current_angle_min_c
      }
      else {
        this.current_angle_min_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_angle_max_c')) {
        this.current_angle_max_c = initObj.current_angle_max_c
      }
      else {
        this.current_angle_max_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_angle_increment_c')) {
        this.current_angle_increment_c = initObj.current_angle_increment_c
      }
      else {
        this.current_angle_increment_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_time_increment_c')) {
        this.current_time_increment_c = initObj.current_time_increment_c
      }
      else {
        this.current_time_increment_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_scan_time_c')) {
        this.current_scan_time_c = initObj.current_scan_time_c
      }
      else {
        this.current_scan_time_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_range_min_c')) {
        this.current_range_min_c = initObj.current_range_min_c
      }
      else {
        this.current_range_min_c = 0.0;
      }
      if (initObj.hasOwnProperty('current_range_max_c')) {
        this.current_range_max_c = initObj.current_range_max_c
      }
      else {
        this.current_range_max_c = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarValueRequest
    // Serialize message field [current_angle_min_c]
    bufferOffset = _serializer.float32(obj.current_angle_min_c, buffer, bufferOffset);
    // Serialize message field [current_angle_max_c]
    bufferOffset = _serializer.float32(obj.current_angle_max_c, buffer, bufferOffset);
    // Serialize message field [current_angle_increment_c]
    bufferOffset = _serializer.float32(obj.current_angle_increment_c, buffer, bufferOffset);
    // Serialize message field [current_time_increment_c]
    bufferOffset = _serializer.float32(obj.current_time_increment_c, buffer, bufferOffset);
    // Serialize message field [current_scan_time_c]
    bufferOffset = _serializer.float32(obj.current_scan_time_c, buffer, bufferOffset);
    // Serialize message field [current_range_min_c]
    bufferOffset = _serializer.float32(obj.current_range_min_c, buffer, bufferOffset);
    // Serialize message field [current_range_max_c]
    bufferOffset = _serializer.float32(obj.current_range_max_c, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarValueRequest
    let len;
    let data = new SonarValueRequest(null);
    // Deserialize message field [current_angle_min_c]
    data.current_angle_min_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angle_max_c]
    data.current_angle_max_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angle_increment_c]
    data.current_angle_increment_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_time_increment_c]
    data.current_time_increment_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_scan_time_c]
    data.current_scan_time_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_range_min_c]
    data.current_range_min_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_range_max_c]
    data.current_range_max_c = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/SonarValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '172a968124eb1818322b971abb516fef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_angle_min_c
    float32 current_angle_max_c
    float32 current_angle_increment_c
    float32 current_time_increment_c
    float32 current_scan_time_c
    float32 current_range_min_c
    float32 current_range_max_c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarValueRequest(null);
    if (msg.current_angle_min_c !== undefined) {
      resolved.current_angle_min_c = msg.current_angle_min_c;
    }
    else {
      resolved.current_angle_min_c = 0.0
    }

    if (msg.current_angle_max_c !== undefined) {
      resolved.current_angle_max_c = msg.current_angle_max_c;
    }
    else {
      resolved.current_angle_max_c = 0.0
    }

    if (msg.current_angle_increment_c !== undefined) {
      resolved.current_angle_increment_c = msg.current_angle_increment_c;
    }
    else {
      resolved.current_angle_increment_c = 0.0
    }

    if (msg.current_time_increment_c !== undefined) {
      resolved.current_time_increment_c = msg.current_time_increment_c;
    }
    else {
      resolved.current_time_increment_c = 0.0
    }

    if (msg.current_scan_time_c !== undefined) {
      resolved.current_scan_time_c = msg.current_scan_time_c;
    }
    else {
      resolved.current_scan_time_c = 0.0
    }

    if (msg.current_range_min_c !== undefined) {
      resolved.current_range_min_c = msg.current_range_min_c;
    }
    else {
      resolved.current_range_min_c = 0.0
    }

    if (msg.current_range_max_c !== undefined) {
      resolved.current_range_max_c = msg.current_range_max_c;
    }
    else {
      resolved.current_range_max_c = 0.0
    }

    return resolved;
    }
};

class SonarValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_angle_min_s = null;
      this.current_angle_max_s = null;
      this.current_angle_increment_s = null;
      this.current_time_increment_s = null;
      this.current_scan_time_s = null;
      this.current_range_min_s = null;
      this.current_range_max_s = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('current_angle_min_s')) {
        this.current_angle_min_s = initObj.current_angle_min_s
      }
      else {
        this.current_angle_min_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_angle_max_s')) {
        this.current_angle_max_s = initObj.current_angle_max_s
      }
      else {
        this.current_angle_max_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_angle_increment_s')) {
        this.current_angle_increment_s = initObj.current_angle_increment_s
      }
      else {
        this.current_angle_increment_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_time_increment_s')) {
        this.current_time_increment_s = initObj.current_time_increment_s
      }
      else {
        this.current_time_increment_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_scan_time_s')) {
        this.current_scan_time_s = initObj.current_scan_time_s
      }
      else {
        this.current_scan_time_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_range_min_s')) {
        this.current_range_min_s = initObj.current_range_min_s
      }
      else {
        this.current_range_min_s = 0.0;
      }
      if (initObj.hasOwnProperty('current_range_max_s')) {
        this.current_range_max_s = initObj.current_range_max_s
      }
      else {
        this.current_range_max_s = 0.0;
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
    // Serializes a message object of type SonarValueResponse
    // Serialize message field [current_angle_min_s]
    bufferOffset = _serializer.float32(obj.current_angle_min_s, buffer, bufferOffset);
    // Serialize message field [current_angle_max_s]
    bufferOffset = _serializer.float32(obj.current_angle_max_s, buffer, bufferOffset);
    // Serialize message field [current_angle_increment_s]
    bufferOffset = _serializer.float32(obj.current_angle_increment_s, buffer, bufferOffset);
    // Serialize message field [current_time_increment_s]
    bufferOffset = _serializer.float32(obj.current_time_increment_s, buffer, bufferOffset);
    // Serialize message field [current_scan_time_s]
    bufferOffset = _serializer.float32(obj.current_scan_time_s, buffer, bufferOffset);
    // Serialize message field [current_range_min_s]
    bufferOffset = _serializer.float32(obj.current_range_min_s, buffer, bufferOffset);
    // Serialize message field [current_range_max_s]
    bufferOffset = _serializer.float32(obj.current_range_max_s, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarValueResponse
    let len;
    let data = new SonarValueResponse(null);
    // Deserialize message field [current_angle_min_s]
    data.current_angle_min_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angle_max_s]
    data.current_angle_max_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angle_increment_s]
    data.current_angle_increment_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_time_increment_s]
    data.current_time_increment_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_scan_time_s]
    data.current_scan_time_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_range_min_s]
    data.current_range_min_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_range_max_s]
    data.current_range_max_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/SonarValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9dec25f4e12492855bbfccd77fc79e87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_angle_min_s
    float32 current_angle_max_s
    float32 current_angle_increment_s
    float32 current_time_increment_s
    float32 current_scan_time_s
    float32 current_range_min_s
    float32 current_range_max_s
    bool success
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarValueResponse(null);
    if (msg.current_angle_min_s !== undefined) {
      resolved.current_angle_min_s = msg.current_angle_min_s;
    }
    else {
      resolved.current_angle_min_s = 0.0
    }

    if (msg.current_angle_max_s !== undefined) {
      resolved.current_angle_max_s = msg.current_angle_max_s;
    }
    else {
      resolved.current_angle_max_s = 0.0
    }

    if (msg.current_angle_increment_s !== undefined) {
      resolved.current_angle_increment_s = msg.current_angle_increment_s;
    }
    else {
      resolved.current_angle_increment_s = 0.0
    }

    if (msg.current_time_increment_s !== undefined) {
      resolved.current_time_increment_s = msg.current_time_increment_s;
    }
    else {
      resolved.current_time_increment_s = 0.0
    }

    if (msg.current_scan_time_s !== undefined) {
      resolved.current_scan_time_s = msg.current_scan_time_s;
    }
    else {
      resolved.current_scan_time_s = 0.0
    }

    if (msg.current_range_min_s !== undefined) {
      resolved.current_range_min_s = msg.current_range_min_s;
    }
    else {
      resolved.current_range_min_s = 0.0
    }

    if (msg.current_range_max_s !== undefined) {
      resolved.current_range_max_s = msg.current_range_max_s;
    }
    else {
      resolved.current_range_max_s = 0.0
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
  Request: SonarValueRequest,
  Response: SonarValueResponse,
  md5sum() { return '531b870d85b27f9cb775cebf182532b1'; },
  datatype() { return 'ros_services/SonarValue'; }
};
