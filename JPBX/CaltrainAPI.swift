//
//  CaltrainAPI.swift
//  JPBX
//
//  Created by Gabriel Rinaldi on 7/5/14.
//  Copyright (c) 2014 Gabriel Rinaldi. All rights reserved.
//

import UIKit

class CaltrainAPI: NSObject {
    let baseURL = "http://services.my511.org/Transit2.0/"
    let token = "66a25e8c-6935-4a9a-a41c-08ad85681cf6"
    let urlSession = NSURLSession.sharedSession()
    
    func requestEndpoint(endpoint: String) {
        var url = NSURL.URLWithString("\(baseURL)\(endpoint)?token=\(token)&routeIDF=Caltrain~LIMITED~NB")
        var urlRequest = NSURLRequest(URL: url)
        
        urlSession!.dataTaskWithRequest(urlRequest, completionHandler: {
            (data: NSData!, response: NSURLResponse!, error: NSError!) in
            var dataString = NSString(data: data, encoding: NSUTF8StringEncoding)
            println(dataString)
            println(response)
            println(error)
        }).resume()
    }
}
