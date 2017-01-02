//
//  Dates.swift
//  Retirement
//
//  Created by Adrian McDaniel on 1/2/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


import Foundation

let now = Date()
let calendar = Calendar(identifier: .gregorian)
var components = calendar.dateComponents([.year], from: now)

func addYears(years: Int) -> String {
    let nowInNumber = Int(components.year!)
    let newDate = nowInNumber + years
    return String(newDate)
    
}
