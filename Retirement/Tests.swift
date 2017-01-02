//
//  Tests.swift
//  Retirement
//
//  Created by Adrian McDaniel on 12/26/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation

func runTests() {
    let sampleRetirement: [String : Any] = [
        "name" : "John Doe",
        "current age" : 23,
        "retirement age" : 50,
        "years to retirement" : 27]
    
    let jsonRepresentation = try! JSONSerialization.data(withJSONObject: sampleRetirement, options: [])
    
    print(String(bytes: jsonRepresentation, encoding: .utf8)!)
    
    
    let returned = "{\"retirement age\":50,\"name\":\"John Doe\",\"current age\":23,\"years to retirement\":27}"
    
    let jsonData = returned.data(using: .utf8)!
    let jsonObject = try! JSONSerialization.jsonObject(with: jsonData, options:[]) as! [String:Any]
    
    print(jsonObject)
    
    
    
}
