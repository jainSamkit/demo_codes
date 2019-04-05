// Auto-generated. Do not edit!

// (in-package navigation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GlobalSetpointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat_x1 = null;
      this.lng_y1 = null;
      this.lat_x2 = null;
      this.lng_y2 = null;
    }
    else {
      if (initObj.hasOwnProperty('lat_x1')) {
        this.lat_x1 = initObj.lat_x1
      }
      else {
        this.lat_x1 = 0.0;
      }
      if (initObj.hasOwnProperty('lng_y1')) {
        this.lng_y1 = initObj.lng_y1
      }
      else {
        this.lng_y1 = 0.0;
      }
      if (initObj.hasOwnProperty('lat_x2')) {
        this.lat_x2 = initObj.lat_x2
      }
      else {
        this.lat_x2 = 0.0;
      }
      if (initObj.hasOwnProperty('lng_y2')) {
        this.lng_y2 = initObj.lng_y2
      }
      else {
        this.lng_y2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalSetpointRequest
    // Serialize message field [lat_x1]
    bufferOffset = _serializer.float64(obj.lat_x1, buffer, bufferOffset);
    // Serialize message field [lng_y1]
    bufferOffset = _serializer.float64(obj.lng_y1, buffer, bufferOffset);
    // Serialize message field [lat_x2]
    bufferOffset = _serializer.float64(obj.lat_x2, buffer, bufferOffset);
    // Serialize message field [lng_y2]
    bufferOffset = _serializer.float64(obj.lng_y2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalSetpointRequest
    let len;
    let data = new GlobalSetpointRequest(null);
    // Deserialize message field [lat_x1]
    data.lat_x1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lng_y1]
    data.lng_y1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_x2]
    data.lat_x2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lng_y2]
    data.lng_y2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation/GlobalSetpointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddf610a10f41192f64c5125d996675da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 lat_x1
    float64 lng_y1
    float64 lat_x2
    float64 lng_y2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalSetpointRequest(null);
    if (msg.lat_x1 !== undefined) {
      resolved.lat_x1 = msg.lat_x1;
    }
    else {
      resolved.lat_x1 = 0.0
    }

    if (msg.lng_y1 !== undefined) {
      resolved.lng_y1 = msg.lng_y1;
    }
    else {
      resolved.lng_y1 = 0.0
    }

    if (msg.lat_x2 !== undefined) {
      resolved.lat_x2 = msg.lat_x2;
    }
    else {
      resolved.lat_x2 = 0.0
    }

    if (msg.lng_y2 !== undefined) {
      resolved.lng_y2 = msg.lng_y2;
    }
    else {
      resolved.lng_y2 = 0.0
    }

    return resolved;
    }
};

class GlobalSetpointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res = null;
    }
    else {
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalSetpointResponse
    // Serialize message field [res]
    bufferOffset = _serializer.string(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalSetpointResponse
    let len;
    let data = new GlobalSetpointResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.res.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation/GlobalSetpointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53af918a2a4a2a182c184142fff49b0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string res
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalSetpointResponse(null);
    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GlobalSetpointRequest,
  Response: GlobalSetpointResponse,
  md5sum() { return '84e486425bbf35fea76b0e2acc4e452e'; },
  datatype() { return 'navigation/GlobalSetpoint'; }
};
