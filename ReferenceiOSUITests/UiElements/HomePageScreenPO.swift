//
//  HomePageScreenPO.swift
//  ReferenceiOSUITests
//
//  Created by Mac on 12/04/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

//Create an enumeration
enum HomePageScreenPO: String {
    
    //Identify the button element
    case homeButton = "Button"
    
    //identify the value
    case labelValue = "label"
    
    var elements: XCUIElement {
        
        //Make a swith to iterate through elements
        switch self {
        
            //Access variable within class
        case .homeButton:
            
            //return XUI application button
            return XCUIApplication().buttons[self.rawValue]
            
        case .labelValue:
            //Get the element for the label for the amount
            return XCUIApplication().staticTexts[self.rawValue]
    
            
        }
    }
}

