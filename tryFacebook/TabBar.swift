//
//  TabBar.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/20.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

protocol TabBarDelegate {
    func didSelectItem(atIndex: Int)
}

class TabBar: UIView {
    var delegate: TabBarDelegate?
    var timelineButton: UIButton!
    var friendsButton: UIButton!
    var messageButton: UIButton!
    var activityButton: UIButton!
    var menuButton: UIButton!
    var parentVc: String! {
        didSet{
            setUpUI(parentVc: parentVc)
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(parentVc: String){
        self.backgroundColor = .white
        let barButtonWidth = self.frame.size.width / 5
//        tabBarを生成する際に値を受け取り、ボタンの画像の設定を分岐させる
        timelineButton = UIButton(frame: CGRect(x: 0, y: 0, width: barButtonWidth, height: 50))
        friendsButton = UIButton(frame: CGRect(x: barButtonWidth, y: 0, width: barButtonWidth, height: 50))
        messageButton = UIButton(frame: CGRect(x: barButtonWidth*2, y: 0, width: barButtonWidth, height: 50))
        activityButton = UIButton(frame: CGRect(x: barButtonWidth*3, y: 0, width: barButtonWidth, height: 50))
        menuButton = UIButton(frame: CGRect(x: barButtonWidth*4, y: 0, width: barButtonWidth, height: 50))
        
        switch parentVc {
        case "TimelineViewController":
            timelineButton.setBackgroundImage(UIImage(named: "activeTimelineIcon"), for: .normal)
            friendsButton.setBackgroundImage(UIImage(named: "friendsIcon"), for: .normal)
            messageButton.setBackgroundImage(UIImage(named: "messangerIcon"), for: .normal)
            activityButton.setBackgroundImage(UIImage(named: "activityIcon"), for: .normal)
            menuButton.setBackgroundImage(UIImage(named: "menuIcon"), for: .normal)
        case "FriendsViewController":
            timelineButton.setBackgroundImage(UIImage(named: "timelineIcon"), for: .normal)
            friendsButton.setBackgroundImage(UIImage(named: "activeFriendsIcon"), for: .normal)
            messageButton.setBackgroundImage(UIImage(named: "messangerIcon"), for: .normal)
            activityButton.setBackgroundImage(UIImage(named: "activityIcon"), for: .normal)
            menuButton.setBackgroundImage(UIImage(named: "menuIcon"), for: .normal)
        case "ActivityViewController":
            timelineButton.setBackgroundImage(UIImage(named: "timelineIcon"), for: .normal)
            friendsButton.setBackgroundImage(UIImage(named: "friendsIcon"), for: .normal)
            messageButton.setBackgroundImage(UIImage(named: "messangerIcon"), for: .normal)
            activityButton.setBackgroundImage(UIImage(named: "activeActivityIcon"), for: .normal)
            menuButton.setBackgroundImage(UIImage(named: "menuIcon"), for: .normal)
        case "MenuViewController":
            timelineButton.setBackgroundImage(UIImage(named: "timelineIcon"), for: .normal)
            friendsButton.setBackgroundImage(UIImage(named: "friendsIcon"), for: .normal)
            messageButton.setBackgroundImage(UIImage(named: "messangerIcon"), for: .normal)
            activityButton.setBackgroundImage(UIImage(named: "activityIcon"), for: .normal)
            menuButton.setBackgroundImage(UIImage(named: "activeMenuIcon"), for: .normal)
        default:
            timelineButton.setBackgroundImage(UIImage(named: "timelineIcon"), for: .normal)
            friendsButton.setBackgroundImage(UIImage(named: "friendsIcon"), for: .normal)
            messageButton.setBackgroundImage(UIImage(named: "messangerIcon"), for: .normal)
            activityButton.setBackgroundImage(UIImage(named: "activityIcon"), for: .normal)
            menuButton.setBackgroundImage(UIImage(named: "activeMenuIcon"), for: .normal)
        }
        
        timelineButton.addTarget(self, action: #selector(self.timelineButtonTapped(sender:)), for: .touchUpInside)
        friendsButton.addTarget(self, action: #selector(self.friendsButtonTapped(sender:)), for: .touchUpInside)
        messageButton.addTarget(self, action: #selector(self.messageButtonTapped(sender:)), for: .touchUpInside)
        activityButton.addTarget(self, action: #selector(self.activityButtonTapped(sender:)), for: .touchUpInside)
        menuButton.addTarget(self, action: #selector(self.menuButtonTapped(sender:)), for: .touchUpInside)
        self.addSubview(timelineButton)
        self.addSubview(friendsButton)
        self.addSubview(messageButton)
        self.addSubview(activityButton)
        self.addSubview(menuButton)
    }
    
    public func timelineButtonTapped(sender: UIButton){
        delegate?.didSelectItem(atIndex: 1)
    }

    public func friendsButtonTapped(sender: UIButton){
        delegate?.didSelectItem(atIndex: 2)
    }

    
    public func messageButtonTapped(sender: UIButton){
        delegate?.didSelectItem(atIndex: 3)
    }
    
    public func activityButtonTapped(sender: UIButton){
        delegate?.didSelectItem(atIndex: 4)
    }
    
    public func menuButtonTapped(sender: UIButton){
        delegate?.didSelectItem(atIndex: 5)
    }
    
    



}
