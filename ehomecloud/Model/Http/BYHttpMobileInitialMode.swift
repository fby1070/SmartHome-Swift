//
//  BYHttpMobileInitialMode.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit
import Alamofire

class BYHttpMobileInitialMode: BYHttpModeParameter {
    
    var houseArray = [BYHouseModel]()
    
    var gatewayArray = [BYGatewayModel]()
    
    var roomArray = [BYRoomModel]()
    
    var deviceArray = [BYDeviceModel]()
    
    var vdeviceArray = [BYVirtualDeviceModel]()
    
    var inDoorArray = [BYInDoorModel]()
    
    var defenceArray = [BYDefenceModel]()
    
    var sceneArray = [BYSceneModel]()
    
    override func supportURL() -> String
    {
        return "/authsec/user/mobile/initial"
    }
    
    override init() {
        super.init()
    }
    
    init(dictionary:Dictionary<String,Any>)
    {
        let houseList:Array<Dictionary<String, Any>> = dictionary["houseList"] as! Array
        for houseDic:Dictionary<String, Any> in houseList
        {
            let mode = BYHouseModel.init(dictionary: houseDic)
            houseArray.append(mode)
            let gatewayList = houseDic["gatewayList"] as! Array<Dictionary<String, Any>>
            let roomList = houseDic["roomList"] as! Array<Dictionary<String, Any>>
            let defenceList = houseDic["defenceList"] as! Array<Dictionary<String, Any>>
            let inDoorList = houseDic["intercomList"] as! Array<Dictionary<String, Any>>
            let sceneList = houseDic["sceneList"] as! Array<Dictionary<String, Any>>
            
            for gatewayDictionary in gatewayList {
                let gatewayModel = BYGatewayModel.init(dictionary: gatewayDictionary)
                gatewayArray.append(gatewayModel)
            }
            
            for defenceDictionary in defenceList {
                let defenceModel = BYDefenceModel.init(dictionary: defenceDictionary)
                defenceArray.append(defenceModel)
            }
            
            for inDoorDictionary in inDoorList {
                let inDoorModel = BYInDoorModel.init(dictionary: inDoorDictionary)
                inDoorArray.append(inDoorModel)
            }
            
            for sceneDictionary in sceneList {
                let sceneModel = BYSceneModel.init(dictionary: sceneDictionary)
                sceneArray.append(sceneModel)
            }
            
            for roomDictionary in roomList {
                let roomModel = BYRoomModel.init(dictionary: roomDictionary)
                roomArray.append(roomModel)
                let deviceList = roomDictionary["deviceList"] as! Array<Dictionary<String, Any>>?
                if deviceList != nil {
                    for deviceDictionary in deviceList! {
                        let deviceModel = BYDeviceModel.init(dictionary: deviceDictionary)
                        deviceArray.append(deviceModel)
                        let vdeviceList = deviceDictionary["vdeviceList"] as! Array<Dictionary<String, Any>>?
                        if vdeviceList != nil {
                            for vdeviceDictionary in vdeviceList! {
                                let vdeviceModel = BYVirtualDeviceModel.init(dic: vdeviceDictionary)
                                vdeviceArray.append(vdeviceModel)
                            }
                        }
                        
                    }
                }
                
            }
            
        }
    }
    
    override func getHeaders() -> HTTPHeaders {
        var headers:HTTPHeaders = HTTPHeaders()
        headers = super.getHeaders()
        
        let version = self.versionCheck()
        
        headers["version"] = version
        return headers
    }
    
    //获取软件版本号，例如：  IOS_1.0.0
    func versionCheck() -> String{
        
        let infoDictionary = Bundle.main.infoDictionary
        
        let majorVersion = infoDictionary! ["CFBundleShortVersionString"] as AnyObject?
        
        let minorVersion = infoDictionary! ["CFBundleVersion"] as AnyObject?
        
        let appversion = majorVersion as! String
        
        let buildVersion = minorVersion as! String
        
        let version = "IOS_\(appversion).\(buildVersion)"
        
        print(version)
        return version
    }
}
