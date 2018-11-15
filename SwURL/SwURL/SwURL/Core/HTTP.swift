//
//  HTTP.swift
//  SwURL
//
//  Created by Phil Cole on 10/29/18.
//  Copyright © 2018 Phil Cole. All rights reserved.
//

import Foundation

public protocol URLString {
    
}

public protocol HTTPTask {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Parameters { get }
    var headers: Headers { get }
    var cachePolicy: URLRequest.CachePolicy { get }
    var timeoutInterval: TimeInterval { get }
}

public extension HTTPTask {
    var cachePolicy: URLRequest.CachePolicy {
        return URLRequest.CachePolicy.useProtocolCachePolicy
    }
    
    var timeoutInterval: TimeInterval {
        return 60
    }
}

public enum HTTPMethod {
    case get, head, post, put, delete, connect, options, trace, patch
}

