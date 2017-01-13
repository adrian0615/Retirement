//
//  Retirement.swift
//  Retirement
//
//  Created by Adrian McDaniel on 12/27/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation

struct Retirement{

var jSave = JSONAndSave()

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




func runRetirement() {
    
    var dates = Dates()
    
    print("Retirement\n")
    
    let name = getNameFromUser(prompt: enterYourName)
    
    print("Hello, \(name)!\n")
    
    let age = getAgefromUser()
    
    let retirementAge = getRetirementAgefromUser()
    
    let yearsToRetirement = retirementDifference(age: age, retirementAge: retirementAge)
    
    let displayYearsToRetirement = "\(String(yearsToRetirement))\n"
    
    print("You have \(displayYearsToRetirement) years until you will retire.\n")
    
    let retirementYear = dates.addYears(years: yearsToRetirement)
    
    
    print("It is \(dates.calendar.dateComponents([.year], from: dates.now)), and you will retire in \(retirementYear).\n")
    
    let retirementData: [String : Any] = [
        "name" : name,
        "current age" : age,
        "retirement age" : retirementAge,
        "years to retirement" : yearsToRetirement]
    
    
    print(jSave.jsonSave(jsonObject: retirementData))
    
}

}

