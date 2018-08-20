//
//  Timeline.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/13.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

struct Timeline {
    let user: User
    let postTitle: String
    let postStartPlace: String
    let postGoalPlace: String
    let postTopImage: UIImage
    var isLiked: Bool
    var likedCount: Int
    let postComment: String
    let time: String
    
    init(user: User, postTitle: String, postStartPlace: String, postGoalPlace: String, postTopImage: UIImage, isLiked: Bool, likedCount: Int, postComment: String, time: String) {
        self.user = user
        self.postTitle = postTitle
        self.postStartPlace = postStartPlace
        self.postGoalPlace = postGoalPlace
        self.postTopImage = postTopImage
        self.isLiked = isLiked
        self.likedCount = likedCount
        self.postComment = postComment
        self.time = time
    }
}

