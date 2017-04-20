//
//  PostScema.swift
//  tryTwitterUI
//
//  Created by 清水一貴 on 2017/01/14.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import Foundation

class Schema {
    static func createPost() -> [Post]{
        let user1 = User(name: "Kazutaka Shimizu", thumbnail: "profile")
        let user2 = User(name: "Ayaka Nagataki", thumbnail: "user2")

        let post1 = Post(post: "飲み会の前に「これプレゼントな」っていぅてペパリーゼもらうのは初めてだった", postedAt: "1月11日", postImage: "post1", like: 0, user: user1)
        let post2 = Post(post: "僕たちの考え方に賛同して入社した人には、「それは、本当にやりたいの？」「それは世の中を変えるのに何か意味があるの？」とことあるごとに厳しく突っ込みます。精神主義といわれればその通りです。そうしないと個人も伸びないし、会社も目的を達成できません。（ 田中良和 GREE ）", postedAt: "1月14日", postImage: "post2", like: 95, user: user2)
        let post3 = Post(post: "冬でもカヤックができるなんて行くまで知りませんでしたー。 そして冬は空気が澄んでいるのか山から見る景色がとてもきれいでした♪", postedAt: "1月23日", postImage: nil, like: 209, user: user2)
        let post4 = Post(post: "ブロガー、東京都青梅市へ行く。青梅市ってどこにあるの？ 何があるの？ 見どころは？", postedAt: "1月3日",postImage: "post3", like: 14, user: user1)
        var posts = [Post]()
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        posts.append(post4)
        return posts
    }
    
    static func createStory() -> [Story]{
        let user1 = User(name: "Kazutaka Shimizu", thumbnail: "profile")
        let user2 = User(name: "Ayaka Nagataki", thumbnail: "user2")

        let story1 = Story(user: user1)
        let story2 = Story(user: user2)
        let story3 = Story(user: user2)
        let story4 = Story(user: user1)
        let story5 = Story(user: user2)
        var stories = [Story]()
        
        stories.append(story1)
        stories.append(story2)
        stories.append(story3)
        stories.append(story4)
        stories.append(story5)
        return stories
    }

    static func createPopupMenu() -> [PopupMenu]{
        let menu1 = PopupMenu(title: "リンクを保存", description: "保存済みのリンクにこのアイテムを追加", image: nil)
        let menu2 = PopupMenu(title: "投稿を非表示", description: "このような投稿の表示が少なくなります", image: nil)
        let menu3 = PopupMenu(title: "Kazutaka Shimizuのフォローをやめる", description: "投稿はニュースフィードに表示されなくなりますが、友達のままとなります", image: nil)
        let menu4 = PopupMenu(title: "この投稿を報告", description: nil, image: nil)
        let menu5 = PopupMenu(title: "この投稿のお知らせをオンにする", description: nil, image: nil)
        var menues = [PopupMenu]()
        
        menues.append(menu1)
        menues.append(menu2)
        menues.append(menu3)
        menues.append(menu4)
        menues.append(menu5)
        return menues
    }
    
}
