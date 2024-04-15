# Test assignment


## Project set-up

# Test Assessment ABN Amro

With this document I want to elaborate my chosen test setup.

In order to make the test suite future proof we have to make the test framework easily maintainable and scalable. I have divided the logic up in several `swift` classes in order to adhere to the DRY principle.

## BaseClass.swift
In this file I provided common functionality that our UI tests are using. Such as a `defaultTimeout` and `app` variables. At the moment only the `setup()` and `teardown()` functions are provided. However you could also provide common helper functions that might be useful throughout multiple UI tests since all tests classes should inherit from this `BaseClass`.

## HomePageScreenPO.swift
All element locators files are placed within the `UiElements` folder. Since this app only has one screen I have created the `HomePageScreePO.swift` file in order to host all elements with respect to this screen. If the application would be bigger I would have created multiple files, each file hosting elements with respect to a particular screen.

I have chosen to use an `enum` since we can add functions to `enums`. Another benefit is that you can group elements together and dynamically create the correct element. For example:

```
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

}
```

Building upon the above concept you could let the `enum` return `XCUIelements` based on device type i.e. `iPad` or `iPhone`. This will come in handy when not all elements are the same across different device types.
Another benefit is that `enums` can be used without creating an instance or maintaining inheritance.

## StepDefinitions.swift
In this file everything comes together. We use our the elements from our `HomePageScreenPO.swift` and the common test code from our `BaseClass.swift`. The only thing what is left to do is creating the actual test scenarios.

In order to improve readability in our test reporting I've added activities to my `StepDefinitions` making it clear which step is doing what. 

## ReferenceiOSUITests.swift
This is the test file that is actually ran by `XCTest`. As you can see we removed all logic and elements to the earlier mentioned swift classes. Resulting in a clean overview of the tests cases that are supposed to run. 

The test cases covered are
 - testVerifyWelcomeMessage (This verifies the welcome message)
 - testVerifyNumericValueIsDisplayed (This checks to see if the numeric value is displayed) 
 - testVerifyReturnedValueHasEuroSign (This checks that the euro value is displayed)
### Gemfile

This file specifies which Ruby dependencies (gems) are needed for our app.

### fastlane/Fastfile

This is where tha magic happens.

I created
