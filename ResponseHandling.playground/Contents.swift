//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
import Alamofire




PlaygroundPage.current.needsIndefiniteExecution = true

URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

Alamofire.request("https://httpbin.org/get").responseJSON { response in
    print(response.request)  // original URL request
    print(response.response) // HTTP URL response
    print(response.data)     // server data
    print(response.result)   // result of response serialization
    
    if let JSON = response.result.value {
        print("JSON: \(JSON)")
    }
    print(" ****************\n\n\n ")
}



Alamofire.request("https://httpbin.org/get").response { response in
    print("Request: \(response.request)")
    print("Response: \(response.response)")
    print("Error: \(response.error)")
    
    if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
        print("Data: \(utf8Text)")
    }
     print(" ****************\n\n\n ")
}

Alamofire.request("https://httpbin.org/get").responseData { response in
    debugPrint("All Response Info: \(response)")
    
    if let data = response.result.value, let utf8Text = String(data: data, encoding: .utf8) {
        print("Data: \(utf8Text)")
    }
       print(" ****************\n\n\n ")
}


Alamofire.request("https://httpbin.org/get").responseString { response in
    print("Success: \(response.result.isSuccess)")
    print("Response String: \(response.result.value)")
       print(" ****************\n\n\n ")
}

Alamofire.request("https://httpbin.org/get").responseJSON { response in
    debugPrint(response)
    
    if let json = response.result.value {
        print("JSON: \(json)")
    }
    print(" ****************\n\n\n ")

}
