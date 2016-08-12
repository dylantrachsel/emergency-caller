//
//  ServerInterface.swift
//  EmergencyCaller
//
//  Created by Dylan Trachsel on 8/11/16.
//  Copyright © 2016 Dylan And Matt. All rights reserved.
//

import Foundation

struct ServerInterface {
    static func callRequest() {
        
        let defaultSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        let url = Constants.callURL
        
        let dataTask = defaultSession.dataTaskWithURL(url!) {
            data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            }
            else if let httpResponse = response as? NSHTTPURLResponse {
                if httpResponse.statusCode == 200 {
                    // PARSE RESPONSE
                }
            }
        }
        
        dataTask.resume()
    }
    
    static func textRequest() {
        let defaultSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        let url = Constants.textURL
        
        let dataTask = defaultSession.dataTaskWithURL(url!) {
            data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            }
            else if let httpResponse = response as? NSHTTPURLResponse {
                if httpResponse.statusCode == 200 {
                    // PARSE RESPONSE
                }
            }
        }
        
        dataTask.resume()
    }
}
