//
//  StepDefinitions.swift
//  ReferenceiOSUITests
//
//  Created by Mac on 12/04/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

//Extend BaseClass
extension BaseClass {
    
    //create a function to  provide xct context
    func verifyWelcomeMessag() {
        
        XCTContext.runActivity(named: "welcom message is shown on home screen") { _ in
            //Wait for label to be visible implicitly
            _ = HomePageScreenPO.labelValue.elements.waitForExistence(timeout: defaultTimeOut)
            
            //Verify actual outcome to expected outcome
            XCTAssertEqual(HomePageScreenPO.labelValue.elements.label, "Hello")
            //Lookup elements
            //print(app.debugDescription)
        }
    }
    
    func whenIClickTheFirstScreenButton() {
            XCTContext.runActivity(named: "Given I press the button on the first screen") { _ in
                _ = HomePageScreenPO.homeButton.elements.waitForExistence(timeout: defaultTimeOut)

                HomePageScreenPO.homeButton.elements.tap()
            }
        }

    func thenIVerifyTheNummericalReturnedValue() {

        XCTContext.runActivity(named: "Then I validate that a nummerical value between 100 and 99999999 has been returned") { _ in

            let str = HomePageScreenPO.labelValue.elements.label
            let str1 = str.replacingOccurrences(of: "€ ", with: "")
            let str2 = str1.replacingOccurrences(of: ".", with: "")
            let str3 = str2.replacingOccurrences(of: ",", with: ".")
            let myDouble = Double(str3)
            let myInt = Int(round(myDouble!))
            let numberRange = 100 ... 99999999
            
            //Assert displayed value
            XCTAssert(numberRange.contains(myInt))
        }
    }
    
    func thenIverifyTheEuroSign() {

        XCTContext.runActivity(named: "Then I validate that the returned value has a Euro sign") { _ in

            XCTAssert(HomePageScreenPO.labelValue.elements.label.contains("€"))
        }
    }
}
