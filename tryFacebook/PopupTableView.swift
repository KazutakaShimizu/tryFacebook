//
//  PopupTableView.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/04/16.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class PopupTableView: UIView {
    var tableView: UITableView!
    var menues: [PopupMenu] = Schema.createPopupMenu()

    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(){
        tableView = UITableView(frame: self.frame)
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "PopupTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Popup")
        tableView.rowHeight = UITableViewAutomaticDimension
        self.addSubview(tableView)

    }
}

extension PopupTableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Popup", for: indexPath) as! PopupTableViewCell
        cell.menu = menues[indexPath.row]
        return cell

    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 46
//    }
}
