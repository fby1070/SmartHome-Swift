//
//  BYInDoorModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYInDoorModel: BYModel {
    var deviceKey:String?
    
    var sn:String?
    
    var alias:String?
    
    var leaveHomeId:String?
    
    var goHomeId:String?
    
    var typeCode:CUnsignedLongLong? //类型相当于C中的 unsigned long long
    
    var typeName:String?
    
    var codeName:String?
    
    
    var offline:Bool?
    
    
    init(dictionary:Dictionary<String, Any>)
    {
        self.deviceKey = dictionary["deviceKey"] as! String?
        self.sn = dictionary["sn"] as! String?
        self.alias = dictionary["alias"] as! String?
        self.leaveHomeId = dictionary["leaveHomeId"] as! String?
        self.goHomeId = dictionary["goHomeId"] as! String?

        if self.sn != nil {
            let sn:String? = self.sn
            let codeName = sn?.substring(to: (sn?.index((sn?.startIndex)!, offsetBy: 11))!)
            self.typeCode = CUnsignedLongLong.init(codeName!)
            if self.typeCode != nil {
                self.codeName = BYDataInfo.getDeviceType(typecode: self.typeCode!)
            }
        }
        self.typeName = dictionary["typeName"] as! String?
        self.offline = dictionary["offlone"] as! Bool?
    }

}
