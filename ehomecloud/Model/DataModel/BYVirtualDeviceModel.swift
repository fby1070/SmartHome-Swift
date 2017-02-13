//
//  BYVirtualDeviceModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYVirtualDeviceModel: BYModel {
    enum BYVirtualDeviceType:Int {
        case    ESAVirtualDeviceOther = 0x00
        case    ESAVirtualDeviceLight = 0x01
        case    ESAVirtualDeviceLightUltrviolet = 0x02 // 紫外线灯 消毒用
        case    ESAVirtualDeviceAirCondition = 0x03    //空调
        case    ESAVirtualDeviceTVBox = 0x4    //电视机顶盒
        //    ESAVirtualDeviceWaterDispenser = 0x05
        //    ESAVirtualDeviceSensor = 0x06
        case    ESAVirtualDeviceElectricFan = 0x07
        //    ESAVirtualDeviceLightBrightness = 0x08
        //    ESAVirtualDeviceLightColor = 0x09
        case    ESAVirtualDeviceDoubleCurtain = 0x0a //双轨窗帘 未完成,
        case    ESAVirtualDeviceDeviceTV = 0x0b    //电视
        //    ESAVirtualDeviceSmartPowerSocket = 0x0c
        case    ESAVirtualDeviceUseElectricityMonitor = 0x0d//用电监控器
        //    ESAVirtualDeviceWaterHeater = 0x0f    //热水器
        //    ESAVirtualDeviceThermostat = 0x11     //联网温控器
        //    ESAVirtualDeviceSingleFireSwitch = 0x10 //单火线开关
        case    ESAVirtualDeviceCommonInfrared = 0x13  //普通红外转发设备
        //    ESAVirtualDeviceSmartLock =0x14   //智能锁
        //    ESAVirtualDeviceFanCoilActuator = 0x15 //风机盘管执行器
        //    ESAVirtualDeviceFloorHeatingIntegratedTemperatureController = 0x16 // 地暖温度控制器
        case   ESAVirtualDeviceVRVAir = 0x17   //VRV空调
    }
    
    var masterDeviceKey:String = ""
    var vdeviceId:Int = 0
    var alias:String = ""
    var roomId:String?
    var type:BYVirtualDeviceType = BYVirtualDeviceModel.BYVirtualDeviceType(rawValue: 0x00)!
    var channel:Int = 0
    var typeName:String?
    
    init(dic:Dictionary<String, Any>) {
        self.masterDeviceKey = dic["masterDeviceKey"] as! String
        self.vdeviceId = dic["vdeviceId"] as! Int
        self.alias = dic["alias"] as! String
        self.roomId = dic["roomId"] as! String?
        let str = Int(dic["type"] as! String)
        
        self.type = BYVirtualDeviceModel.BYVirtualDeviceType(rawValue: str!)!
        self.channel = Int(dic["channel"] as! String)!
        self.typeName = dic["typeName"] as! String?
    }
    
    
    /// 虚拟设备在线开图标
    ///
    /// - Returns: 图标名称
    func switchOnIcon() -> String{
        let smallIconDictionary = [BYVirtualDeviceType.ESAVirtualDeviceLight.rawValue : "homePage_light_icon_switch_on",
                                   BYVirtualDeviceType.ESAVirtualDeviceCommonInfrared.rawValue : "small_device_icon_commonInfrared",
                                   BYVirtualDeviceType.ESAVirtualDeviceAirCondition.rawValue : "small_device_icon_air_condition",
                                   BYVirtualDeviceType.ESAVirtualDeviceTVBox.rawValue : "small_device_icon_tvBox",
                                   BYVirtualDeviceType.ESAVirtualDeviceElectricFan.rawValue : "small_device_icon_fan",
                                   BYVirtualDeviceType.ESAVirtualDeviceDeviceTV.rawValue : "small_device_icon_tv",
                                   BYVirtualDeviceType.ESAVirtualDeviceDoubleCurtain.rawValue : "device_doubleTrackCurtain_icon_online",
                                   BYVirtualDeviceType.ESAVirtualDeviceVRVAir.rawValue : "homePageControlVRVAicondition_openstate"]
        var smallIconName = smallIconDictionary[self.type.rawValue]
        if smallIconName == nil{
           smallIconName = "vdevice_light_icon_switch_on"
        }
        return smallIconName!
    }
    
    /// 虚拟设备在线关图标
    ///
    /// - Returns: 图标名称
    func switchOffIcon() -> String{
        let switchOffIconDictionary = [BYVirtualDeviceType.ESAVirtualDeviceLight.rawValue : "homePage_light_iconSwitch_off",
                                   BYVirtualDeviceType.ESAVirtualDeviceCommonInfrared.rawValue : "offline_device_icon_infrared",
                                   BYVirtualDeviceType.ESAVirtualDeviceAirCondition.rawValue : "offline_device_icon_infrared",
                                   BYVirtualDeviceType.ESAVirtualDeviceTVBox.rawValue : "offline_device_icon_infrared",
                                   BYVirtualDeviceType.ESAVirtualDeviceElectricFan.rawValue : "offline_device_icon_infrared",
                                   BYVirtualDeviceType.ESAVirtualDeviceDeviceTV.rawValue : "offline_device_icon_infrared",
                                   BYVirtualDeviceType.ESAVirtualDeviceDoubleCurtain.rawValue : "small_device_icon_singleTrackCurtain_icon_online_off",
                                   BYVirtualDeviceType.ESAVirtualDeviceVRVAir.rawValue : "homePageControlVRVAicondition_closestate"]
        var switchOffIconName = switchOffIconDictionary[self.type.rawValue]
        if switchOffIconName == nil{
            switchOffIconName = "offline_small_device_icon_light_switch_off"
        }
        return switchOffIconName!
    }

}
