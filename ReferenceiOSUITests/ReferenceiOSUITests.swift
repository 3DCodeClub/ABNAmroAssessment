//
//  ReferenceiOSUITests.swift
//  ReferenceiOSUITests
//
//  Created by Dunya Kirkali on 27/03/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//

import XCTest

class ReferenceiOSUITests: BaseClass {

    func testVerifyWelcomeMessage() {
        verifyWelcomeMessag()
    }
    
    func testVerifyNumericValueIsDisplayed() {
        whenIClickTheFirstScreenButton()
        thenIverifyTheEuroSign()
    }
    
    func testVerifyReturnedValueHasEuroSign() {
        whenIClickTheFirstScreenButton()
        thenIverifyTheEuroSign()
    }
}
