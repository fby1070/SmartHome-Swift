//
//  BYTabBarViewController.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/1/13.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backView = UIView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 49))
        backView.backgroundColor = UIColor.white
        self.tabBar.insertSubview(backView, at: 0)
        self.tabBar.isOpaque = true
        
        let headPageVC = BYHeadPageViewController()
        self.setTabBarStyle(viewController: headPageVC, normalImage: "tabbar_home_page_default_icon", selectedImage: "tabbar_home_page_selected_icon", title: "首页")
        
        let roomPageVC = BYRoomPageViewController()
        self.setTabBarStyle(viewController: roomPageVC, normalImage: "tabbar_room_default_icon", selectedImage: "tabbar_room_selected_icon", title: "房间")
        
        let voicePageVC = BYVoicePageViewController()
        self.setTabBarStyle(viewController: voicePageVC, normalImage: "tabbar_home_page_default_icon", selectedImage: "tabbar_home_page_selected_icon", title: "语音")
        
        let settingPageVC = BYSettingPageViewController()
        self.setTabBarStyle(viewController: settingPageVC, normalImage: "tabbar_device_manage_default_icon", selectedImage: "tabbar_device_manage_selected_icon", title: "设置")
    }
    
    func setTabBarStyle(viewController:UIViewController, normalImage:String, selectedImage:String, title:String) {
        var normal = UIImage(named:normalImage)
        var select = UIImage(named:selectedImage)
        normal = normal?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        select = select?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        viewController.tabBarItem.image = normal
        viewController.tabBarItem.selectedImage = select
        viewController.title = title
        let navigationController = UINavigationController.init(rootViewController: viewController)
        navigationController.navigationBar.barTintColor = UIColor.white
        
        // 设置文字的样式
        let selectedTextAttrs:Dictionary = [NSForegroundColorAttributeName:UIColor.red,
                                            NSFontAttributeName:UIFont.systemFont(ofSize: 15.0)]
        viewController.navigationController?.tabBarItem.setTitleTextAttributes(selectedTextAttrs, for: UIControlState.selected)
        
        
        self.addChildViewController(navigationController)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
