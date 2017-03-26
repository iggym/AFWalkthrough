//: [Previous](@previous)

import Foundation
import SwiftyJSON

var str = "Hello, playground"
let jsonString = "{ \"people\": [{ \"firstName\": \"Paul\", \"lastName\": \"Hudson\", \"isAlive\": true }, { \"firstName\": \"Angela\", \"lastName\": \"Merkel\", \"isAlive\": true }, { \"firstName\": \"George\", \"lastName\": \"Washington\", \"isAlive\": false } ] }";

print(jsonString + "\n\n")

if let data = jsonString.data(using: .utf8, allowLossyConversion: true)
{
    let json = JSON(data: data)
    
    print(json["people"].arrayValue)
    for item in json["people"].arrayValue {
        print(item["firstName"].stringValue)
    }
}
//: [Next](@next)
