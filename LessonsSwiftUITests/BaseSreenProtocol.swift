import XCTest

protocol BaseScreen {
    static var app: XCUIApplication { get }
}

extension BaseScreen {
    static var app: XCUIApplication {
        XCUIApplication()
    }
}
