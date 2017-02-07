//
//  BYHttpLoginModel.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/6.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit
import Alamofire

class BYHttpLoginModel: BYHttpModeParameter
{
    var loginModel:BYLoginModel?
    init(dictionary:Dictionary<String, Any>)
    {
        self.loginModel = BYLoginModel.init(dictionary: dictionary)
    }
    
    override init()
    {
        
    }
    
    override func supportURL() -> String
    {
        return "/noauth/user/credential"
    }
    
    override func encode() -> Dictionary<String, Any>
    {
        var dictionary = [String : Any]()
        dictionary["email"] = loginModel?.userLoginName
        dictionary["password"] = loginModel?.userLoginPassword
        return dictionary;
    }
    
    override func getHeaders() -> HTTPHeaders {
        let headers = HTTPHeaders()
        return headers
    }
}
