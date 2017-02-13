//
//  BYHeadPageTableVIewHeaderView.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/2/13.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit
import SnapKit

class BYHeadPageTableVIewHeaderView: UIView {

//    let nameLabel = UILabel()
//    
//    let arrowImageView = UIImageView()
    
    @IBOutlet weak var nameLabel:UILabel!
    
    @IBOutlet weak var arrowImageView:UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
//    required override init(frame: CGRect) {
//        super.init(frame: frame)
//        nameLabel.snp.makeConstraints { (make) in
//            make.left.equalTo(self).offset(10)
//            make.centerY.equalTo(self)
//        }
//        
//        
//        arrowImageView.snp.makeConstraints { (make) in
//            make.right.equalTo(self).offset(-15)
//            make.centerY.equalTo(self)
//        }
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }


}
