//
//  BYSceneModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/7.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYSceneModel: BYModel {

    enum ESAIntelligentSceneState : Int {
        case esaIntelligentSceneDisable
        case esaIntelligentSceneEnable
    }
    
    
    var houseId:Int?
    
    var sceneId:String?
    
    var roomId:String?
    
    var type:Int?
    
    var alias:String?
    
    var triggerList:Array<Any>?
    
    var actionList:Array<Any>?
    
    var state:ESAIntelligentSceneState
    
    var triggerModel:BYTriggerModel?
    
    var actionModel:BYActionModel?
    
    init(dictionary:Dictionary<String, Any>)
    {
        self.houseId = dictionary["houseId"] as! Int?
        self.sceneId = dictionary["sceneId"] as! String?
        self.roomId = dictionary["roomId"] as! String?
        self.type = dictionary["delayTime"] as! Int?
        self.alias = dictionary["alias"] as! String?
        self.triggerList = dictionary["triggerList"] as! Array<Any>?
        self.actionList = dictionary["actionList"] as! Array<Any>?
        if (dictionary["state"] as! String ) == "enable"
        {
            self.state = ESAIntelligentSceneState.esaIntelligentSceneEnable
        }
        else
        {
            self.state = ESAIntelligentSceneState.esaIntelligentSceneDisable
        }
        
        let triggerArray = dictionary["triggerList"] as! Array<Any>?
        for triggerDict in triggerArray!
        {
            self.triggerModel = BYTriggerModel.init(dictionary: triggerDict as! Dictionary<String, Any>)
            self.triggerList?.append(self.triggerModel!)
        }
        
        let actionArray = dictionary["actionList"] as! Array<Any>?
        for actionDict in actionArray!
        {
            self.actionModel = BYActionModel.init(dictionary: actionDict as! Dictionary<String, Any>)
            self.actionList?.append(self.actionModel!)
        }
        
        
    }
}
