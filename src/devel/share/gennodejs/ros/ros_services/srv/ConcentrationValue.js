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

class ConcentrationValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_concentration_c = null;
    }
    else {
      if (initObj.hasOwnProperty('current_concentration_c')) {
        this.current_concentration_c = initObj.current_concentration_c
      }
      else {
        this.current_concentration_c = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConcentrationValueRequest
    // Serialize message field [current_concentration_c]
    bufferOffset = _serializer.float64(obj.current_concentration_c, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConcentrationValueRequest
    let len;
    let data = new ConcentrationValueRequest(null);
    // Deserialize message field [current_concentration_c]
    data.current_concentration_c = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/ConcentrationValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b359ca613257eee99e18b9299b68b3d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 current_concentration_c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConcentrationValueRequest(null);
    if (msg.current_concentration_c !== undefined) {
      resolved.current_concentration_c = msg.current_concentration_c;
    }
    else {
      resolved.current_concentration_c = 0.0
    }

    return resolved;
    }
};

class ConcentrationValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_concentration_s = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('current_concentration_s')) {
        this.current_concentration_s = initObj.current_concentration_s
      }
      else {
        this.current_concentration_s = 0.0;
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
    // Serializes a message object of type ConcentrationValueResponse
    // Serialize message field [current_concentration_s]
    bufferOffset = _serializer.float64(obj.current_concentration_s, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConcentrationValueResponse
    let len;
    let data = new ConcentrationValueResponse(null);
    // Deserialize message field [current_concentration_s]
    data.current_concentration_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_services/ConcentrationValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8576fdc4ee832da33d85d38827f6eccd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 current_concentration_s
    bool success
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConcentrationValueResponse(null);
    if (msg.current_concentration_s !== undefined) {
      resolved.current_concentration_s = msg.current_concentration_s;
    }
    else {
      resolved.current_concentration_s = 0.0
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
  Request: ConcentrationValueRequest,
  Response: ConcentrationValueResponse,
  md5sum() { return '8333b5c9fbed73738e837cc4d210323f'; },
  datatype() { return 'ros_services/ConcentrationValue'; }
};
