import XCTest

class BaseTest: XCTestCase {
   let app = XCUIApplication()
    // метод запуска автотестов
    func startTests() {
        app.launch()
    }
    // метод stepов
    func step(_ description: String, action: () -> Void) {
        action()
    }
}
