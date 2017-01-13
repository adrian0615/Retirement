//
//  Tests.swift
//  Retirement
//
//  Created by Adrian McDaniel on 12/26/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation

func runTests() {
    jsonTest()
    
    testGetAgefromUser(input: "25")//25
    testGetAgefromUser(input: "Five")//nil
    testGetAgefromUser(input: "55")//55  
    testGetAgefromUser(input: "?")//nil
    
    testRetirementDifference(age: 5, retirementAge: 50)//45
    testRetirementDifference(age: 30, retirementAge: 65)//35
    testRetirementDifference(age: 50, retirementAge: 51)//1
}


func jsonTest() {
    
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


func testGetAgefromUser(input: String) {
    var age: Int? = nil
    
    while age == nil {
            if let tempNum = Int(input) {
            age = tempNum
        } else {
            print("You didn't enter a number")
        }
    }
    print(age!)
}

func testRetirementDifference(age: Int, retirementAge: Int){
    var number: Int? = nil
    
    number = retirementAge - age
    print(number!)
}
