
"use strict";

let DELETE_OBS_CAPTURE = require('./DELETE_OBS_CAPTURE.js')
let START_OBS_CAPTURE = require('./START_OBS_CAPTURE.js')
let STOP_OBS_CAPTURE = require('./STOP_OBS_CAPTURE.js')
let SAVE_OBS_DATA = require('./SAVE_OBS_DATA.js')
let CANCEL_OBS_CAPTURE = require('./CANCEL_OBS_CAPTURE.js')
let GET_MAP_INFO = require('./GET_MAP_INFO.js')

module.exports = {
  DELETE_OBS_CAPTURE: DELETE_OBS_CAPTURE,
  START_OBS_CAPTURE: START_OBS_CAPTURE,
  STOP_OBS_CAPTURE: STOP_OBS_CAPTURE,
  SAVE_OBS_DATA: SAVE_OBS_DATA,
  CANCEL_OBS_CAPTURE: CANCEL_OBS_CAPTURE,
  GET_MAP_INFO: GET_MAP_INFO,
};