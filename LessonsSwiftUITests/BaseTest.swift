import XCTest

class BaseTest: XCTestCase {
   let app = XCUIApplication()
    // метод запуска автотестов
    func startTests() {
        app.launch()
    }
}
