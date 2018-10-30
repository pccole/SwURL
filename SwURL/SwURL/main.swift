#!/usr/bin/swift
//
//  main.swift
//  SwURL
//
//  Created by Phil Cole on 10/23/18.
//  Copyright © 2018 Phil Cole. All rights reserved.
//

import Foundation



print("Enter Web Address")

let input = ConsoleIO.getInput()
print(input)

while !input.contains("-q") {
    
}

let variables = input.split(separator: " ")
for v in variables {
    print(v)
    if v.contains("-") {
        print("Option: \(v)")
    } else {
        
    }
}




var shouldQuit = false
while !shouldQuit {}
