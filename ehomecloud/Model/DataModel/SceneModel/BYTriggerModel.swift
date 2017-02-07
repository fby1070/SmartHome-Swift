//
//  BYTriggerModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/8.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYTriggerModel: BYModel
{

    enum BYTriggerType : Int {
        case byTriggerTiming
        case byTriggerClick
        case byTriggerDevice
    }
    
    var type:BYTriggerType
    
    var time:String?
    
    var deviceKey:String?
    
    var functionDictionary:Dictionary<String,Any>?
    
    var name:String?
    
    var iconName:String?
    
    init(dictionary:Dictionary<String,Any>)
    {
        let type = dictionary["type"] as! String?
        if type == "timing"
        {
            self.type = BYTriggerType.byTriggerTiming
            self.name = "定时"
            self.iconName = "intelligent_scene_timing"
        }
        else if type == "click"
        {
            self.type = BYTriggerType.byTriggerClick
            self.name = "点击执行"
            self.iconName = "intelligent_scene_click"
        }
        else
        {
            self.type = BYTriggerType.byTriggerDevice
        }
        self.deviceKey = dictionary["deviceKey"] as! String?
        self.functionDictionary = dictionary["functionDictionary"] as! Dictionary?
        self.time = dictionary["time"] as! String?
        
    }
    
    func encode() -> Dictionary<String,Any>
    {
        if self.type == BYTriggerType.byTriggerTiming
        {
            let dictionary = ["type":"timing","time":self.time]
            return dictionary
            
        }
        else if self.type == BYTriggerType.byTriggerClick
        {
            let dictionary = ["type":"click",]
            return dictionary
        }
        else
        {
            let dictionary = ["type":"device","deviceKey":self.deviceKey!,"function":self.functionDictionary!] as [String : Any]
            return dictionary
        }
        
    }
    
}
