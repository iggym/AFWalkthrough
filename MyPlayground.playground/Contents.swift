//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
import Alamofire


var str = "Hello, playground"

let testUrl = "https://httpbin.org/get"

PlaygroundPage.current.needsIndefiniteExecution = true

URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

Alamofire.request(testUrl).responseJSON { response in
    print(response.request)  // original URL request
    print(response.response) // HTTP URL response
    print(response.data)     // server data
    print(response.result)   // result of response serialization
    
    if let JSON = response.result.value {
        print("JSON: \(JSON)")
    }
    print(" ****************\n\n\n ")
}
