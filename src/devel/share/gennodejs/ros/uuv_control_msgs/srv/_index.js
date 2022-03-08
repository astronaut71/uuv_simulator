
"use strict";

let StartTrajectory = require('./StartTrajectory.js')
let SetMBSMControllerParams = require('./SetMBSMControllerParams.js')
let GoTo = require('./GoTo.js')
let ClearWaypoints = require('./ClearWaypoints.js')
let InitHelicalTrajectory = require('./InitHelicalTrajectory.js')
let SetPIDParams = require('./SetPIDParams.js')
let GetWaypoints = require('./GetWaypoints.js')
let GetPIDParams = require('./GetPIDParams.js')
let GetMBSMControllerParams = require('./GetMBSMControllerParams.js')
let InitWaypointSet = require('./InitWaypointSet.js')
let SwitchToAutomatic = require('./SwitchToAutomatic.js')
let GetSMControllerParams = require('./GetSMControllerParams.js')
let GoToIncremental = require('./GoToIncremental.js')
let SwitchToManual = require('./SwitchToManual.js')
let InitCircularTrajectory = require('./InitCircularTrajectory.js')
let SetSMControllerParams = require('./SetSMControllerParams.js')
let AddWaypoint = require('./AddWaypoint.js')
let ResetController = require('./ResetController.js')
let IsRunningTrajectory = require('./IsRunningTrajectory.js')
let InitRectTrajectory = require('./InitRectTrajectory.js')
let Hold = require('./Hold.js')
let InitWaypointsFromFile = require('./InitWaypointsFromFile.js')

module.exports = {
  StartTrajectory: StartTrajectory,
  SetMBSMControllerParams: SetMBSMControllerParams,
  GoTo: GoTo,
  ClearWaypoints: ClearWaypoints,
  InitHelicalTrajectory: InitHelicalTrajectory,
  SetPIDParams: SetPIDParams,
  GetWaypoints: GetWaypoints,
  GetPIDParams: GetPIDParams,
  GetMBSMControllerParams: GetMBSMControllerParams,
  InitWaypointSet: InitWaypointSet,
  SwitchToAutomatic: SwitchToAutomatic,
  GetSMControllerParams: GetSMControllerParams,
  GoToIncremental: GoToIncremental,
  SwitchToManual: SwitchToManual,
  InitCircularTrajectory: InitCircularTrajectory,
  SetSMControllerParams: SetSMControllerParams,
  AddWaypoint: AddWaypoint,
  ResetController: ResetController,
  IsRunningTrajectory: IsRunningTrajectory,
  InitRectTrajectory: InitRectTrajectory,
  Hold: Hold,
  InitWaypointsFromFile: InitWaypointsFromFile,
};
