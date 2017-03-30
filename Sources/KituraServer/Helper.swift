//
//  Helper.swift
//  KituraNewsfeed
//
//  Created by Anton on 30.03.17.
//
//

import Foundation

func successResponse(data:Any) -> [String: Any] {
    var response = [String: Any]()
    response["status"] = "success"
    response["data"] = data
    return response
}

func failResponse(messages:[String], code:Int) -> [String: Any] {
    var response = [String: Any]()
    response["status"] = "error"
    response["code"] = "\(code)"
    response["messages"] = messages
    return response
}
