//
//  HTTP.swift
//  SwURL
//
//  Created by Phil Cole on 10/29/18.
//  Copyright © 2018 Phil Cole. All rights reserved.
//

import Foundation

protocol HTTPTask {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any] { get }
    var headers: [String: Any] { get }
}

enum HTTPMethod {
    case get, head, post, put, delete, connect, options, trace, patch
}
