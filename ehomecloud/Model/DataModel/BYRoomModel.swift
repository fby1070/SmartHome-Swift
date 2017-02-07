//
//  BYRoomModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYRoomModel: BYModel {
    var roomName:String?
    
    var roomId:String?
    
    var imageId:Int = 0
    
    var houseId:Int = 0
    
    init(dictionary:Dictionary<String, Any>)
    {
        super.init()
        self.roomName = dictionary["roomName"] as! String?
        self.roomId = dictionary["roomId"] as! String?
        self.imageId = dictionary["imageId"] as! Int
        self.houseId = dictionary["houseId"] as! Int
    }
    
    
    
}
