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

}
