//
//  BYActionModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/8.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYActionModel: BYModel
{
    enum BYActionType : Int {
        case byActionMobile
        case byActionControlDevice
        case byActionDefence
    }
    
    enum BYActionDefenceState : Int {
        case byaActionDefenceDisable
        case byActionDefenceEnable
    }
    
    var type:BYActionType
    
    var notice:String?
    
    var deviceKey:String?
    
    var cmdStr:String?
    
    var functionDictionary:Dictionary<String,Any>?
    
    var defenceId:String?
    
    var defenceState:BYActionDefenceState
    
    var operationDescription:String?
    
    init(dictionary:Dictionary<String,Any>)
    {
        let type = dictionary["type"] as! String?
        if type == "mobile"
        {
            self.type = BYActionType.byActionMobile
        }
        else if type == "controlDevice"
        {
            self.type = BYActionType.byActionControlDevice
        }
        else
        {
            self.type = BYActionType.byActionDefence
        }
        self.notice = dictionary["notice"] as! String?
        self.deviceKey = dictionary["deviceKey"] as! String?
        self.cmdStr = dictionary["cmdStr"] as! String?
        self.functionDictionary = dictionary["functionDictionary"] as! Dictionary?
        self.defenceId = dictionary["defenceId"] as! String?
        let defenceState = dictionary["defenceState"] as! String?
        let state = dictionary["defenceState"] as! String?
        if state == "enable"
        {
            self.defenceState = BYActionDefenceState.byActionDefenceEnable
            self.operationDescription = "布防"
        }
        else
        {
            self.defenceState = BYActionDefenceState.byaActionDefenceDisable
            self.operationDescription = "撤防"
        }
        let dic = ["defenceState":defenceState]
        self.functionDictionary = dic
    }
    
    func encode() -> Dictionary<String,Any>?
    {
        if self.type ==  BYActionType.byActionMobile
        {
            let dic = ["sort": "0", "type":"mobile", "notice":self.notice]
            return dic
        }
        else if self.type == BYActionType.byActionControlDevice
        {
            let dic = ["sort": "0", "type":"controlDevice","deviceKey":self.deviceKey!,"cmd":self.cmdStr!,"function":self.functionDictionary!] as [String : Any]
            return dic
        }
        else if self.type == BYActionType.byActionDefence
        {
            var defenceState = ""
            if self.defenceState == BYActionDefenceState.byActionDefenceEnable
            {
                defenceState = "enable"
            }
            else
            {
                defenceState = "disable"
            }
            let dictionary = ["sort": "0", "type":"defence","defenceId":self.defenceId,"defenceState":defenceState] as [String : Any]
            return dictionary
        }
        return nil
    }
    
}
