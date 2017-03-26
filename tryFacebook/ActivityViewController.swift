//
//  ActivityViewController.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/20.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class ActivityViewController: BaseViewController {

    @IBOutlet var hogeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        hogeLabel.translatesAutoresizingMaskIntoConstraints = false
        hogeLabel.frame.origin.x = 0
    
    }
}
