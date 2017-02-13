//
//  BYDeviceModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYDeviceModel: BYModel {

    var sn:String?
    var deviceKey:String?
    var roomId:String?
    var firm:String?
    var alias:String?
    var channel:String?
    var rfType:String?
    var address:String?
    var aid:String?
    var password:String?
    var houseId:Int?
    var gatewayDeviceKey:String?
    var userId:String?
    var topic:String?
    var typeName:String?
    var masterAid:String?
    var function:Dictionary<String,Any>?
    var configuration:Dictionary<String,Any>?
    var typecode:CUnsignedLongLong?
    var codeName:BYDataInfo.BYDeviceDeviceTypeByCode?
    var swVersion:String?
    var chipType:String?
    var chipSwVersion:String?
    var remark:Dictionary<String,Any>?
    var isDidSelected:Bool?
    
    init(dictionary:Dictionary<String, Any>)
    {
        self.sn = dictionary["sn"] as! String?
        self.deviceKey = dictionary["deviceKey"] as! String?
        self.roomId = dictionary["roomId"] as! String?
        self.firm = dictionary["firm"] as! String?
        self.alias = dictionary["alias"] as! String?
        self.channel = dictionary["channel"] as! String?
        self.rfType = dictionary["rfType"] as! String?
        self.address = dictionary["address"] as! String?
        self.aid = dictionary["aid"] as! String?
        self.password = dictionary["password"] as! String?
        self.houseId = dictionary["houseId"] as! Int?
        self.gatewayDeviceKey = dictionary["gatewayDeviceKey"] as! String?
        self.userId = dictionary["userId"] as! String?
        self.topic = dictionary["topic"] as! String?
        self.typeName = dictionary["typeName"] as! String?
        self.masterAid = dictionary["masterAid"] as! String?
        self.swVersion = dictionary["swVersion"] as! String?
        self.chipType = dictionary["chipType"] as! String?
        self.chipSwVersion = dictionary["chipSwVersion"] as! String?
        self.function = dictionary["function"] as! Dictionary<String, Any>?
        self.configuration = dictionary["configuration"] as! Dictionary<String, Any>?
        
        if self.sn != nil {
            let sn:String? = self.sn
            let codeName = sn?.substring(to: (sn?.index((sn?.startIndex)!, offsetBy: 11))!)
            self.typecode = CUnsignedLongLong.init(codeName!)
            if self.typecode != nil {
                self.codeName = BYDataInfo.BYDeviceDeviceTypeByCode(rawValue: BYDataInfo.getDeviceType(typecode: self.typecode!))
            }
        }
    }
    
    
    /// 设备在线
    ///
    /// - Returns: 设备在线图片名称
    func deviceOnlineIconName() -> String {
        let onlineIconDictionary = [BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeMagnetometer:"device_magnetometer_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeAlarm:"small_device_icon_alarm",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeWifiCamera:"device_wifiCamera_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBoltCamera:"device_wifiCamera_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeGasAlarm:"device_gas_icon_online",
//                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCOAlarm:"device_co_icon_online.svg",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBodyInfrared433:"small_device_icon_433_body_infrared",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBodyInfraredPLC:"small_device_icon_plc_body_infrared",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeInfraredWithMicrowave:"small_device_icon_infrared_microwave_double_guide",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSmokeDetector:"small_device_icon_smoke_alarm",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourSwitchActuator:"small_device_icon_fourSwitch",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourPressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeThreePressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTwoPressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeOnePressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleSwitchModule:"small_device_icon_light_control",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeControlTwoTouchSwitch:"small_device_icon_two_touch_switch",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSwitchControlModule:"vdevice_light_icon_switch_on",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTouchSwitch:"small_device_icon_four_touch_panel",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeThreeToucheSwitch:"small_device_icon_three_touch_panel",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTwoTouchSwitch:"small_device_icon_two_touch_panel",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeOneTouchSwitch:"small_device_icon_one_touch_panel",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCurtainTouchSwitch:"small_device_icon_curtain_touch",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSingleTrackCurtain:"device_singleTrackCurtain_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleTrackCurtain:"device_doubleTrackCurtain_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightColor:"device_colorLight_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightBrightness:"device_brightness_icon_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeInfraredForwarding:"small_device_icon_infrared",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypePowerMonitor:"small_device_icon_use_electricity_supervise",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCenterLeakageProtector:"small_device_icon_electric_leakage_protection",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLCDTouchSwitchPanel:"small_device_icon_lcd",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeNetworkedTemperatureControl:"small_device_icon_thermostat",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFanCoilActuator:"small_device_icon_fan_coil_actuator",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSmartLock:"small_device_icon_smart_lock",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLampControlOneTouchSwitch:"small_device_icon_single_touch_switch",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingcentralizedcontroller:"small_device_icon_floor_heating",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingtemperaturecontrolpanel:"small_device_icon_temperatureControlPanel",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeQuadStemNode:"small_device_icon_stem_node",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeRemoteControl:"device_remote_control_online",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl:"homePageControlVRVAicondition_openstate",
                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypePLC_Sub1GConverter:"device_Sub1G_icon_online",
                                    ]
        var onlineIconName = onlineIconDictionary[self.codeName!]
        if onlineIconName == nil {
            onlineIconName = "small_device_icon_power_controler"
        }
        return onlineIconName!
        
        
    }
    
    
    /// 设备不在线图标
    ///
    /// - Returns: 设备不在线图标名
    func deviceOffLineIconName() -> String {
        let offlineIconDictionary = [
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeMagnetometer:"device_magnetometer_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeAlarm:"device_alarm_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeWifiCamera:"device_wifiCamera_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBoltCamera:"device_wifiCamera_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeGasAlarm:"device_gas_icon_offline",
            //                                    BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCOAlarm:"device_co_icon_online.svg",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBodyInfrared433:"offline_device_icon_433_body_infrared",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBodyInfraredPLC:"offline_device_icon_plc_body_infrared",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeInfraredWithMicrowave:"offline_device_icon_infrared_microwave_double_guide",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSmokeDetector:"offline_device_icon_smoke_alarm",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourSwitchActuator:"offline_device_icon_quad_switch",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourPressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeThreePressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTwoPressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeOnePressKeySingleFireWireTouchSwitch:"device_threetouch_singleWire_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleSwitchModule:"offline_device_icon_light_control",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeControlTwoTouchSwitch:"offline_small_device_icon_two_touch_swtich",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSwitchControlModule:"offline_device_icon_power_controler",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTouchSwitch:"offline_device_icon_four_touch_panel",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeThreeToucheSwitch:"offline_device_icon_three_touch_panel",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTwoTouchSwitch:"offline_small_device_icon_two_touch_panel",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeOneTouchSwitch:"offline_small_device_icon_one_touch_panel",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCurtainTouchSwitch:"offline_small_device_icon_curtain_touch",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSingleTrackCurtain:"device_singleTrackCurtain_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleTrackCurtain:"device_doubleTrackCurtain_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightColor:"device_colorLight_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightBrightness:"device_brightness_icon_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeInfraredForwarding:"offline_device_icon_infrared",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypePowerMonitor:"offline_device_icon_use_electricity_supervise",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCenterLeakageProtector:"offline_device_icon_electric_leakage_protection",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLCDTouchSwitchPanel:"offline_device_icon_lcd",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeNetworkedTemperatureControl:"offline_device_icon_floor_heating",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFanCoilActuator:"offline_device_icon_fan_coil_actuator",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSmartLock:"offline_small_device_icon_smart_lock",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLampControlOneTouchSwitch:"offline_device_icon_single_touch_switch",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingcentralizedcontroller:"offline_device_icon_floor_heating",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingtemperaturecontrolpanel:"offline_small_device_icon_temperatureControlPanel",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeQuadStemNode:"offline_device_icon_stem_node",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeRemoteControl:"device_remote_control_offline",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl:"homePageControlVRVAicondition_offlinestate",
            BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypePLC_Sub1GConverter:"device_Sub1G_icon_offline",
            ]
        var offlineIconName = offlineIconDictionary[self.codeName!]
        if offlineIconName == nil {
            offlineIconName = "offline_device_icon_power_controler"
        }
        return offlineIconName!
        
        
    }
    
    
    /// 设备开图标
    ///
    /// - Returns: 设备开的图片名称
    func deviceSwitchOnIconName() -> String {
        let switchOnIconDictionary = [BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeMagnetometer:"device_magnetometer_icon_switch_on",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeAlarm:"small_device_icon_alarm",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSwitchControlModule:"homePage_switch_control_module",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLampControlOneTouchSwitch:"homePage_switch_control_module",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSingleTrackCurtain:"small_device_icon_singleTrackCurtain_icon_online_on",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleTrackCurtain:"small_device_icon_singleTrackCurtain_icon_online_on",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightBrightness:"small_device_icon_brightness_icon_online_on",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightColor:"small_device_icon_colorLight_icon_online_on",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingcentralizedcontroller:"small_device_icon_floor_heating_icon_online_on",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypePowerMonitor:"small_device_icon_use_electricity_supervise_icon_online_on",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeWifiCamera:"device_wifiCamera_icon_online",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBoltCamera:"device_wifiCamera_icon_online",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSmartLock:"small_device_icon_smart_lock",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl:"homePageControlVRVAicondition_openstate",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCenterLeakageProtector:"small_device_icon_electric_leakage_protection",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeNetworkedTemperatureControl:"small_device_icon_thermostat",
                                      ]
        var switchOnIconName = switchOnIconDictionary[self.codeName!]
        if switchOnIconName == nil {
            switchOnIconName = "device_magnetometer_icon_switch_on"
        }
        return switchOnIconName!
        
    }

    /// 设备关图标
    ///
    /// - Returns: 设备开的图片名称
    func deviceSwitchOffIconName() -> String {
        let switchOffIconDictionary = [BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeMagnetometer:"device_magnetometer_icon_switch_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeAlarm:"small_device_icon_alarm",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSwitchControlModule:"homePage_switch_control_module_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLampControlOneTouchSwitch:"homePage_switch_control_module_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSingleTrackCurtain:"small_device_icon_singleTrackCurtain_icon_online_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleTrackCurtain:"small_device_icon_singleTrackCurtain_icon_online_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightBrightness:"small_device_icon_brightness_icon_online_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightColor:"small_device_icon_colorLight_icon_online_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingcentralizedcontroller:"small_device_icon_floor_heating_icon_online_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypePowerMonitor:"small_device_icon_use_electricity_supervise_icon_online_off",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeWifiCamera:"device_wifiCamera_icon_offline",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeBoltCamera:"device_wifiCamera_icon_offline",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl:"homePageControlVRVAicondition_closestate",
                                      BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeCenterLeakageProtector:"offline_device_icon_electric_leakage_protection",
                                      ]
        var switchOffIconName = switchOffIconDictionary[self.codeName!]
        if switchOffIconName == nil {
            switchOffIconName = "device_magnetometer_icon_switch_on"
        }
        return switchOffIconName!
        
    }


}
