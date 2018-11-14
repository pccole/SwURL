//
//  Github.swift
//  Example
//
//  Created by Phil Cole on 11/10/18.
//  Copyright © 2018 Phil Cole. All rights reserved.
//

import Foundation
import SwURLiOS



enum Github {
    case getJobs(params: Parameters)
}

extension Github: HTTPTask {

    var baseURL: String {
        switch self {
        case .getJobs:
            return "http://jobs.github.com/"
        }
    }
    
    var path: String {
        return "positions"
    }
    
    var method: HTTPMethod {
        switch self {
        case .getJobs:
            return .get
        }
    }
    
    var parameters: Parameters {
        switch self {
        case .getJobs(let params):
            return params
        }
    }
    
    var headers: [String : Any] {
        return ["Hello": "Good Bye"]
    }
}
