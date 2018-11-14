//
//  SwURL.swift
//  SwURL
//
//  Created by Phil Cole on 10/28/18.
//  Copyright © 2018 Phil Cole. All rights reserved.
//

import Foundation



class SwURL<T> where T: HTTPTask {
    
    
    
    /**
        Request takes a HTTPTask to perform a request.
     */
    
    static func request(task: T, completion: (() -> Void)?) {
        guard let url = URL(string: "\(task.baseURL)\(task.path)") else {
            return
        }
        let request = URLRequest(url: url, cachePolicy: task.cachePolicy, timeoutInterval: task.timeoutInterval)
        URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
        }.resume()
    }
}
