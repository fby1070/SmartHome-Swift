//
//  BYAlamofire.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/2.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit
import Alamofire


class BYAlamofire: NSObject {
    
    fileprivate let ESACloudURL = "api.ehomeclouds.com.cn"
    
    fileprivate let ESACloudURLPort = "10443"
    
    fileprivate let ESATransferProtoco = "https"
    
//    fileprivate let ESACloudURL = "129.1.18.18"
//    
//    fileprivate let ESACloudURLPort = "8080"
//    
//    fileprivate let ESATransferProtoco = "http"
    
    
    //单例
    static let sharedAlamoFire = BYAlamofire()

    
    //初始化私有
    fileprivate override init() {
        
    }

    
    func postWithUrl(_ parameters: BYHttpModeParameter, successed:@escaping (_ responseObject: AnyObject?,_ headerVaue:Dictionary<String,Any>) -> (), failed:  @escaping (_ error: NSError?) -> ()) {
        let url = ESATransferProtoco + "://" + getURL() + parameters.supportURL()
        print("url:\(url)")
        parameters.customSecurityPolicy()
        print(parameters.encode())
        
        Alamofire.request(url, method: .post, parameters: parameters.encode(), encoding: JSONEncoding.default, headers: parameters.getHeaders()).responseJSON
            {
                
                data in
                if data.result.isSuccess
                {
                    let headers = data.response?.allHeaderFields as! Dictionary<String,Any>?
                    successed(data.result.value as AnyObject?,headers!)
//                    print(data.result.value!)
                }
                else
                {
                    failed(data.result.error as NSError?)
                    print("失败")
//                    print(data.result.error as! NSError)
                    
                }
                print(data)
        }
    }
    
    func putWithUrl(_ parameters: BYHttpModeParameter, successed:@escaping (_ responseObject: AnyObject?,_ headerVaue:Dictionary<String,Any>) -> (), failed:  @escaping (_ error: NSError?) -> ()) {
        let url = ESATransferProtoco + "://" + getURL() + parameters.supportURL()
        print("url:\(url)")
        parameters.customSecurityPolicy()
        print(parameters.encode())
        Alamofire.request(url, method: .put, parameters: parameters.encode(), encoding: JSONEncoding.default, headers: parameters.getHeaders()).responseJSON
            {
                
                (data) in
                if data.result.isSuccess
                {
                    let headers = data.response?.allHeaderFields as! Dictionary<String,Any>?
                    successed(data.result.value as AnyObject?,headers!)
                    
                    //                    print(data.result.value!)
                }
                else
                {
                    failed(data.result.error as NSError?)
                    print("失败")
                    //                    print(data.result.error as! NSError)
                    
                }
                print(data)
        }
    }
    
    func getURL() -> String {
        return "\(ESACloudURL):\(ESACloudURLPort)"
    }
}
