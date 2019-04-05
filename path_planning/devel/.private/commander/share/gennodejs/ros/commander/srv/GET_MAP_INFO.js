// Auto-generated. Do not edit!

// (in-package commander.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GET_MAP_INFORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.map_lat = null;
      this.map_lng = null;
      this.height_agl = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('map_lat')) {
        this.map_lat = initObj.map_lat
      }
      else {
        this.map_lat = [];
      }
      if (initObj.hasOwnProperty('map_lng')) {
        this.map_lng = initObj.map_lng
      }
      else {
        this.map_lng = [];
      }
      if (initObj.hasOwnProperty('height_agl')) {
        this.height_agl = initObj.height_agl
      }
      else {
        this.height_agl = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GET_MAP_INFORequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [map_lat]
    bufferOffset = _arraySerializer.float32(obj.map_lat, buffer, bufferOffset, null);
    // Serialize message field [map_lng]
    bufferOffset = _arraySerializer.float32(obj.map_lng, buffer, bufferOffset, null);
    // Serialize message field [height_agl]
    bufferOffset = _serializer.float32(obj.height_agl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GET_MAP_INFORequest
    let len;
    let data = new GET_MAP_INFORequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_lat]
    data.map_lat = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [map_lng]
    data.map_lng = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [height_agl]
    data.height_agl = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    length += 4 * object.map_lat.length;
    length += 4 * object.map_lng.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'commander/GET_MAP_INFORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00fba32b0a4267ac9c0edc600d5ab8e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_id
    float32[] map_lat
    float32[] map_lng
    float32 height_agl
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GET_MAP_INFORequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.map_lat !== undefined) {
      resolved.map_lat = msg.map_lat;
    }
    else {
      resolved.map_lat = []
    }

    if (msg.map_lng !== undefined) {
      resolved.map_lng = msg.map_lng;
    }
    else {
      resolved.map_lng = []
    }

    if (msg.height_agl !== undefined) {
      resolved.height_agl = msg.height_agl;
    }
    else {
      resolved.height_agl = 0.0
    }

    return resolved;
    }
};

class GET_MAP_INFOResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GET_MAP_INFOResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GET_MAP_INFOResponse
    let len;
    let data = new GET_MAP_INFOResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'commander/GET_MAP_INFOResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GET_MAP_INFOResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GET_MAP_INFORequest,
  Response: GET_MAP_INFOResponse,
  md5sum() { return '4e3b8f219e9670547e0390d1b9191aa9'; },
  datatype() { return 'commander/GET_MAP_INFO'; }
};
