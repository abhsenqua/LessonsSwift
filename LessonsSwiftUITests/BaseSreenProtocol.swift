//
//  BaseSreenProtocol.swift
//  LessonsSwiftUITests
//
//  Created by Альберт Бахитов on 14.04.2025.
//

import XCTest

protocol BaseScreen {
    static var app: XCUIApplication { get }
}

extension BaseScreen {
    static var app: XCUIApplication {
        XCUIApplication()
    }
}
