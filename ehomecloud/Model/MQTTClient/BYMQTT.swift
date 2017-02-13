//
//  BYMQTT.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/11.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit
import MQTTFramework

class BYMQTT: NSObject,MQTTSessionDelegate {
    static var shared = BYMQTT()
    let dataCenter = BYDataCenter.sharedDataCenter
    
    var session:MQTTSession
    
    var sessionConnected = false;
    var sessionError = false;
    var sessionReceived = false;
    var sessionSubAcked = false;
    
    
     override init() {
        self.session = MQTTSession()
        self.session.clientId = "1231231"
        self.session.userName = dataCenter.loginModel.mqttUserName
        self.session.password = dataCenter.loginModel.mqttUserPassword
        
    }
    
    func connectMqtt(success:@escaping () -> (),faild:@escaping () -> ()) {
        self.session.delegate = self
        let timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(BYMQTT.connectTimeoutAction), userInfo: nil, repeats: false)
        
        DispatchQueue.global().async {
            //开始执行异步任务
            self.session.connect(toHost: "iot.eastsoft.com.cn", port: 1883, usingSSL: false) { (error) in
                if((error) == nil)
                {
                    timer.invalidate()
                    DispatchQueue.main.async {
                        //回到主线程
                        sleep(1)
                        self.initSubscibeTopic()
                        print("mqtt连接成功")
                        success()
                    }
                }
                else
                {
                    DispatchQueue.main.async {
                        //回到主线程
                        print("mqtt连接失败")
                        faild()
                        
                    }
                }
            }
        }
        
    }
    
    func connectTimeoutAction()  {
        self.disconnectMqtt()
    }
    
    func disconnectMqtt() {
        self.session.disconnect()
    }
    
    func initSubscibeTopic() {
        let dataCenter = BYDataCenter.sharedDataCenter
        
        //订阅网关
        for gatewayModel  in dataCenter.gatewayArray  {
            let gatawayTopic = dataCenter.loginModel.domain! + "/" + gatewayModel.deviceKey!
            print("订阅：\(gatawayTopic)")
            self.session.subscribe(toTopic: gatawayTopic, at: .atLeastOnce)
        }
        
        //订阅室内机
        for inDoorModel in dataCenter.inDoorArray {
            let inDoorTopic = dataCenter.loginModel.domain! + "/" + inDoorModel.deviceKey!
            print("订阅：\(inDoorTopic)")
            self.session.subscribe(toTopic: inDoorTopic, at: .atLeastOnce)
        }
        
        //订阅同步
        let sync = dataCenter.loginModel.domain! + "/business/sync"
        print("订阅：\(sync)")
        self.session.subscribe(toTopic: sync, at: .atLeastOnce)
    }

}
