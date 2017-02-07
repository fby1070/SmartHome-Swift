//
//  BYLoginViewController.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2016/12/31.
//  Copyright © 2016年 eastsoft_fuby. All rights reserved.
//

import UIKit
import Alamofire
import SnapKit

class BYLoginViewController: BYViewController {
    
    let alamofire = BYAlamofire.sharedAlamoFire
    
    let dataCenter = BYDataCenter.sharedDataCenter
    
    @IBOutlet weak var uerNameTextField : UITextField!
    
    @IBOutlet weak var passWordTextField : UITextField!
    
    @IBOutlet weak var loginButton : UIButton!
    
    let loadingView = UIView()
    
    let logoImageView = UIImageView()
    
    let nameLabel = UILabel()
    
    let activityIndicatorView = UIActivityIndicatorView()
    
    let cancleButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.addTarget(self, action: #selector(BYLoginViewController.loginButtonClick), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loginButtonClick() {
        self.startShow()
        let httpLoginModel = BYHttpLoginModel()
        let loginModel = BYLoginModel()
        loginModel.userLoginName = "qdeastsoft0532@163.com"
        loginModel.userLoginPassword = "eastsoft"
        httpLoginModel.loginModel = loginModel
        alamofire.postWithUrl( httpLoginModel, successed: { (response,headers) in
            let model = BYLoginModel(dictionary: response as! Dictionary<String, Any>!)
            BYDataCenter.sharedDataCenter.loginModel = model
            let resultCode = headers["resultCode"] as! String?
            if resultCode == "0"
            {
                if headers["token"] != nil
                {
                    self.dataCenter.loginModel.token = headers["token"] as? String
                }
                if headers["userId"] != nil
                {
                    self.dataCenter.loginModel.userId = headers["userId"] as? String
                }
            }
            self.initial()
        }) { (error) in
            self.stopLogin()
        }
        
        
    }
    
    func initial() {
        var initialModel = BYHttpMobileInitialMode()
        alamofire.putWithUrl(initialModel, successed: { (response,headers) in
            initialModel = BYHttpMobileInitialMode.init(dictionary: response as! Dictionary<String, Any>!)
            self.dataCenter.houseArray = initialModel.houseArray
            self.dataCenter.gatewayArray = initialModel.gatewayArray
            self.dataCenter.inDoorArray = initialModel.inDoorArray
            self.dataCenter.roomArray = initialModel.roomArray
            self.dataCenter.defenceArray = initialModel.defenceArray
            self.dataCenter.sceneArray = initialModel.sceneArray
            self.dataCenter.deviceArray = initialModel.deviceArray
            self.dataCenter.vdeviceArray = initialModel.vdeviceArray 
            
            let mqtt = BYMQTT.shared
            mqtt.connectMqtt(success: { 
                //mqtt 连接成功
            }, faild: { 
                //mqtt 连接成失败
            })
        }) { (error) in
            //失败处理
            print("初始化失败")
        }
        
    }
    
    //开始动画
    func startShow() {
        self.creatLoadingView()
        
        UIView.animate(withDuration: 1, animations: { 
            self.logoImageView.isHidden = false
            self.logoImageView.frame = CGRect(x:self.view.center.x - 114.5 ,y:100 ,width:229 ,height:47)
        }) { ( finished:Bool) in
            self.showNameLable()
        }
    }
    
    //显示“东软载波”
    func showNameLable() {
        UIView.animate(withDuration: 1, animations: { 
            self.nameLabel.isHidden = false
            self.nameLabel.frame = CGRect(x:self.view.center.x - 60 ,y:200 ,width:100 ,height:50)
        }) { (finished:Bool) in
            self.showActivityIndicatorView()
        }
    }
    
    //显示按钮和加载图
    func showActivityIndicatorView() {
        UIView.animate(withDuration: 0.5, animations: {
            self.activityIndicatorView.isHidden = false
            self.cancleButton.isHidden = false
        })
    }
    
    func creatLoadingView() {
        
        loadingView.backgroundColor = UIColor.white
        self.view.addSubview(loadingView)
        loadingView.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalTo(self.view)
        }
        
        loadingView.addSubview(logoImageView)
        logoImageView.image = UIImage(named:"login_logo")
        logoImageView.frame = CGRect(x:self.view.center.x - 114.5 ,y:180 ,width:229 ,height:47)
        logoImageView.isHidden = true
        
        loadingView.addSubview(nameLabel)
        nameLabel.text = "东 软 载 波"
        nameLabel.textAlignment = .center
        nameLabel.frame = CGRect(x:0,y:200,width:100,height:50)
        nameLabel.isHidden = true
        
        loadingView.addSubview(activityIndicatorView)
        activityIndicatorView.frame = CGRect(x: self.view.center.x - 20, y: 270, width: 20, height: 20)
        activityIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        activityIndicatorView.hidesWhenStopped = true
        activityIndicatorView.startAnimating()
        activityIndicatorView.isHidden = true
        
        loadingView.addSubview(cancleButton)
        cancleButton.frame = CGRect(x: self.view.center.x - 135, y: 320, width: 262, height: 30)
        cancleButton.setTitle("取消", for: .normal)
        cancleButton.backgroundColor = UIColor.red
        cancleButton.tintColor = UIColor.white
        cancleButton.isHidden = true
        cancleButton.layer.cornerRadius = 5
        cancleButton.addTarget(self, action: #selector(cancleLoginBtn), for: .touchUpInside)
    }
    
    //点击取消按钮
    func cancleLoginBtn() {
        self.stopLogin()
        let mqtt = BYMQTT.shared
        mqtt.disconnectMqtt()
    }
    
    func stopLogin()  {
        self.loadingView.removeFromSuperview()
    }

}
