//
//  NavigationController.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/26.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController, UIGestureRecognizerDelegate {    
    override func viewDidLoad() {
        super.viewDidLoad()
        customaization()
    }    
    private func customaization(){
        self.navigationBar.isTranslucent = false
        self.navigationBar.barTintColor = UIColor.rgb(r: 59, g: 83, b: 153, alpha: 1)
    }

    
}
