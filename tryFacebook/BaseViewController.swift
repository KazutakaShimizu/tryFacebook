//
//  BaseViewController.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/20.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, TabBarDelegate {
    var lastContentOffset: CGFloat = 64

    lazy var tabBar: TabBar = {
        let tb = TabBar.init(frame: CGRect.init(x: 0, y: self.view.frame.size.height - 50 , width: self.view.frame.size.width, height: 50))
        tb.parentVc = self.nibName
        tb.delegate = self
        return tb
    }()
    lazy var searchBar: UISearchBar = {
        let sb = UISearchBar.init(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        return sb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customaization()
    }
    
    private func customaization(){
        self.view.addSubview(self.tabBar)
        self.extendedLayoutIncludesOpaqueBars = true
        self.navigationItem.titleView = searchBar
        
//        let postButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 35))
//        postButton.setImage(UIImage.init(named: "searchFriendsIcon"), for: .normal)
//        let postButtonItem = UIBarButtonItem.init(customView: postButton)
//        navigationItem.hidesBackButton = true
//        navigationItem.rightBarButtonItem = postButtonItem
        
//        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(BaseViewController.handlePan(_:)))
//        gestureRecognizer?.maximumNumberOfTouches = 1
//        gestureRecognizer?.delegate = self
//        scrollableView.addGestureRecognizer(gestureRecognizer!)

    }
    
    func didSelectItem(atIndex: Int) {
        switch atIndex {
        case 1:
            self.navigationController?.pushViewController(TimelineViewController(), animated: false)
        case 2:
            self.navigationController?.pushViewController(ActivityViewController(), animated: false)
        case 3:
            self.navigationController?.pushViewController(ActivityViewController(), animated: false)
        case 4:
            self.navigationController?.pushViewController(ActivityViewController(), animated: false)
        default:
            print("cant")
        }
    }
    
//    gesturerecognizerを使う
//    継承先のビューがscrollVIewなら、didscroll内でこいつを呼び出すようにする
    func handleNavBar(scrollableView: UIScrollView){
        let delta = scrollableView.contentOffset.y - lastContentOffset
        self.lastContentOffset =  scrollableView.contentOffset.y
        
        if delta > 0 {
            self.navigationController?.navigationBar.isHidden = true
        }else{
            if delta < -30 {
                self.navigationController?.navigationBar.isHidden = false
            }
        }
    }
}
