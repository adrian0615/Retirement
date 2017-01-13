//
//  main.swift
//  Retirement
//
//  Created by Adrian McDaniel on 12/26/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation

let arguments = Array(CommandLine.arguments.dropFirst())

if !arguments.isEmpty && arguments[0] == "--run-tests" {
    runTests()
}

var retirement = Retirement()

retirement.runRetirement()


