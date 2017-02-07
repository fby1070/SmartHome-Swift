//
//  BYDataInfo.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/16.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYDataInfo: NSObject {
    
    
    
    enum BYDeviceDeviceTypeByCode : String
    {
        case BYDeviceTypeUnknow = "unknow"
        case BYDeviceTypeSmartLock =  "SmartLock"                                     //PLC485转换器
        case BYDeviceTypeFanCoilActuator = "FanCoilActuator"                               //A系列风机盘管执行器
        case BYDeviceTypeNetworkedTemperatureControl = "NetworkedTemperatureControl"                   //联网型温控器
        case BYDeviceTypePowerMonitor = "PowerMonitor"                                  //电能监控器
        case BYDeviceTypeTouchSwitch = "TouchSwitch"                                   //4按键灯控触摸面板
        case BYDeviceTypeThreeToucheSwitch = "ThreeToucheSwitch"                             //3按键灯控触摸面板
        case BYDeviceTypeTwoTouchSwitch = "TwoTouchSwitch"                                //2按键灯控触摸面板
        case BYDeviceTypeOneTouchSwitch = "OneTouchSwitch"                                //1按键灯控触摸面板
        case BYDeviceTypeCurtainTouchSwitch = "CurtainTouchSwitch"                            //4按键窗帘触摸面板
        case BYDeviceTypeSingleTrackCurtain = "SingleTrackCurtain"                           //单轨窗帘控制模块
        case BYDeviceTypeDoubleTrackCurtain = "DoubleTrackCurtain"                           //双轨窗帘控制模块
        case BYDeviceTypeGateway = "Gateway"                                      //网关
        case BYDeviceTypeMagnetometer = "Magnetometer"                                 //无线门磁
        case BYDeviceTypeAlarm = "Alarm"                                        //无线警号
        case BYDeviceTypeWifiCamera = "WifiCamera"                                   //圆球摄像头
        case BYDeviceTypeBoltCamera = "BoltCamera"                                   //枪机摄像头
        case BYDeviceTypeFourSwitchActuator = "FourSwitchActuator"                           //四路开关执行器
        case BYDeviceTypeDoubleSwitchModule = "DoubleSwitchModule"                           //2路1A开关控制模块（含机械）
        case BYDeviceTypeSwitchControlModule = "SwitchControlModule"                          //1路1A开关控制模块（含机械）
        case BYDeviceTypeLampControlOneTouchSwitch = "LampControlOneTouchSwitch"                    //1按键灯控触摸开关
        case BYDeviceTypeControlTwoTouchSwitch = "ControlTwoTouchSwitch"                        //2按键灯控触摸开关
        case BYDeviceTypeBodyInfrared433 = "BodyInfrared433"                        //433M人体红外感应器
        case BYDeviceTypeBodyInfraredPLC = "BodyInfraredPLC"                        //PLC人体红外感应器
        case BYDeviceTypeInfraredWithMicrowave = "InfraredWithMicrowave"                        //红外微波双鉴探测器
        case BYDeviceTypeSmokeDetector = "SmokeDetector"                        //烟雾报警器
        case BYDeviceTypeDangerButton = "DangerButton"                        //紧急按钮
        case BYDeviceTypeGasAlarm = "GasAlarm"                        //燃气报警器
        case BYDeviceTypeCOAlarm = "COAlarm"                        //一氧化碳报警器
        case BYDeviceTypeInDoor = "InDoor"                        //室内机
        case BYDeviceTypeLightBrightness = "LightBrightness"                        //调光控制模块
        case BYDeviceTypeLightColor = "LightColor"                        //调色控制模块
        case BYDeviceTypeInfraredForwarding = "InfraredForwarding"                        //红外转发器
        case BYDeviceTypeCenterLeakageProtector = "CenterLeakageProtector"                        //智能中心断路器
        case BYDeviceTypeLeakageProtector = "LeakageProtector"                        //智能断路器
        case BYDeviceTypeLCDTouchSwitchPanel = "LCDTouchSwitchPanel"                        //LCD触控终端
        case BYDeviceTypeHeatingcentralizedcontroller = "Heatingcentralizedcontroller"                        //地暖集中控制器
        case BYDeviceTypeHeatingtemperaturecontrolpanel = "Heatingtemperaturecontrolpanel"                        //地暖温控面板
        case BYDeviceTypeQuadStemNode = "QuadStemNode"                        //四路干接点模块
        case BYDeviceTypeSmartElectronicLock = "SmartElectronicLock"                        //智能电子锁
        case BYDeviceTypeVRVAirConditionControl = "VRVAirConditionControl"                        //VRV空调控制器（海尔海信）
        case BYDeviceTypeFourPressKeySingleFireWireTouchSwitch = "FourPressKeySingleFireWireTouchSwitch"                        //4按键单火线触摸开关
        case BYDeviceTypeThreePressKeySingleFireWireTouchSwitch = "ThreePressKeySingleFireWireTouchSwitch"                        //3按键单火线触摸开关
        case BYDeviceTypeTwoPressKeySingleFireWireTouchSwitch = "TwoPressKeySingleFireWireTouchSwitch"                        //2按键单火线触摸开关
        case BYDeviceTypeOnePressKeySingleFireWireTouchSwitch = "OnePressKeySingleFireWireTouchSwitch"                        //1按键单火线触摸开关
        
        case BYDeviceTypePLC_Sub1GConverter = "PLC_Sub1GConverter"                        //PLC-Sub1G转换器
        case BYDeviceTypeRemoteControl = "RemoteControl"                        //433遥控器
    }
    
    enum BYDeviceMaterialCode : CUnsignedLongLong {
        case BYXMLDeviceUnknown = 0
        case BYDeviceSmartLock1 = 31714040001                               //PLC485转换器 0001
        case BYDeviceSmartLock2 = 31714040002                               //PLC485转换器 0002
        case BYDeviceSmartLock3 = 31714040003                               //PLC485转换器 0003
        case BYDeviceFanCoilActuator1 = 31711060001                         //A系列风机盘管执行器0001
        case BYDeviceFanCoilActuator2 = 31711060002                         //A系列风机盘管执行器0002
        case BYDeviceFanCoilActuator3 = 31711060003                         //A系列风机盘管执行器0003
        case BYDeviceNetworkedTemperatureControl1 = 31712010001             //联网型温控器0001
        case BYDeviceNetworkedTemperatureControl2 = 31712010002             //联网型温控器0002
        case BYDevicePowerMonitor1 = 31741020001                            //电能监控器0001
        case BYDevicePowerMonitorWithKey = 31741020002                      //电能监控器（带按键）0002
        case BYDevicePowerMonitor2 = 31741020003                            //电能监控器0003
        case BYDevicePowerMonitor3 = 31741020004                            //电能监控器0004
        case BYDeviceTouchSwitch1 = 31713030001                             //4按键灯控触摸面板0001
        case BYDeviceTouchSwitch2 = 31713030002                             //4按键灯控触摸面板0002
        case BYDeviceTouchSwitch3 = 31713030003                             //4按键灯控触摸面板0003
        case BYDeviceThreeToucheSwitch1 = 31713030101                       //3按键灯控触摸面板0001
        case BYDeviceThreeToucheSwitch2 = 31713030102                       //3按键灯控触摸面板0002
        case BYDeviceThreeToucheSwitch3 = 31713030103                       //3按键灯控触摸面板0003
        case BYDeviceTwoTouchSwitch1 = 31713030201                          //2按键灯控触摸面板0001
        case BYDeviceTwoTouchSwitch2 = 31713030202                          //2按键灯控触摸面板0002
        case BYDeviceTwoTouchSwitch3 = 31713030203                          //2按键灯控触摸面板0003
        case BYDeviceOneTouchSwitch1 = 31713030301                          //1按键灯控触摸面板0001
        case BYDeviceOneTouchSwitch2 = 31713030302                          //1按键灯控触摸面板0002
        case BYDeviceOneTouchSwitch3 = 31713030303                          //1按键灯控触摸面板0003
        case BYDeviceCurtainTouchSwitch = 31713030401                       //4按键窗帘触摸面板0401
        case BYDeviceCurtainTouchSwitch2 = 31713030402                       //4按键窗帘触摸面板0402
        case BYDeviceCurtainTouchSwitch3 = 31713030403                       //4按键窗帘触摸面板0403
        case BYDeviceSingleTrackCurtain1 = 31711040001                      //单轨窗帘控制模块0001
        case BYDeviceSingleTrackCurtain2 = 31711040002                      //单轨窗帘控制模块0002
        case BYDeviceSingleTrackCurtain3 = 31711040003                      //单轨窗帘控制模块0003
        case BYDeviceDoubleTrackCurtain = 31711040101                       //双轨窗帘控制模块0101
        case BYDeviceDoubleTrackCurtain2 = 31711040102                       //双轨窗帘控制模块0102
        case BYDeviceGateway1 = 31733010001                                 //智能路由器网关0001
        case BYDeviceGateway2 = 31733010002                                 //智能路由器网关0002
        case BYDeviceGateway3 = 31733010003                                 //智能路由器网关0003
        case BYDeviceGateway4 = 31733010004                                  //智能路由器网关0004
        case BYDeviceGateway5 = 31733010005                                  //智能路由器网关0005
        case BYDeviceGateway6 = 31733010101                                  //智能路由器网关0101
        case BYDeviceGateway7 = 31733010102                                  //智能路由器网关0102
        case BYDeviceGateway8 = 31733010103                                  //智能路由器网关0103
        case BYDeviceGateway9 = 31733010104                                  //智能路由器网关0104
        case BYDeviceGateway10 = 31733010201                                  //智能路由器网关0201
        case BYDeviceGateway11 = 31733010202                                  //智能路由器网关0202
        case BYDeviceGateway12 = 31733010203                                  //智能路由器网关0203
        case BYDeviceGateway13 = 31733010204                                  //智能路由器网关0204
        case BYDeviceGateway14 = 31733010301                                  //智能路由器网关0301
        case BYDeviceGateway15 = 31733010302                                  //智能路由器网关0302
        case BYDeviceGateway16 = 31733010303                                  //智能路由器网关0303
        case BYDeviceGateway17 = 31733010304                                  //智能路由器网关0304
        case BYDeviceGateway18 = 31733010401                                  //智能路由器网关0401
        case BYDeviceGateway19 = 31733010402                                  //智能路由器网关0402
        case BYDeviceGateway20 = 31733010403                                  //智能路由器网关0403
        case BYDeviceGateway21 = 31733010404                                  //智能路由器网关0404
        case BYDeviceGateway22 = 31733010006                                  //智能路由器网关0006
        case BYDeviceGateway23 = 31733010007                                  //智能路由器网关0007
        
        //    BYSub1G50Sub1GRTGateway =  31733010004                         //sub1G网关
        //        case BYSub1G50BLESub1GRTGateway =  31733010005                      //带蓝牙的sub1G网关
        case BYThreePhaseGateway1 = 31731010101                             //三相智能网关0101
        case BYThreePhaseGateway2 = 31731010102                             //三相智能网关0102
        case BYThreePhaseGateway5 = 31731010105                             //三相智能网关0105
        case BYDeviceMagnetometer = 31721030102                             //无线门磁
        case BYDeviceAlarm = 31721070001                                    //无线警号
        case BYDeviceWifiCamera = 31722010002                               //圆球摄像头
        case BYDeviceBoltCamera = 31722010202                               //枪机摄像头
        case BYDeviceFourSwitchActuator1 = 31711050001                      //四路开关执行器0001
        case BYDeviceFourSwitchActuator2 = 31711050002                      //四路开关执行器（带故障检测)0002
        case BYDeviceFourSwitchActuator3 = 31711050003                      //四路开关执行器0003
        case BYDeviceFourSwitchActuator4 = 31711050004                      //四路开关执行器0004
        case BYDeviceFourSwitchActuator5 = 31711050005                      //四路开关执行器0005
        case BYDeviceFourSwitchActuator6 = 31711050006                      //四路开关执行器0006
        case BYDeviceDoubleSwitchModule1 = 31711010101                      //2路1A开关控制模块0101
        case BYDeviceDoubleSwitchModule2 = 31711010102                      //2路1A开关控制模块0102
        case BYDeviceDoubleSwitchModule3 = 31711010103                      //2路1A开关控制模块0103
        case BYDeviceDoubleSwitchModule4 = 317110101021111                      //2路1A机械开关控制模块0101
        case BYDeviceSwitchControlModule1 = 31711010003                     //1路1A开关控制模块0003
        case BYDeviceSwitchControlModule2 = 31711010005                     //1路1A开关控制模块0005
        case BYDeviceSwitchControlModule3 = 31711010006                     //1路1A开关控制模块0006
        case BYDeviceSwitchControlModule4 = 31711010004                     //1路1A机械开关控制模块0004
        case BYDeviceSwitchControlModule5 = 31711010007                     //1路1A机械开关控制模块0007
        case BYDeviceSwitchControlModule6 = 31711010008                     //1路1A机械开关控制模块0008
        case BYDeviceLampControlOneTouchSwitch1 = 31712020301               //1按键灯控触摸开关0301
        case BYDeviceLampControlOneTouchSwitch2 = 31712020302               //1按键灯控触摸开关0302
        case BYDeviceLampControlOneTouchSwitch3 = 31712020303               //1按键灯控触摸开关0303
        case BYDeviceLampControlOneTouchSwitch4 = 31712020304               //1按键灯控触摸开关0304
        case BYDeviceLampControlOneTouchSwitch5 = 31712020305               //1按键灯控触摸开关0305
        case BYDeviceLampControlTwoTouchSwitch1 = 31712020201               //2按键灯控触摸开关0201
        case BYDeviceLampControlTwoTouchSwitch2 = 31712020202               //2按键灯控触摸开关0202
        case BYDeviceLampControlTwoTouchSwitch3 = 31712020203               //2按键灯控触摸开关0203
        case BYDeviceBodyInfrared1 = 31721010003                            //433M人体红外感应器0003
        case BYDeviceBodyInfrared2 = 31721010004                            //433M人体红外感应器0004
        case BYDeviceBodyInfrared3 = 31721010001                            //PLC人体红外感应器0001
        case BYDeviceBodyInfrared7 = 31721010007                            //PLC人体红外感应器0007
        case BYDeviceBodyInfrared8 = 31721010008                            //PLC人体红外感应器0008
        case BYDeviceBodyInfraredWithMicrowave1 = 31721010101               //红外微波双鉴探测器0101
        case BYDeviceBodyInfraredWithMicrowave2 = 31721010102               //红外微波双鉴探测器0102
        case BYDeviceBodyInfraredWithMicrowave3 = 31721010103               //红外微波双鉴探测器0103
        case BYDeviceSmokeDetector1 = 31721020002                           //烟雾报警器0002
        case BYDeviceSmokeDetector2 = 31721020003                           //烟雾报警器0003
        case BYDeviceDangerButton = 31721040001                             //紧急按钮0001
        case BYDeviceGasAlarm1 = 31721050001                                //燃气报警器0001
        case BYDeviceGasAlarm2 = 31721050002                                //燃气报警器0002
        case BYDeviceCOAlarm = 317210600001                                 //一氧化碳报警器0001
        case BYDeviceInDoor1 = 31753010001                                  //7寸室内机
        case BYDeviceInDoor2 = 31753020001                                  //10寸室内机
        case BYDeviceInDoor3 = 31752010001                                  //围墙机0001
        case BYDeviceInDoor4 = 31751010001                                  //门口机
        case BYDeviceInDoor5 = 31754010001                                  //中心管理机
        case BYDeviceLightBrightness1 = 31711020001                         //调光控制模块0001
        case BYDeviceLightBrightness2 = 31711020101                         //调光控制模块0101
        case BYDeviceLightBrightness3 = 31711020002                         //调光控制模块0002
        case BYDeviceLightBrightness4 = 31711020003                         //调光控制模块0003
        case BYDeviceLightColor1 = 31711030001                              //调色控制模块0001
        case BYDeviceLightColor2 = 31711030002                              //调色控制模块0002
        case BYDeviceLightColor3 = 31711030003                              //调色控制模块0003
        case BYDeviceInfraredForwarding1 = 31714010003                      //红外转发器0001
        case BYDeviceInfraredForwarding2 = 31714010004                      //红外转发器0002
        case BYDeviceInfraredForwarding3 = 31714010005                      //红外转发器0003
        case BYDeviceCenterLeakageProtector1 = 31741030001                  //智能中心断路器0001 漏保
        case BYDeviceCenterLeakageProtector2 = 31741030002                  //智能中心断路器0002
        case BYDeviceCenterLeakageProtector3 = 31741030003                  //智能中心断路器0003
        case BYDeviceLeakageProtector = 31741040001                         //智能断路器0001
        case BYDeviceLCDTouchSwitchPanel1 = 31713010001                     //LCD触控终端0001
        case BYDeviceLCDTouchSwitchPanel2 = 31713010002                     //LCD触控终端0002
        case BYDeviceLCDTouchSwitchPanel3 = 31713010003                     //LCD触控终端0003
        case BYDeviceLCDTouchSwitchPanel4 = 31713010004                     //LCD触控终端（BACnet)0004
        case BYDeviceLCDTouchSwitchPanel5 = 31713010005                     //LCD触控终端（BACnet)0005
        //        case BYDeviceCapacitiveTouchLCDTouchPanel = 31713020101             //电容屏LCD触摸面板0101
        case BYDeviceHeatingcentralizedcontroller1 = 31711080001            //地暖集中控制器(A系列)0001
        case BYDeviceHeatingcentralizedcontroller2 = 31711080002            //地暖集中控制器(A系列)0002
        case BYDeviceHeatingcentralizedcontroller3 = 31711080003            //地暖集中控制器(A系列)0003
        case BYDeviceHeatingtemperaturecontrolpanel1 = 31713060001          //地暖温控面板0001
        case BYDeviceHeatingtemperaturecontrolpanel2 = 31713060002          //地暖温控面板0002
        case BYDeviceHeatingtemperaturecontrolpanel3 = 31713060003          //地暖温控面板0003
        case BYDeviceQuadStemNode0001 = 31714070001                             //4路干接点模块0001
        case BYDeviceQuadStemNode0004 = 31714070004                             //4路干接点模块0004
        case BYDeviceQuadStemNode0005 = 31714070005                             //4路干接点模块0005
        case BYDeviceQuadStemNode0006 = 31714070006                             //4路干接点模块0006
        case BYDeviceQuadStemNode0007 = 31714070007                             //4路干接点模块0007
        case BYDeviceQuadStemNode0008 = 31714070008                             //4路干接点模块0008
        case BYDeviceQuadStemNode0009 = 31714070009                             //4路干接点模块0009
        case BYDeviceQuadStemNode0010 = 317140700010                             //4路干接点模块0010
        case BYDeviceQuadStemNode0011 = 317140700011                             //4路干接点模块0011
        case BYDeviceQuadStemNode0012 = 317140700012                             //4路干接点模块0012
        case BYDeviceSmartElectronicLock = 31711090001                           //智能电子锁0001
        case BYDeviceVRVAirConditionControl1 = 31711100001                        //VRV空调控制器0001 海信
        case BYDeviceVRVAirConditionControl2 = 31711100002                        //VRV空调控制器0002
        case BYDeviceVRVAirConditionControl3 = 31711100003                        //VRV空调控制器0003
        case BYDeviceVRVAirConditionControl4 = 31711100004                        //VRV空调控制器0004 海尔
        case BYDeviceVRVAirConditionControl5 = 31711100005                        //VRV空调控制器0005
        case BYDeviceVRVAirConditionControl6 = 31711100006                        //VRV空调控制器0006
        case BYDeviceFourPressKeySingleFireWireTouchSwitch = 31712030001        //4按键单火线触摸开关0001
        case BYDeviceThreePressKeySingleFireWireTouchSwitch = 31712030002       //3按键单火线触摸开关0002
        case BYDeviceTwoPressKeySingleFireWireTouchSwitch = 31712030003         //2按键单火线触摸开关0003
        case BYDeviceOnePressKeySingleFireWireTouchSwitch = 31712030004         //1按键单火线触摸开关0004
        case BYDevicePLC_Sub1GConverter1 = 31714050001                         //PLC-Sub1G转换器0001
        case BYDevicePLC_Sub1GConverter2 = 31714050002                         //PLC-Sub1G转换器0002
        case BYDevicePLC_Sub1GConverter3 = 31714050003                         //PLC-Sub1G转换器0003
        case BYDevicePLC_Sub1GConverter4 = 31714050004                         //PLC-Sub1G转换器0004
        case BYRemoteControl1 = 31721090001                                    //433遥控器0001
        case BYRemoteControl2 = 31721090002
    }
    
    enum BYDeviceType : CUnsignedLongLong {
        case BYUnkonwnDevice = 0
        case BYGatewayDevice = 1
        case BYDefenceDevice = 2
        case BYInfraredDevice = 3
        case BYControlDevice = 4
        case BYEnergyDevice = 5
        case BYInDoorDevice = 6
        case BYConfigDevice = 7
        case BYTemperatureDevice = 8
    }
    
    enum BYDeviceModeType : Int {
        case BYUnknownDeviceModeType
        case BYPLCDeviceModeType
        case BYRFDeviceModeType
    }
    
    static func getDeviceType (typecode:CUnsignedLongLong) -> String
    {
        switch typecode {
        case BYDeviceMaterialCode.BYDeviceSmartLock1.rawValue,
             BYDeviceMaterialCode.BYDeviceSmartLock2.rawValue,
             BYDeviceMaterialCode.BYDeviceSmartLock3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeSmartLock.rawValue
            
        case BYDeviceMaterialCode.BYDeviceFanCoilActuator1.rawValue,
             BYDeviceMaterialCode.BYDeviceFanCoilActuator2.rawValue,
             BYDeviceMaterialCode.BYDeviceFanCoilActuator3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeFanCoilActuator.rawValue
            
        case BYDeviceMaterialCode.BYDeviceNetworkedTemperatureControl1.rawValue,
             BYDeviceMaterialCode.BYDeviceNetworkedTemperatureControl2.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeNetworkedTemperatureControl.rawValue
            
        case BYDeviceMaterialCode.BYDevicePowerMonitor1.rawValue,
             BYDeviceMaterialCode.BYDevicePowerMonitor2.rawValue,
             BYDeviceMaterialCode.BYDevicePowerMonitor3.rawValue,
             BYDeviceMaterialCode.BYDevicePowerMonitorWithKey.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypePowerMonitor.rawValue
            
        case BYDeviceMaterialCode.BYDeviceTouchSwitch1.rawValue,
             BYDeviceMaterialCode.BYDeviceTouchSwitch2.rawValue,
             BYDeviceMaterialCode.BYDeviceTouchSwitch3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeTouchSwitch.rawValue

        case BYDeviceMaterialCode.BYDeviceThreeToucheSwitch1.rawValue,
             BYDeviceMaterialCode.BYDeviceThreeToucheSwitch2.rawValue,
             BYDeviceMaterialCode.BYDeviceThreeToucheSwitch3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeThreeToucheSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceTwoTouchSwitch1.rawValue,
             BYDeviceMaterialCode.BYDeviceTwoTouchSwitch2.rawValue,
             BYDeviceMaterialCode.BYDeviceTwoTouchSwitch3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeTwoTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceOneTouchSwitch1.rawValue,
             BYDeviceMaterialCode.BYDeviceOneTouchSwitch2.rawValue,
             BYDeviceMaterialCode.BYDeviceOneTouchSwitch3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeOneTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceCurtainTouchSwitch.rawValue,
             BYDeviceMaterialCode.BYDeviceCurtainTouchSwitch2.rawValue,
             BYDeviceMaterialCode.BYDeviceCurtainTouchSwitch3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeCurtainTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceSingleTrackCurtain1.rawValue,
             BYDeviceMaterialCode.BYDeviceSingleTrackCurtain2.rawValue,
             BYDeviceMaterialCode.BYDeviceSingleTrackCurtain3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeSingleTrackCurtain.rawValue
            
        case BYDeviceMaterialCode.BYDeviceDoubleTrackCurtain.rawValue,
             BYDeviceMaterialCode.BYDeviceDoubleTrackCurtain2.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleTrackCurtain.rawValue
            
        case BYDeviceMaterialCode.BYDeviceGateway1.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway2.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway3.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway4.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway5.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway6.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway7.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway8.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway9.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway10.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway11.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway12.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway13.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway14.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway15.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway16.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway17.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway18.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway19.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway20.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway21.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway22.rawValue,
             BYDeviceMaterialCode.BYDeviceGateway23.rawValue,
             BYDeviceMaterialCode.BYThreePhaseGateway1.rawValue,
             BYDeviceMaterialCode.BYThreePhaseGateway2.rawValue,
             BYDeviceMaterialCode.BYThreePhaseGateway5.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeGateway.rawValue

        case BYDeviceMaterialCode.BYDeviceMagnetometer.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeMagnetometer.rawValue
            
        case BYDeviceMaterialCode.BYDeviceAlarm.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeAlarm.rawValue
            
        case BYDeviceMaterialCode.BYDeviceWifiCamera.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeWifiCamera.rawValue
            
        case BYDeviceMaterialCode.BYDeviceBoltCamera.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeBoltCamera.rawValue
            
        case BYDeviceMaterialCode.BYDeviceFourSwitchActuator1.rawValue,
             BYDeviceMaterialCode.BYDeviceFourSwitchActuator2.rawValue,
             BYDeviceMaterialCode.BYDeviceFourSwitchActuator3.rawValue,
             BYDeviceMaterialCode.BYDeviceFourSwitchActuator4.rawValue,
             BYDeviceMaterialCode.BYDeviceFourSwitchActuator5.rawValue,
             BYDeviceMaterialCode.BYDeviceFourSwitchActuator6.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeFourSwitchActuator.rawValue
            
        case BYDeviceMaterialCode.BYDeviceDoubleSwitchModule1.rawValue,
             BYDeviceMaterialCode.BYDeviceDoubleSwitchModule2.rawValue,
             BYDeviceMaterialCode.BYDeviceDoubleSwitchModule3.rawValue,
             BYDeviceMaterialCode.BYDeviceDoubleSwitchModule4.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleSwitchModule.rawValue
            
        case BYDeviceMaterialCode.BYDeviceSwitchControlModule1.rawValue,
             BYDeviceMaterialCode.BYDeviceSwitchControlModule2.rawValue,
             BYDeviceMaterialCode.BYDeviceSwitchControlModule3.rawValue,
             BYDeviceMaterialCode.BYDeviceSwitchControlModule4.rawValue,
             BYDeviceMaterialCode.BYDeviceSwitchControlModule5.rawValue,
             BYDeviceMaterialCode.BYDeviceSwitchControlModule6.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeSwitchControlModule.rawValue
            
        case BYDeviceMaterialCode.BYDeviceLampControlOneTouchSwitch1.rawValue,
             BYDeviceMaterialCode.BYDeviceLampControlOneTouchSwitch2.rawValue,
             BYDeviceMaterialCode.BYDeviceLampControlOneTouchSwitch3.rawValue,
             BYDeviceMaterialCode.BYDeviceLampControlOneTouchSwitch4.rawValue,
             BYDeviceMaterialCode.BYDeviceLampControlOneTouchSwitch5.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeLampControlOneTouchSwitch.rawValue

        case BYDeviceMaterialCode.BYDeviceLampControlTwoTouchSwitch1.rawValue,
             BYDeviceMaterialCode.BYDeviceLampControlTwoTouchSwitch2.rawValue,
             BYDeviceMaterialCode.BYDeviceLampControlTwoTouchSwitch3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeControlTwoTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceBodyInfrared1.rawValue,
             BYDeviceMaterialCode.BYDeviceBodyInfrared2.rawValue,
             BYDeviceMaterialCode.BYDeviceBodyInfrared3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeBodyInfrared433.rawValue
            
        case BYDeviceMaterialCode.BYDeviceBodyInfrared7.rawValue,
             BYDeviceMaterialCode.BYDeviceBodyInfrared8.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeBodyInfraredPLC.rawValue
            
        case BYDeviceMaterialCode.BYDeviceBodyInfraredWithMicrowave1.rawValue,
             BYDeviceMaterialCode.BYDeviceBodyInfraredWithMicrowave2.rawValue,
             BYDeviceMaterialCode.BYDeviceBodyInfraredWithMicrowave3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeInfraredWithMicrowave.rawValue
            
        case BYDeviceMaterialCode.BYDeviceSmokeDetector1.rawValue,
             BYDeviceMaterialCode.BYDeviceSmokeDetector2.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeSmokeDetector.rawValue
            
        case BYDeviceMaterialCode.BYDeviceGasAlarm1.rawValue,
             BYDeviceMaterialCode.BYDeviceGasAlarm2.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeGasAlarm.rawValue
            
        case BYDeviceMaterialCode.BYDeviceCOAlarm.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeCOAlarm.rawValue
            
        case BYDeviceMaterialCode.BYDeviceInDoor1.rawValue,
             BYDeviceMaterialCode.BYDeviceInDoor2.rawValue,
             BYDeviceMaterialCode.BYDeviceInDoor3.rawValue,
             BYDeviceMaterialCode.BYDeviceInDoor4.rawValue,
             BYDeviceMaterialCode.BYDeviceInDoor5.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeInDoor.rawValue
            
        case BYDeviceMaterialCode.BYDeviceLightBrightness1.rawValue,
             BYDeviceMaterialCode.BYDeviceLightBrightness2.rawValue,
             BYDeviceMaterialCode.BYDeviceLightBrightness3.rawValue,
             BYDeviceMaterialCode.BYDeviceLightBrightness4.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeLightBrightness.rawValue

        case BYDeviceMaterialCode.BYDeviceLightColor1.rawValue,
             BYDeviceMaterialCode.BYDeviceLightColor2.rawValue,
             BYDeviceMaterialCode.BYDeviceLightColor3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeLightColor.rawValue
            
        case BYDeviceMaterialCode.BYDeviceInfraredForwarding1.rawValue,
             BYDeviceMaterialCode.BYDeviceInfraredForwarding2.rawValue,
             BYDeviceMaterialCode.BYDeviceInfraredForwarding3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeInfraredForwarding.rawValue
            
        case BYDeviceMaterialCode.BYDeviceCenterLeakageProtector1.rawValue,
             BYDeviceMaterialCode.BYDeviceCenterLeakageProtector2.rawValue,
             BYDeviceMaterialCode.BYDeviceCenterLeakageProtector3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeCenterLeakageProtector.rawValue
            
        case BYDeviceMaterialCode.BYDeviceLeakageProtector.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeLeakageProtector.rawValue
            
        case BYDeviceMaterialCode.BYDeviceLCDTouchSwitchPanel1.rawValue,
             BYDeviceMaterialCode.BYDeviceLCDTouchSwitchPanel2.rawValue,
             BYDeviceMaterialCode.BYDeviceLCDTouchSwitchPanel3.rawValue,
             BYDeviceMaterialCode.BYDeviceLCDTouchSwitchPanel4.rawValue,
             BYDeviceMaterialCode.BYDeviceLCDTouchSwitchPanel5.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeLCDTouchSwitchPanel.rawValue
            
        case BYDeviceMaterialCode.BYDeviceHeatingcentralizedcontroller1.rawValue,
             BYDeviceMaterialCode.BYDeviceHeatingcentralizedcontroller2.rawValue,
             BYDeviceMaterialCode.BYDeviceHeatingcentralizedcontroller3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingcentralizedcontroller.rawValue
            
        case BYDeviceMaterialCode.BYDeviceHeatingtemperaturecontrolpanel1.rawValue,
             BYDeviceMaterialCode.BYDeviceHeatingtemperaturecontrolpanel2.rawValue,
             BYDeviceMaterialCode.BYDeviceHeatingtemperaturecontrolpanel3.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingtemperaturecontrolpanel.rawValue

        case BYDeviceMaterialCode.BYDeviceQuadStemNode0001.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0004.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0005.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0006.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0007.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0008.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0009.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0010.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0011.rawValue,
             BYDeviceMaterialCode.BYDeviceQuadStemNode0012.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeQuadStemNode.rawValue
            
        case BYDeviceMaterialCode.BYDeviceVRVAirConditionControl1.rawValue,
             BYDeviceMaterialCode.BYDeviceVRVAirConditionControl2.rawValue,
             BYDeviceMaterialCode.BYDeviceVRVAirConditionControl3.rawValue,
             BYDeviceMaterialCode.BYDeviceVRVAirConditionControl4.rawValue,
             BYDeviceMaterialCode.BYDeviceVRVAirConditionControl5.rawValue,
             BYDeviceMaterialCode.BYDeviceVRVAirConditionControl6.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl.rawValue
            
        case BYDeviceMaterialCode.BYDeviceFourPressKeySingleFireWireTouchSwitch.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeFourPressKeySingleFireWireTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceThreePressKeySingleFireWireTouchSwitch.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeThreePressKeySingleFireWireTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceTwoPressKeySingleFireWireTouchSwitch.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeTwoPressKeySingleFireWireTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDeviceOnePressKeySingleFireWireTouchSwitch.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeOnePressKeySingleFireWireTouchSwitch.rawValue
            
        case BYDeviceMaterialCode.BYDevicePLC_Sub1GConverter1.rawValue,
             BYDeviceMaterialCode.BYDevicePLC_Sub1GConverter2.rawValue,
             BYDeviceMaterialCode.BYDevicePLC_Sub1GConverter3.rawValue,
             BYDeviceMaterialCode.BYDevicePLC_Sub1GConverter4.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypePLC_Sub1GConverter.rawValue
            
        case BYDeviceMaterialCode.BYRemoteControl1.rawValue,
             BYDeviceMaterialCode.BYRemoteControl2.rawValue:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeRemoteControl.rawValue

        default:
            return BYDeviceDeviceTypeByCode.BYDeviceTypeUnknow.rawValue
        }
    }
}
