//
//  BYControlDeviceCollectionViewCell.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/2/13.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYControlDeviceCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var alarmImageView: UIImageView!
    
    var device:Any?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func initView()  {
        if device is BYDeviceModel {
            let deviceModel = device as! BYDeviceModel
            titleLabel.text = deviceModel.alias
            iconImageView.image = UIImage(named:deviceModel.deviceOnlineIconName())
        }
        else if device is BYVirtualDeviceModel{
            let vdeviceModel = device as! BYVirtualDeviceModel
            titleLabel.text = vdeviceModel.alias
            iconImageView.image = UIImage(named:vdeviceModel.switchOnIcon())
        }

    }

}
