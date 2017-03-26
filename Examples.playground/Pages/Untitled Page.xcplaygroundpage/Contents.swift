//: Playground - noun: a place where people can play

import SwiftyJSON
import Foundation

var jsonData: Data?

if let file = Bundle.main.path(forResource: "SwiftyJSONTests", ofType: "json") {
    jsonData = try? Data(contentsOf: URL(fileURLWithPath: file))
} else {
    print("Fail")
}

let jsonObject = try JSONSerialization.jsonObject(with: jsonData!, options: .allowFragments) as? [[String: AnyObject]]

let jsonString = String(data: jsonData!, encoding: .utf8)