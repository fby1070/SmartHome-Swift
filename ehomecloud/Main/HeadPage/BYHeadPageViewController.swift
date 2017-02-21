//
//  BYHeadPageViewController.swift
//  ehomecloud
//
//  Created by eastsoft_fuby on 2017/2/8.
//  Copyright © 2017年 eastsoft_fuby. All rights reserved.
//

import UIKit

class BYHeadPageViewController: BYViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView = UITableView.init(frame: CGRect(x:0 ,y:0 ,width:0 ,height:0), style: UITableViewStyle.grouped)
    
    let dataCenter = BYDataCenter.sharedDataCenter
    
    var securityLinkageArray = [BYDefenceModel]()
    
    var intelligentControlArray = [Any]()
    
    var sceneArray = [BYSceneModel]()
    
    let BYCollectionViewCellHight = 100
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.groupTableViewBackground
        self.initTableView()
        self.loadDataSource()
        
    }
    
    func initTableView() {
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(3)
            make.left.equalTo(self.view).offset(5)
            make.right.equalTo(self.view).offset(-5)
            make.bottom.equalTo(self.view)
        }
        tableView.delegate = self
        tableView.dataSource = self
        let deviceControlNib = UINib.init(nibName: "BYControlDeviceTableViewCell", bundle: nil)
        tableView.register(deviceControlNib, forCellReuseIdentifier: "BYControlDeviceTableViewCell")
        
        
    }
    
    func loadDataSource() {
        securityLinkageArray = dataCenter.getSecurityLinkageArray()
        intelligentControlArray = dataCenter.getIntelligentControlArray()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = 20 + BYCollectionViewCellHight * (intelligentControlArray.count / 4)
        
        return CGFloat(height)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("BYHeadPageTableVIewHeaderView", owner: nil, options: nil)?.first as! BYHeadPageTableVIewHeaderView
        headerView.nameLabel.text = "智能控制"
        return headerView
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "BYHeadPageViewCell")
//        if cell == nil {
//            cell = UITableViewCell.init(style: .default, reuseIdentifier: "BYHeadPageViewCell")
//        }
        let cell = BYControlDeviceTableViewCell()
        cell.controlDeviceArray = self.intelligentControlArray
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
