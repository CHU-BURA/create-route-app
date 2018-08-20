//
//  User.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/13.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

struct User {
    let userName: String
    let profileImage: String
    
    init(userName: String, profileImage: String) {
        self.userName = userName
        self.profileImage = profileImage
    }
}
