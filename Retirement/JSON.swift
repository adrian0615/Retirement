//
//  JSON.swift
//  Retirement
//
//  Created by Adrian McDaniel on 1/12/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


struct JSONAndSave {
   
    let previouslySaved = try! String(contentsOfFile: "/Users/AdrianHome/Retirement.txt", encoding: .utf8)
    
    
    func jsonSave(jsonObject: [String: Any]) -> String {
        
        let jsonRepresentation = try! JSONSerialization.data(withJSONObject: jsonObject, options: [])
        
        let returned = String(bytes: jsonRepresentation, encoding: .utf8)!
        
        let jsonData = returned.data(using: .utf8)!
        
        let jsonObject = try! JSONSerialization.jsonObject(with: jsonData, options:[]) as! [String:Any]
        
        let updatedRetirementData = "\(previouslySaved)\n\(jsonObject)\n"
        
        try? updatedRetirementData.write(toFile: "/Users/AdrianHome/Retirement.txt", atomically: true, encoding: .utf8)
        
        let saved = try! String(contentsOfFile: "/Users/AdrianHome/Retirement.txt", encoding: .utf8)
        
        return updatedRetirementData
    }
    
}
