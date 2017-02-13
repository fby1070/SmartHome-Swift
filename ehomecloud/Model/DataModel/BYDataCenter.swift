//
//  BYDataCenter.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/6.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYDataCenter: NSObject {
    static let sharedDataCenter = BYDataCenter()
    
    var loginModel = BYLoginModel()
    
    var houseArray = [BYHouseModel]()
    
    var gatewayArray = [BYGatewayModel]()
    
    var roomArray = [BYRoomModel]()
    
    var deviceArray = [BYDeviceModel]()
    
    var vdeviceArray = [BYVirtualDeviceModel]()
    
    var defenceArray = [BYDefenceModel]()
    
    var inDoorArray = [BYInDoorModel]()
    
    var sceneArray = [BYSceneModel]()
    
    fileprivate override init() {
        
    }
    
    /// 根据deviceKey找出该设备下的所有虚拟设备
    ///
    /// - Parameter deviceKey: 设备deviceKey
    /// - Returns: 虚拟设备数组
    func getherVirtualDeviceByDeviceKey(deviceKey:String) -> Array<BYVirtualDeviceModel> {
        var array = [BYVirtualDeviceModel]()
        for virtualDevice in vdeviceArray {
            if virtualDevice.masterDeviceKey == deviceKey {
                array.append(virtualDevice)
            }
        }
        return array
    }
    
    
    /// 获取首页安防联动数组
    ///
    /// - Returns: 安防数组
    func getSecurityLinkageArray() -> Array<BYDefenceModel> {
        var array = [BYDefenceModel]()
        for defenceModel in defenceArray {
            array.append(defenceModel)
        }
        return array
    }
    
    
    /// 获取首页智能控制数据源
    ///
    /// - Returns: 返回设备和虚拟设备数组
    func getIntelligentControlArray() -> Array<Any> {
        var array = [Any]()
        for deviceModel in deviceArray {
            if deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSwitchControlModule ||
            deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLampControlOneTouchSwitch ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeSingleTrackCurtain ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleTrackCurtain ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightBrightness ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeLightColor ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypePowerMonitor ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeHeatingcentralizedcontroller ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourSwitchActuator ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourPressKeySingleFireWireTouchSwitch ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeThreePressKeySingleFireWireTouchSwitch ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTwoPressKeySingleFireWireTouchSwitch ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeOnePressKeySingleFireWireTouchSwitch ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleSwitchModule ||
                deviceModel.codeName == BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl
            {
                let virtualDeivces = self.getherVirtualDeviceByDeviceKey(deviceKey: deviceModel.deviceKey!)
                
                if deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourSwitchActuator &&
                    deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleSwitchModule &&
                    deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl &&
                    deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeDoubleTrackCurtain &&
                    deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeVRVAirConditionControl &&
                    deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeFourPressKeySingleFireWireTouchSwitch &&
                    deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeThreePressKeySingleFireWireTouchSwitch &&
                    deviceModel.codeName != BYDataInfo.BYDeviceDeviceTypeByCode.BYDeviceTypeTwoPressKeySingleFireWireTouchSwitch
                {
                    array.append(deviceModel)
                }
                else
                {
                    for virtualDeviceMode in virtualDeivces {
                        array.append(virtualDeviceMode)
                    }
                }
            }
        }
        return array
    }
    
    
    func getClickIntelligentScence() -> Array<BYSceneModel> {
        var array = [BYSceneModel]()
        for sceneModel in sceneArray {
            if sceneModel.state == BYSceneModel.ESAIntelligentSceneState.esaIntelligentSceneDisable {
                continue
            }
            for triggerModel in sceneModel.triggerList! {
//                if triggerModel. {
//                    <#code#>
//                }
            }
        }
        return array
    }
    


}
