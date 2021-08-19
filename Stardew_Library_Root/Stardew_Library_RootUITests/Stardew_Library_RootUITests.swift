//
//  Stardew_Library_RootUITests.swift
//  Stardew_Library_RootUITests
//
//  Created by Jeandré De Villiers on 2021/08/12.
//

import XCTest

class Stardew_Library_RootUITests: XCTestCase {
        
        let app = XCUIApplication()

        override func setUpWithError() throws {
            app.launch()
            continueAfterFailure = false

        }

        func testWelcome() throws {
            
            let welcome = app.staticTexts.element
            
            XCTAssert(welcome.exists)
            
            XCTAssertEqual(welcome.label, "Welcome!")
        }
        
        func testButton() throws {
            
            
            let button = app.buttons["loginButton"]
            
            XCTAssert(button.exists)
            XCTAssertEqual(button.label, "Get Started")
        }
        
        func testLogin() throws {
            
            app.buttons["loginButton"].tap()
            
            app.textFields["nameText"].tap()
            app.textFields["nameText"].typeText("test")
            
            app.textFields["passwordText"].tap()
            app.textFields["passwordText"].typeText("pass")
         
            
            app.keyboards.buttons["Return"].tap()
            
            let loginButton = app.buttons["loginNow"]
            loginButton.tap()
            
            XCTAssertFalse(loginButton.waitForExistence(timeout: 0.5))
            
           // let loginButton = app.buttons["loginNow"]
                   
        }
        
        }


