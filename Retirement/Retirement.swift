//
//  Retirement.swift
//  Retirement
//
//  Created by Adrian McDaniel on 12/27/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation



func getNameFromUser(prompt: String) -> String {
    print(prompt)
    let name = readLine(strippingNewline: true)!
    return name
}



func getAgefromUser() -> Int {
    var age: Int? = nil
    print("Please enter your current age.")
    
    while age == nil {
        if let string = readLine(strippingNewline: true),
            let tempNum = Int(string) {
            age = tempNum
        } else {
            print("You didn't enter a number")
        }
    }
    return age!
}


func getRetirementAgefromUser() -> Int {
    var age: Int? = nil
    print("At what age would you like to retire?")
    
    while age == nil {
        if let string = readLine(strippingNewline: true),
            let tempNum = Int(string) {
            age = tempNum
        } else {
            print("You didn't enter a number")
        }
    }
    return age!
}

func retirementDifference(age: Int, retirementAge: Int) -> Int {
    var number: Int? = nil
    
    number = retirementAge - age
        return number!
}


let date = Date()
let enterYourName = "What is your name?"

let previouslySaved = try! String(contentsOfFile: "/Users/AdrianHome/Retirement.txt", encoding: .utf8)


func runRetirement() {
    
    
    
    print("Retirement\n")
    
    let name = getNameFromUser(prompt: enterYourName)
    
    print("Hello, \(name)!\n")
    let age = getAgefromUser()
    
    let retirementAge = getRetirementAgefromUser()
    
    let yearsToRetirement = retirementDifference(age: age, retirementAge: retirementAge)
    
    let displayYearsToRetirement = "\(String(yearsToRetirement))\n"
    
    print("You have \(displayYearsToRetirement) years until you will retire.\n")
    
    let retirementYear = addYears(years: yearsToRetirement)
    
    print("It is \(components.year!), and you will retire in \(retirementYear).\n")
    
    let retirementData: [String : Any] = [
        "name" : name,
        "current age" : age,
        "retirement age" : retirementAge,
        "years to retirement" : yearsToRetirement]
    
    let jsonRepresentation = try! JSONSerialization.data(withJSONObject: retirementData, options: [])
    
    
    let returned = String(bytes: jsonRepresentation, encoding: .utf8)!
    
    let jsonData = returned.data(using: .utf8)!
    
    let jsonObject = try! JSONSerialization.jsonObject(with: jsonData, options:[]) as! [String:Any]
    
    let updatedRetirementData = "\(previouslySaved)\n\(jsonObject)\n"
    
    _ = try? updatedRetirementData.write(toFile: "/Users/AdrianHome/Retirement.txt", atomically: true, encoding: .utf8)
    
    let saved = try! String(contentsOfFile: "/Users/AdrianHome/Retirement.txt", encoding: .utf8)
    
    print(saved)
    
    
}



