//
//  BaseClass.swift
//  ReferenceiOSUITests
//
//  Created by Mac on 12/04/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//


//Import xctest
import XCTest

class BaseClass: XCTestCase {
    
    //declare XCUI application to variable .... Note check documentation
    var app: XCUIApplication!
    var defaultTimeOut = 10.0
    
    override func setUp() {
        super.setUp()
        //continue after faile of each test case
        continueAfterFailure = false
        
        //Create instance of XUI application
        app = XCUIApplication()
        
        //launch app
        app.launch()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
        
        //set varuiable to nil. Clear app variable to save memory
        app = nil
    }
    
}




