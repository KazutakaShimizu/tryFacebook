//
//  Post.swift
//  tryTwitterUI
//
//  Created by 清水一貴 on 2017/01/14.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import Foundation


class PopupMenu {
    var title: String!
    var description: String?
    var image: String?
    init(title: String, description: String?, image: String?) {
        self.title = title
        self.description = description
        self.image = image
    }
}
