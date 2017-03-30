//
//  RouteCreator.swift
//  KituraNewsfeed
//
//  Created by Anton on 27.03.17.
//
//

import Kitura
import LoggerAPI
import HeliumLogger

let handler = Handler()

public struct RouteCreator {
    public static func create(_ root: String = "/api/v1") -> Router {
        let router = Router()

        router.all(middleware: AuthMiddleware())

        router.get("\(root)/services", handler: handler.handleGetServices)
        
        router.post("\(root)/registration", handler: handler.handlePostRegistration)
        router.get("\(root)/logout", handler: handler.handleGetLogout)
        router.get("\(root)/user/tags", handler: handler.handleGetUsersTags)
        router.post("\(root)/user/tags", handler: handler.handlePostUsersTags)
        router.delete("\(root)/user/tags", handler: handler.handleDeleteUsersTags)
        
        router.get("\(root)/articles", handler: handler.handleGetArticles)
        router.get("\(root)/articles/{article_id}/read", handler: handler.handleGetArticleMarkAsRead)
        router.get("\(root)/articles/{article_id}/unread", handler: handler.handleGetArticleMarkAsUnread)
        
        return router
    }
}
