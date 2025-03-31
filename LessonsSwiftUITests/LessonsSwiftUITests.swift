//
//  LessonsSwiftUITests.swift
//  LessonsSwiftUITests
//
//  Created by Альберт Бахитов on 30.01.2025.
//

import XCTest

final class LessonsSwiftUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        XCTAssertEqual(app.state, .runningBackground, "Приложение не запустилось")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
