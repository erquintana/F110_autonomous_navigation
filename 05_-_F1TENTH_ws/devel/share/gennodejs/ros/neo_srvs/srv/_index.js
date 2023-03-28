
"use strict";

let RelayBoardUnSetEMStop = require('./RelayBoardUnSetEMStop.js')
let RelayBoardSetLCDMsg = require('./RelayBoardSetLCDMsg.js')
let RelayBoardSetEMStop = require('./RelayBoardSetEMStop.js')
let LockPlatform = require('./LockPlatform.js')
let ActivateMotors = require('./ActivateMotors.js')
let IOBoardSetDigOut = require('./IOBoardSetDigOut.js')
let RelayBoardSetRelay = require('./RelayBoardSetRelay.js')
let ResetOmniWheels = require('./ResetOmniWheels.js')
let UnlockPlatform = require('./UnlockPlatform.js')

module.exports = {
  RelayBoardUnSetEMStop: RelayBoardUnSetEMStop,
  RelayBoardSetLCDMsg: RelayBoardSetLCDMsg,
  RelayBoardSetEMStop: RelayBoardSetEMStop,
  LockPlatform: LockPlatform,
  ActivateMotors: ActivateMotors,
  IOBoardSetDigOut: IOBoardSetDigOut,
  RelayBoardSetRelay: RelayBoardSetRelay,
  ResetOmniWheels: ResetOmniWheels,
  UnlockPlatform: UnlockPlatform,
};
