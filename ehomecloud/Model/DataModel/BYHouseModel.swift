//
//  BYHouseModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYHouseModel: BYModel {
    
    var houseId:Int?
    
    var name:String?
    
    init(dictionary:Dictionary<String, Any>)
    {
        self.houseId = dictionary["houseId"] as! Int?
        self.name = dictionary["name"] as! String?
    }

}
