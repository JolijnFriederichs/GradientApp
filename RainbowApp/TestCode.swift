//
//  TestCode.swift
//  RainbowApp
//
//  Created by Jolijn Friederichs on 18-11-17.
//  Copyright © 2017 The App Academy. All rights reserved.

import Foundation

class TestCode: NSObject {
    
    var myName = "Jolijn"
    
    func printMyName() {
        print("Hi, my name is: \(myName)")
    }
    
    func sayHelloWorld() {
        print("Hello World!")
    }
    
    func calculate1Plus1() {
        print("1 + 1 = \(1 + 1)")
    }
    
    func printMessage() {
        printMyName()
        sayHelloWorld()
        calculate1Plus1()
    }
}
