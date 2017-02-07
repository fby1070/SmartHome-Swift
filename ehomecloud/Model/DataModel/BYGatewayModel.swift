//
//  BYGatewayModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYGatewayModel: BYModel {

    var deviceKey:String?
    
    var sn:String?
    
    var alias:String?
    
    var houseId:Int?
    
    var createTime:String?
    
    var updateTime:String?
    
    var deviceTypeId:Int?
    
    var swVersion:String?
    
    var chipType:String?
    
    var chipSwVersion:String?
    
    var version_collection:String?
    
    var typeCode:CUnsignedLongLong? //类型相当于C中的 unsigned long long
    
    var codeName:String?
    
    var typeName:String?
    
    var offline:Bool?
    
    
    
    init(dictionary:Dictionary<String, Any>)
    {
        self.deviceKey = dictionary["deviceKey"] as! String?
        self.sn = dictionary["sn"] as! String?
        self.alias = dictionary["alias"] as! String?
        self.houseId = dictionary["houseId"] as! Int?
        self.createTime = dictionary["createTime"] as! String?
        self.updateTime = dictionary["updateTime"] as! String?
         self.deviceTypeId = dictionary["deviceTypeId"] as! Int?
         self.swVersion = dictionary["swVersion"] as! String?
         self.chipType = dictionary["chipType"] as! String?
         self.chipSwVersion = dictionary["chipSwVersion"] as! String?
         self.version_collection = dictionary["version_collection"] as! String?
        self.offline = dictionary["offline"] as! Bool?
        self.typeName = dictionary["typeName"] as! String?
        
        let sn:String? = self.sn
        let codeName = sn?.substring(to: (sn?.index((sn?.startIndex)!, offsetBy: 11))!)
        self.typeCode = CUnsignedLongLong.init(codeName!)
        if self.typeCode != nil {
            self.codeName = BYDataInfo.getDeviceType(typecode: self.typeCode!)
        }
    }
}
