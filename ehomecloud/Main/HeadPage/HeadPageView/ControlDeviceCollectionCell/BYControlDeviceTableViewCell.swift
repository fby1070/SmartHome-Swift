//
//  BYControlDeviceTableViewCell.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/2/13.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit
import SnapKit

class BYControlDeviceTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var collectionView: UICollectionView?
    var controlDeviceArray = [Any]()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = (self.frame.size.width - 20 - 320) / 3
        layout.itemSize = CGSize(width:80, height:100)
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        collectionView = UICollectionView.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50), collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        let nib = UINib.init(nibName: "BYControlDeviceCollectionViewCell", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "BYControlDeviceCollectionViewCell")
        self.addSubview(collectionView!)
        collectionView?.backgroundColor = UIColor.white
        
        collectionView?.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalTo(self)
        }
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return controlDeviceArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    //返回cell 上下左右的间距
    public func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(5, 10, 5, 10)
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = BYControlDeviceCollectionViewCell()
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BYControlDeviceCollectionViewCell", for: indexPath) as! BYControlDeviceCollectionViewCell
        let device = controlDeviceArray[indexPath.row]
        if device is BYDeviceModel {
            let deviceModel = device as! BYDeviceModel
            
            cell.titleLabel.text = deviceModel.alias
            cell.iconImageView.image = UIImage(named: (deviceModel.deviceOnlineIconName()))
        }
        else{
            let vdeviceModel = device as! BYVirtualDeviceModel
            
            cell.titleLabel.text = vdeviceModel.alias
            cell.iconImageView.image = UIImage(named: vdeviceModel.switchOnIcon())
        }
        return cell
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
