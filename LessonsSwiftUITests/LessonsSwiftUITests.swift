//
//  LessonsSwiftUITests.swift
//  LessonsSwiftUITests
//
//  Created by Альберт Бахитов on 30.01.2025.
//

import XCTest

final class LessonsSwiftUITests: XCTestCase {

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        XCTAssertEqual(app.state, .runningBackground, "Приложение не запустилось")
    }
}
