//
//  AuthMiddleware.swift
//  KituraNewsfeed
//
//  Created by Anton on 30.03.17.
//
//

import Foundation
import Authorization
import Newsfeed
import Kitura
/**
 * RouterMiddleware can be used for intercepting requests and handling custom behavior
 * such as authentication and other routing
 */
class AuthMiddleware: RouterMiddleware {
    func handle(request: RouterRequest, response: RouterResponse, next: @escaping () -> Void) {
        guard let xWSSE = request.headers["X-WSSE"],
            let authorization = request.headers["Authorization"] else {
                next()
                return
        }
        
        let wsse = WSSE(xwsse: xWSSE, authorization: authorization)
        guard wsse.isValid else {
            try? response.sendFailedResponse(messages: ["Invalid token"], code: 2)
            try? response.end()
            return
        }
        
        guard !wsse.isExpired else {
            try? response.sendFailedResponse(messages: ["Expired token"], code: 3)
            try? response.end()
            
            return
            
        }
        
        guard let user = UserModel(connect).user(username: wsse.userName) else {
            try? response.sendFailedResponse(messages: ["Invalid token"], code: 2)
            try? response.end()
            return
            
        }
        
        if wsse.validatePassword(secret: user.salt) {
            request.userInfo["user"] = user
        }
        
        next()
    }
}
