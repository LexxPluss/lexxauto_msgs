## **lexxauto_msgs**

### 役割

- LexxAuto向けに定義するカスタムメッセージの集約

### メッセージ

- CarryingStatus
  - 運んでいる台車のタイプ、台車によってどこが隠されるか
- CmdVelControllerDebug.msg
  - Contains debug information for cmd_vel sent to diff_drive_controller
- CmdVelControllerSideState.msg
  - Contains cmd_vel information separated for left and right motors
- Dict
  - キーと値のセット、シーン送信に使用する
- LightingRequest
  - Ledの点灯要求に使用する
- execution_scene
  - AGVシーンの実行指示
- goal_pose_list_message
  - ゴール位置の一覧
- MagnetSensor
  - リニアアクチュエータ位置取り目的のマグネットセンサ値
- Mode
  - 実行モードの指定
- OrderInfo
  - 実行中のオーダ情報
    - string status ( 実行状態 )
      - wait_assign
      - assigning
      - done
    - string current_mode_name
      - 現在のモード名。AMRの場合は目的地名、AGVの場合はシーン名。
      - オーダー未割り当ての場合は""
    - Int16 total_modes
      - オーダ全体のモード数
      - オーダー未割り当ての場合は0
    - Int16 done_modes
      - 実行が完了したモード数
      - オーダー未割り当ての場合は0
- safety_func
  - セーフティの作動指示
- safety_status
  - セーフティの作動状態
- ultrasound
  - 超音波センサで読んだ値
- MaxVelocity
  - セーフティ方向毎の最高速度
- RobotState
  - robotの状態量（位置・姿勢・速度）
- TorqueSimInfo
  - TorqueSimulationパッケージで用いるデバッグメッセージ
- WheelState
  - ros_controlで用いるwheel_stateの状態：位置・速度・エフォートのros msg
- EmergencyStopRequest
  - 緊急停止要求に使用する

### サービス

- GetOccupancy
  - 駐車場などのスペースの状態問い合わせ
- GoButton
  - 作業員がGo(次行ってよし)を要求する
- MakeOrder
  - AMR/AGVの指示組み合わせ作動要求
- ReloadMap
  - マップファイルの再読み込み要求
- ReloadScene
  - シーンファイルの再読み込み要求
- ReloadVectorMap
  - ベクタマップの再読み込み要求
- Sounds
  - 音源の再生要求
