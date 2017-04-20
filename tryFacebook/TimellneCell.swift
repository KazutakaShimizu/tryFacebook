//
//  TimellineCell.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/22.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

protocol TimelineCellDelegate {
    func showCoverView(point: CGPoint)
}

class TimelineCell: UITableViewCell {
    var post: Post! {
        didSet{
            setUpPost(post: post)
        }
    }
    var delegate: TimelineCellDelegate?
    @IBOutlet var profileImageView: UIButton!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var timeLocationLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var likeIconImageView: UIImageView!
    @IBOutlet var commentLabel: UILabel!
    @IBOutlet var postLabelToLineViewConstraint: NSLayoutConstraint!
    
    private func setUpPost(post: Post){
        profileImageView.setBackgroundImage(UIImage(named: post.user.thumbnail), for: .normal)
        userNameLabel.text = post.user.name
        postLabel.text = post.post
//        画像のありなし
//        いいねのありなし
//        コメントのありなし
        if let image = post.postImage {
            postLabelToLineViewConstraint.isActive = false
            let image = UIImage(named: image)
            postImageView.image = image
        }else{
            postLabelToLineViewConstraint.constant = 41
            postImageView.removeFromSuperview()
        }
//        if post.like == 0{
//            likeIconImageView.removeFromSuperview()
//            likeLabel.removeFromSuperview()
//        }else{
            likeLabel.text = "\(post.like!)件"
//        }
        
    }
    
    @IBAction func menuButtonTapped(_ sender: UIButton) {
        let point = sender.convert(sender.bounds.origin, to: UIApplication.shared.keyWindow)
        delegate?.showCoverView(point: point)
    }

    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
}
