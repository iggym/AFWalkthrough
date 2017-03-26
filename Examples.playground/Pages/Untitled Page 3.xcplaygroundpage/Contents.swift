//: [Previous](@previous)

import Foundation
import SwiftyJSON

var str = "Hello, playground"

var jsonData: Data?


if let file = Bundle.main.path(forResource: "File", ofType: "json") {
    jsonData = try? Data(contentsOf: URL(fileURLWithPath: file))
} else {
    print("Fail")
}

var json = JSON(jsonData)

if json["metadata"]["responseInfo"]["status"].intValue == 200 {
    // we're OK to parse!
    print(json)
    
    print("\n\n")
    
    json["metadata"]["responseInfo"]["status"].intValue
    json["metadata"]["responseInfo"]["developerMessage"].stringValue
}

//: [Next](@next)
