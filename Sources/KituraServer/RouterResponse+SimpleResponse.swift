//
//  RouterResponse+SimpleResponse.swift
//  KituraNewsfeed
//
//  Created by Anton on 30.03.17.
//
//

import Kitura
import SwiftyJSON

extension RouterResponse {
    func sendSuccessReponseWithCurrentPath(request: RouterRequest) throws {
        headers["Content-Type"] = "application/json"
        var data = [String: String]()
        data["path"] = request.urlURL.absoluteString
        try send(json: JSON(successResponse(data: data))).end()
    }
    
    func sendFailedResponse(messages: [String], code: Int) throws {
        headers["Content-Type"] = "application/json"
        try send(json: JSON(failResponse(messages: messages, code: code))).end()
    }
    
    func sendUnauthorized() throws {
        status(.unauthorized)
        headers["Content-Type"] = "application/json"
        try send(json: JSON(failResponse(messages: ["Unauthorized"], code: 401))).end()
    }
}
