//
//  PopupTableViewCell.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/04/16.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class PopupTableViewCell: UITableViewCell {
    @IBOutlet var imageVIew: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    var menu: PopupMenu! {
        didSet{
            setUpMenu(menu: menu)
        }
    }
    
    private func setUpMenu(menu: PopupMenu){
        titleLabel.text = menu.title
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }    
}
