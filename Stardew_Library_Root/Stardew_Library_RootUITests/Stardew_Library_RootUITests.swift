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

//    func testWelcome() throws {
//
//        let welcome = app.staticTexts.element
//
//        XCTAssert(welcome.exists)
//
//        XCTAssertEqual(welcome.label, "Welcome")
//    }
//

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // Measures how long it takes to launch app.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
