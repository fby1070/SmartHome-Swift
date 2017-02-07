//
//  BYDefenceModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYDefenceModel: BYModel {
    
    var houseId:Int?
    
    var defenceId:Int?
    
    var defaultDefence:Int?
    
    var defenceCode:CLongLong?  //类型相当于C中的 long long
    
    var alias:String?
    
    var delayTime:String?
    
    var sensorList:Array<Any>?
    
    var alarmList:Array<Any>?
    
    var defenceList:Array<Any>?
    
    var releaseList:Array<Any>?

    
    
    init(dictionary:Dictionary<String, Any>)
    {
        self.houseId = dictionary["houseId"] as! Int?
        self.defenceId = dictionary["defenceId"] as! Int?
        if dictionary["defaultDefence"] == nil
        {
            self.defaultDefence = 1; // 0为默认防区，1为普通防区
        }
        else
        {
            self.defaultDefence = dictionary["defaultDefence"] as! Int?
        }
        self.alias = dictionary["alias"] as! String?
        self.delayTime = (dictionary["delayTime"] as! NSNumber?)?.stringValue
        self.sensorList = dictionary["sensorList"] as! Array<Any>?
        self.alarmList = dictionary["alarmList"] as! Array<Any>?
        self.defenceList = dictionary["defenceList"] as! Array<Any>?
        self.releaseList = dictionary["releaseList"] as! Array<Any>?

        
    }
}
