//
//  main.swift
//  MoeBellThingy
//
//  Created by junxi Yim on 2024/9/17.
//

import Foundation
 
// 1. Input
 
// Get number of daytime minutes
var dayTimeMinutes = 0
while true {
    
    // Prompt
    print("Number of daytime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    // Make Sure the input is in range
    guard givenInteger >= 0 else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    dayTimeMinutes = givenInteger
    break
 
}

var eveningTimeMinutes = 0
while true {
    
    // Prompt
    print("Number of eveningtime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    // Make Sure the input is in range
    guard givenInteger >= 0 else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    eveningTimeMinutes = givenInteger
    break
 
}

var weekendMinutes = 0
while true {
    
    // Prompt
    print("Number of weekend minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }

    // Make Sure the input is in range
    guard givenInteger >= 0 else {
        // Repeat prompt, not an integer
        continue
    }

    // Now we have an integer, break input loop
    weekendMinutes = givenInteger
    break
 
}
 
// 2. Process
 
// Calculate costs for plan A
var a = 0
 
// Add daytime cost
a += (dayTimeMinutes - 100) * 25
if a < 0{
    a = 0
}
a += (eveningTimeMinutes * 15)
if a < 0{
    a = 0
}
a += (weekendMinutes * 20)
if a < 0{
    a = 0
}
 
// Calculate costs for plan B
var b = 0
 
// Add daytime cost
b += (dayTimeMinutes - 250) * 45
if b < 0{
    b = 0
}
b += (eveningTimeMinutes * 35)
if b < 0{
    b = 0
}
b += (weekendMinutes * 25)
if b < 0{
    b = 0
}
// 3. Output
print("Plan A costs ¢\(a)")
print("Plan B costs ¢\(b)")
if a > b{
    print("Plan B is Cheaper")
    }
else if a == b{
    print("Plan A and B costs the Same")
}
else{
    print("Plan A is Cheaper")
}
