//
//  FirstStoryCell.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/04/02.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class FirstStoryCell: UICollectionViewCell {
    @IBOutlet var mailImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mailImageView.layer.cornerRadius = 25
        mailImageView.layer.masksToBounds = true
        mailImageView.layer.borderColor = UIColor.gray.cgColor
        mailImageView.layer.borderWidth = 1
    }

}
