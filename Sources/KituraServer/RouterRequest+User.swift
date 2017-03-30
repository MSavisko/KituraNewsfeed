//
//  RouterRequest+User.swift
//  KituraNewsfeed
//
//  Created by Anton on 30.03.17.
//
//

import Kitura
import Newsfeed

extension RouterRequest {
    var user: UserModel? {
        return self.userInfo["user"] as? UserModel
    }
}
