
"use strict";

let GetCurrentModel = require('./GetCurrentModel.js')
let TransformToSphericalCoord = require('./TransformToSphericalCoord.js')
let SetOriginSphericalCoord = require('./SetOriginSphericalCoord.js')
let GetOriginSphericalCoord = require('./GetOriginSphericalCoord.js')
let SetCurrentVelocity = require('./SetCurrentVelocity.js')
let TransformFromSphericalCoord = require('./TransformFromSphericalCoord.js')
let SetCurrentModel = require('./SetCurrentModel.js')
let SetCurrentDirection = require('./SetCurrentDirection.js')

module.exports = {
  GetCurrentModel: GetCurrentModel,
  TransformToSphericalCoord: TransformToSphericalCoord,
  SetOriginSphericalCoord: SetOriginSphericalCoord,
  GetOriginSphericalCoord: GetOriginSphericalCoord,
  SetCurrentVelocity: SetCurrentVelocity,
  TransformFromSphericalCoord: TransformFromSphericalCoord,
  SetCurrentModel: SetCurrentModel,
  SetCurrentDirection: SetCurrentDirection,
};
