//
//  Handlers.swift
//  KituraNewsfeed
//
//  Created by Anton on 30.03.17.
//
//

import Foundation
import Kitura
import LoggerAPI
import HeliumLogger
import Newsfeed
import Authorization

class Handler {
    init() { }
}

//MARK: services
extension Handler {
    func handleGetServices(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        try response.sendSuccessReponseWithCurrentPath(request: request)
    }
}

//MARK: users
extension Handler {
    func handlePostRegistration(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
    }
    
    func handleGetLogout(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        if let _ = request.user {
            try response.sendSuccessReponseWithCurrentPath(request: request)
        } else {
        	try response.sendUnauthorized()
        }
    }
    
    func handleGetUsersTags(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        if let _ = request.user {
            try response.sendSuccessReponseWithCurrentPath(request: request)
        } else {
            try response.sendUnauthorized()
        }
    }
    
    func handlePostUsersTags(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        try response.sendSuccessReponseWithCurrentPath(request: request)
    }
    
    func handleDeleteUsersTags(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        try response.sendSuccessReponseWithCurrentPath(request: request)
    }
}

//MARK: articles
extension Handler {
    func handleGetArticles(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        try response.sendSuccessReponseWithCurrentPath(request: request)
    }
    
    func handleGetArticleMarkAsRead(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        try response.sendSuccessReponseWithCurrentPath(request: request)
    }
    
    func handleGetArticleMarkAsUnread(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        try response.sendSuccessReponseWithCurrentPath(request: request)
    }
}


//MARK: options
extension Handler {
    func handleOptions(request: RouterRequest, response: RouterResponse, _ next: @escaping () -> Void) throws -> Void {
        response.status(.OK)
    }
}
