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

class PressureValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_pressure_c = null;
    }
    else {
      if (initObj.hasOwnProperty('current_pressure_c')) {
        this.current_pressure_c = initObj.current_pressure_c
      }
      else {
        this.current_pressure_c = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PressureValueRequest
    // Serialize message field [current_pressure_c]
    bufferOffset = _serializer.float64(obj.current_pressure_c, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PressureValueRequest
    let len;
    let data = new PressureValueRequest(null);
    // Deserialize message field [current_pressure_c]
    data.current_pressure_c = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/PressureValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '052020c23f0980f9b0951ce4ec778a17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 current_pressure_c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PressureValueRequest(null);
    if (msg.current_pressure_c !== undefined) {
      resolved.current_pressure_c = msg.current_pressure_c;
    }
    else {
      resolved.current_pressure_c = 0.0
    }

    return resolved;
    }
};

class PressureValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_pressure_s = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('current_pressure_s')) {
        this.current_pressure_s = initObj.current_pressure_s
      }
      else {
        this.current_pressure_s = 0.0;
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
    // Serializes a message object of type PressureValueResponse
    // Serialize message field [current_pressure_s]
    bufferOffset = _serializer.float64(obj.current_pressure_s, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PressureValueResponse
    let len;
    let data = new PressureValueResponse(null);
    // Deserialize message field [current_pressure_s]
    data.current_pressure_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/PressureValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adf14e9fc94a6102e1b6e162ec900512';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 current_pressure_s
    bool success
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PressureValueResponse(null);
    if (msg.current_pressure_s !== undefined) {
      resolved.current_pressure_s = msg.current_pressure_s;
    }
    else {
      resolved.current_pressure_s = 0.0
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
  Request: PressureValueRequest,
  Response: PressureValueResponse,
  md5sum() { return '63d5115cef5af2fe80e52603ff8267f0'; },
  datatype() { return 'ros_services/PressureValue'; }
};
