//
//  TimelineViewController.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/20.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class TimelineViewController: BaseViewController {
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 120
        tableView.rowHeight = UITableViewAutomaticDimension
        let nib = UINib(nibName: "TimelinePostCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TimelinePost")
        let nib2 = UINib(nibName: "TimelineCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "Timeline")
    }
}

extension TimelineViewController: UITableViewDelegate, UITableViewDataSource {
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimelinePost", for: indexPath) as! TimelinePostCell
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Timeline", for: indexPath) as! TimelineCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.handleNavBar(scrollableView: scrollView)
    }
}

