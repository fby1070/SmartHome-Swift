//
//  BYLoginModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/6.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYLoginModel: BYModel {
    var token:String?
    var userId:String?
    var userLoginName:String?
    var userLoginPassword:String?
    var mqttUserName:String?
    var mqttUserPassword:String?
    var domain:String?
    
    init(dictionary:Dictionary<String, Any>)  {
        self.userId = (dictionary["id"] as! NSNumber?)?.stringValue
        self.token = dictionary["token"] as! String?
        self.userLoginName = dictionary["userName"] as! String?
        self.userLoginPassword = dictionary["userPassword"] as! String?
        self.mqttUserName = dictionary["brokerName"] as! String?
        self.mqttUserPassword = dictionary["brokerPassword"] as! String?
        self.domain = dictionary["domain"] as! String?
    }
    override init() {
        super.init()
    }

}
