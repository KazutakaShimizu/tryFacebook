//
//  Post.swift
//  tryTwitterUI
//
//  Created by 清水一貴 on 2017/01/14.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import Foundation


class Post {
    var post: String!
    var postedAt: String!
    var postImage: String?
    var like: Int!
    var user: User!
    init(post: String, postedAt: String, postImage: String?,like: Int, user: User) {
        self.post = post
        self.postedAt = postedAt
        self.postImage = postImage
        self.like = like
        self.user = user
    }
}
