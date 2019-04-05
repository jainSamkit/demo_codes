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

class STOP_OBS_CAPTURERequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type STOP_OBS_CAPTURERequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type STOP_OBS_CAPTURERequest
    let len;
    let data = new STOP_OBS_CAPTURERequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'commander/STOP_OBS_CAPTURERequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new STOP_OBS_CAPTURERequest(null);
    return resolved;
    }
};

class STOP_OBS_CAPTUREResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obs_name = null;
      this.obs_lat = null;
      this.obs_lng = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('obs_name')) {
        this.obs_name = initObj.obs_name
      }
      else {
        this.obs_name = '';
      }
      if (initObj.hasOwnProperty('obs_lat')) {
        this.obs_lat = initObj.obs_lat
      }
      else {
        this.obs_lat = [];
      }
      if (initObj.hasOwnProperty('obs_lng')) {
        this.obs_lng = initObj.obs_lng
      }
      else {
        this.obs_lng = [];
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
    // Serializes a message object of type STOP_OBS_CAPTUREResponse
    // Serialize message field [obs_name]
    bufferOffset = _serializer.string(obj.obs_name, buffer, bufferOffset);
    // Serialize message field [obs_lat]
    bufferOffset = _arraySerializer.float64(obj.obs_lat, buffer, bufferOffset, null);
    // Serialize message field [obs_lng]
    bufferOffset = _arraySerializer.float64(obj.obs_lng, buffer, bufferOffset, null);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type STOP_OBS_CAPTUREResponse
    let len;
    let data = new STOP_OBS_CAPTUREResponse(null);
    // Deserialize message field [obs_name]
    data.obs_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obs_lat]
    data.obs_lat = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [obs_lng]
    data.obs_lng = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.obs_name.length;
    length += 8 * object.obs_lat.length;
    length += 8 * object.obs_lng.length;
    length += object.message.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'commander/STOP_OBS_CAPTUREResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40b6ce9c486fd44682f1445d56896283';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string obs_name
    float64[] obs_lat
    float64[] obs_lng
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new STOP_OBS_CAPTUREResponse(null);
    if (msg.obs_name !== undefined) {
      resolved.obs_name = msg.obs_name;
    }
    else {
      resolved.obs_name = ''
    }

    if (msg.obs_lat !== undefined) {
      resolved.obs_lat = msg.obs_lat;
    }
    else {
      resolved.obs_lat = []
    }

    if (msg.obs_lng !== undefined) {
      resolved.obs_lng = msg.obs_lng;
    }
    else {
      resolved.obs_lng = []
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
  Request: STOP_OBS_CAPTURERequest,
  Response: STOP_OBS_CAPTUREResponse,
  md5sum() { return '40b6ce9c486fd44682f1445d56896283'; },
  datatype() { return 'commander/STOP_OBS_CAPTURE'; }
};
