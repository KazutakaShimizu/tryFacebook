//
//  StoryCell.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/04/02.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class StoryCell: UICollectionViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    var story: Story! {
        didSet{
            setUpStory(story: story)
        }
    }
    
    private func setUpStory(story: Story){
        userImageView.layer.cornerRadius = 25
        userImageView.layer.masksToBounds = true
        userImageView.layer.borderColor = UIColor.gray.cgColor
        userImageView.layer.borderWidth = 1
        userImageView.image = UIImage(named: story.user.thumbnail)
        
        userNameLabel.text = story.user.name
    }
}
