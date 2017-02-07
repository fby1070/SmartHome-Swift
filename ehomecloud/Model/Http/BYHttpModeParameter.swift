//
//  BYHttpModeParameter.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/4.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit
import Alamofire


class BYHttpModeParameter: NSObject {
    
    override init() {
        super.init()
    }
    
    func encode() -> Dictionary<String, Any> {
        let dictionary = [String : Any]()
        return dictionary
    }
    
    func supportURL() -> String {
        let url = ""
        return url
    }
    
    func getHeaders() -> HTTPHeaders {
        var headers:HTTPHeaders = HTTPHeaders()
        let dataCenter = BYDataCenter.sharedDataCenter
        headers = ["userId":dataCenter.loginModel.userId!,"token":dataCenter.loginModel.token!,"transactionId":"transactionId"]
        return headers
    }
    
    func customSecurityPolicy() {
        let manager = SessionManager.default
        manager.delegate.sessionDidReceiveChallenge = { session,challenge in
            if challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust
            {
                print("服务端证书认证！")
                let serverTrust:SecTrust = challenge.protectionSpace.serverTrust!
                let certificate = SecTrustGetCertificateAtIndex(serverTrust, 0)!
                let remoteCertificateData
                    = CFBridgingRetain(SecCertificateCopyData(certificate))!
                let cerPath = Bundle.main.path(forResource: "api.ehomeclouds.com.cn", ofType: "cer")!
                let cerUrl = URL(fileURLWithPath:cerPath)
                let localCertificateData = try! Data(contentsOf: cerUrl)
                if (remoteCertificateData.isEqual(localCertificateData) == true) {
                    
                    let credential = URLCredential(trust: serverTrust)
                    challenge.sender?.use(credential, for: challenge)
                    return (URLSession.AuthChallengeDisposition.useCredential,
                            URLCredential(trust: challenge.protectionSpace.serverTrust!))
                    
                } else {
                    return (.cancelAuthenticationChallenge, nil)
                }
            }
            return (.cancelAuthenticationChallenge, nil)
        }
    }
    
    
    
    
}
