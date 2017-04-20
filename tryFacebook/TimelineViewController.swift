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
    var posts: [Post] = Schema.createPost()
    var stories: [Story] = Schema.createStory()
    var coverView: UIView?
    var popUpCoverView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 70
        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 50, right: 0)
        tableView.rowHeight = UITableViewAutomaticDimension
        let nib = UINib(nibName: "TimelineStoryCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TimelineStory")
        let nib2 = UINib(nibName: "TimelinePostCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "TimelinePost")
        let nib3 = UINib(nibName: "TimelineCell", bundle: nil)
        tableView.register(nib3, forCellReuseIdentifier: "Timeline")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.setUpNav(scrollableView: tableView)
    }
}

extension TimelineViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return posts.count + 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineStory", for: indexPath) as! TimelineStoryCell
            cell.stories = stories
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimelinePost", for: indexPath) as! TimelinePostCell
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Timeline", for: indexPath) as! TimelineCell
            cell.delegate = self
            cell.post = posts[indexPath.section - 2]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
}

extension TimelineViewController: TimelineCellDelegate {
    func showCoverView(point: CGPoint) {
        self.coverView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.coverView?.backgroundColor = .black
        self.coverView?.layer.shouldRasterize = true
        self.coverView?.alpha = 0.5
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.hideCoverView(sender:)))
        self.coverView?.addGestureRecognizer(tap)
        self.view.addSubview(self.coverView!)
        //        ここでポップアップの表示も行う

        if point.y < 230 + 60 {
            self.popUpCoverView = UIView(frame: CGRect(x: 0, y: point.y + 15, width: self.view.frame.size.width, height: 230))
        }else{
            self.popUpCoverView = UIView(frame: CGRect(x: 0, y: point.y - 235, width: self.view.frame.size.width, height: 230))
        }
        let popUpTableView = PopupTableView(frame: CGRect(x: 0, y: 0 , width: self.view.frame.size.width, height: 230))
        self.popUpCoverView?.addSubview(popUpTableView)
        self.view.addSubview(self.popUpCoverView!)
    }
    
    internal func hideCoverView(sender: UITapGestureRecognizer){
        guard let coverView = coverView, let popUpCoverView = popUpCoverView else { return }
        coverView.removeFromSuperview()
        popUpCoverView.removeFromSuperview()
        
    }
}
