cmake_minimum_required(VERSION 3.0.2)
project(lexxauto_msgs)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  message_generation
  sensor_msgs
  std_msgs
)

add_message_files(
  FILES
  ActuatorRequestPosition.msg
  ActuatorStatus.msg
  agv_line_offset.msg
  AgvLine.msg
  AgvLineArray.msg
  AttachmentRotateUnitStatus.msg
  Battery.msg
  BoardTemperatures.msg
  CarryingInformation.msg
  CarryingStatus.msg
  CmdVelControllerDebug.msg
  CmdVelControllerSideState.msg
  ComeInfo.msg
  ConfigDetail.msg
  DeviceStatus.msg
  Dict.msg
  DiffDriveEffortControllerDebug.msg
  DiffDriveEffortControllerSideState.msg
  EmergencyStopRequest.msg
  ErrorCodes.msg
  Errors.msg
  execution_scene.msg
  goal_pose_list_message.msg
  GoalLink.msg
  GoalLinkArray.msg
  Imu.msg
  Led.msg
  LightingRequest.msg
  LinearActuatorControl.msg
  LinearActuatorControlArray.msg
  LinearActuatorServiceResponse.msg
  LocalizationReliability.msg
  MagnetSensor.msg
  MapArea.msg
  MapAreaArray.msg
  MapAreaAttribute.msg
  MaxVelocity.msg
  Mode.msg
  ModeInfo.msg
  MotorTorque.msg
  ObstacleInfo.msg
  OperateElevator.msg
  OdomCheckerStatus.msg
  OrderInfo.msg
  PGVLineInfo.msg
  PGVLineInfos.msg
  PoseWithId.msg
  PoseWithIdArray.msg
  PositionGuideVision.msg
  RequestCharging.msg
  RobotParameterEstimator.msg
  RobotState.msg
  safety_func.msg
  safety_status.msg
  selecting_sensors.msg
  SyncAreaFromFleet.msg
  SyncAreaToFleet.msg
  TorqueSimInfo.msg
  TowingUnitStatus.msg
  WheelState.msg
  WheelStates.msg
)

add_service_files(
  FILES
  ApplyConfig.srv
  FindRobot.srv
  GetDetectArea.srv
  GetOccupancy.srv
  GoButton.srv
  InitLinearActuator.srv
  IsValidAGVScene.srv
  LinearActuatorLocation.srv
  MakeObstacle.srv
  MakeOrder.srv
  ReloadMap.srv
  ReloadScene.srv
  ReloadVectorMap.srv
  SaveObstacle.srv
  SetIdentity.srv
  SetMapFile.srv
  Sounds.srv
)

generate_messages(
  DEPENDENCIES
  geometry_msgs
  sensor_msgs
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS
  geometry_msgs
  message_runtime
  sensor_msgs
  std_msgs
)

include_directories()

if(CATKIN_ENABLE_LINTS)
  add_custom_target(${PROJECT_NAME}_CATKIN_LINT ALL COMMAND catkin_lint --pkg ${PROJECT_NAME} -W2)
endif()

install(DIRECTORY msg srv
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
