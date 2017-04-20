//
//  BaseViewController.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/20.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, TabBarDelegate, UIGestureRecognizerDelegate {
//    var lastContentOffset: CGFloat = 0
    var scrollableView: UIScrollView?
//    var scrollSpeedFactor: CGFloat = 1
//    var delayDistance: CGFloat = 0
//    var maxDelay: CGFloat = 0
    lazy var tabBar: TabBar = {
        let tb = TabBar.init(frame: CGRect.init(x: 0, y: self.view.frame.size.height - 50 , width: self.view.frame.size.width, height: 50))
        tb.parentVc = self.nibName
        tb.delegate = self
        return tb
    }()
    var mainVc: MainViewController!

    lazy var navBar: UIView = {
        var nb = UIView.init(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 64))
        nb.backgroundColor = UIColor.rgb(r: 59, g: 83, b: 153, alpha: 1)

        let cammeraButton: UIButton = UIButton(frame: CGRect(x: 5, y: (nb.frame.size.height - 25 + UIApplication.shared.statusBarFrame.size.height)/2, width: 30, height: 25))
        cammeraButton.setImage(UIImage.init(named: "cammeraIcon"), for: .normal)
        cammeraButton.addTarget(self, action: #selector(self.presentCammeraVc(_:)), for: .touchUpInside)
        let navigationMessengerButton: UIButton = UIButton(frame: CGRect(x: nb.frame.size.width - 35, y: (nb.frame.size.height - 25 + UIApplication.shared.statusBarFrame.size.height)/2, width: 30, height: 25))
        navigationMessengerButton.setImage(UIImage.init(named: "navigationMessengerIcon"), for: .normal)
        let serchBarWitdth = nb.frame.size.width - (5 + 30) * 2
        let searchBar = UISearchBar(frame: CGRect(x: (nb.frame.size.width - serchBarWitdth)/2, y: (nb.frame.size.height - 30 + UIApplication.shared.statusBarFrame.size.height)/2, width: serchBarWitdth, height: 30))
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "友達、スポット等を検索"
        
        nb.addSubview(cammeraButton)
        nb.addSubview(searchBar)
        nb.addSubview(navigationMessengerButton)

        return nb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customaization()
    }
    
    private func customaization(){
        self.mainVc = self.parent as! MainViewController
        self.view.addSubview(self.tabBar)
        self.view.addSubview(self.navBar)
    }
    
    func presentCammeraVc(_ sender: AnyObject){
        UIView.animate(withDuration: 0.3) { 
            self.mainVc.scrollView.contentOffset.x = 0
        }
    }
    private func setUpNavBar(){
        
        
    }
    
    func didSelectItem(atIndex: Int) {
        switch atIndex {
        case 1:
            let nextVc = TimelineViewController()
            mainVc.presentNextViewController(to: nextVc)
        case 2:
            let nextVc = FriendsViewController()
            mainVc.presentNextViewController(to: nextVc)
        case 3:
            let nextVc = TimelineViewController()
            mainVc.presentNextViewController(to: nextVc)
        case 4:
            let nextVc = ActivityViewController()
            mainVc.presentNextViewController(to: nextVc)
        case 5:
            let nextVc = MenuViewController()
            mainVc.presentNextViewController(to: nextVc)
        default:
            print("cant")
        }
    }
    
//    func setUpNav(scrollableView: UIScrollView){
//        self.scrollableView = scrollableView
//        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(BaseViewController.handlePan(_:)))
//        gestureRecognizer.maximumNumberOfTouches = 1
//        gestureRecognizer.delegate = self
//        scrollableView.addGestureRecognizer(gestureRecognizer)
//    }
//    
//    func handlePan(_ gesture: UIPanGestureRecognizer){
//        if let superview = scrollableView?.superview {
//            let translation = gesture.translation(in: superview)
//            let delta = lastContentOffset - translation.y
//            lastContentOffset = translation.y
//            self.scrollWithDelta(delta)
//        }
//
//    }
//    
//    private func scrollWithDelta(_ delta: CGFloat) {
//        guard let navigationBar = navigationController?.navigationBar else { return }
//        var scrollDelta = delta / scrollSpeedFactor
//        let frame = navigationBar.frame
//        
//        
//        // View scrolling up, hide the navbar
//        if scrollDelta > 0 {
//            // Update the delay
//            delayDistance -= scrollDelta
//            
//            // Skip if the delay is not over yet
//            if delayDistance > 0 {
//                return
//            }
//            
//            // Compute the bar position
//            if frame.origin.y - scrollDelta < -deltaLimit {
//                scrollDelta = frame.origin.y + deltaLimit
//            }
//        }
//        
//        if scrollDelta < 0 {
//            // Update the delay
//            delayDistance += scrollDelta
//            
//            // Skip if the delay is not over yet
//            if delayDistance > 0 && maxDelay < contentOffset.y {
//                return
//            }
//            
//            // Compute the bar position
//            if frame.origin.y - scrollDelta > statusBarHeight {
//                scrollDelta = frame.origin.y - statusBarHeight
//            }
//            
//        }
//        //    このあたりのメソッドが何やってるか調べる
//        //    navbarの高さを変更し、その変更した分のcontentinsetも調整している
//        updateSizing(scrollDelta)
////        updateNavbarAlpha()
////        restoreContentOffset(scrollDelta)
////        updateFollowers(scrollDelta)
//    }
//    
//    private func updateSizing(_ delta: CGFloat) {
////        guard let topViewController = self.topViewController else { return }
//        guard let navigationBar = navigationController?.navigationBar else { return }
//        var frame = navigationBar.frame
//        
//        // Move the navigation bar
//        frame.origin = CGPoint(x: frame.origin.x, y: frame.origin.y - delta)
//        navigationBar.frame = frame
//        
//        // Resize the view if the navigation bar is not translucent
////        if !navigationBar.isTranslucent {
////            let navBarY = navigationBar.frame.origin.y + navigationBar.frame.size.height
////            frame = topViewController.view.frame
////            frame.origin = CGPoint(x: frame.origin.x, y: navBarY)
////            frame.size = CGSize(width: frame.size.width, height: view.frame.size.height - (navBarY) - tabBarOffset)
////            topViewController.view.frame = frame
////        } else {
////            adjustContentInsets()
////        }
//    }
//    
//    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
//        return true
//    }
    

}
