//
//  MainViewController.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/04/01.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

//遷移するときは必ずこのvcをよんで、遷移先のvcとカメラビューをchildViewに追加してレンダリングする
class MainViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customaization()
    }
    
    private func customaization(){
        self.scrollView.delegate = self
        scrollView.contentSize = CGSize(width: view.frame.size.width * 2, height: view.frame.size.height)
        setUpTimeline()
    }
    
    private func setUpTimeline(){
        let timelineVc = TimelineViewController()
        let cammeraVc = CammeraViewController()
        self.addChildViewController(timelineVc)
        self.addChildViewController(cammeraVc)
        timelineVc.view.frame = CGRect(x: view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        cammeraVc.view.frame = view.frame
        scrollView.addSubview(timelineVc.view)
        scrollView.addSubview(cammeraVc.view)
        scrollView.contentOffset.x = view.frame.size.width
        timelineVc.didMove(toParentViewController: self)
        cammeraVc.didMove(toParentViewController: self)
    }
    
    public func presentNextViewController(to: UIViewController){
        for childVc in childViewControllers {
            childVc.willMove(toParentViewController: nil)
            childVc.view.removeFromSuperview()
            childVc.removeFromParentViewController()
        }
        let nextVc = to
        let cammeraVc = CammeraViewController()
        self.addChildViewController(nextVc)
        self.addChildViewController(cammeraVc)
        nextVc.view.frame = CGRect(x: view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        cammeraVc.view.frame = view.frame
        scrollView.addSubview(nextVc.view)
        scrollView.addSubview(cammeraVc.view)
        scrollView.contentOffset.x = view.frame.size.width
        nextVc.didMove(toParentViewController: self)
        cammeraVc.didMove(toParentViewController: self)
        print(childViewControllers)
    }
//    ページ遷移するメソッドを実装し、おやビューをたどって呼び出す？
}

//縦にスクロールできないようにする
extension MainViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var p = scrollView.contentOffset
        p.y = 0
        scrollView.contentOffset = p
    }
}
