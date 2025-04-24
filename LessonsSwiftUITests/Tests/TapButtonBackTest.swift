import XCTest

class TapButtonBackTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        func testPersonLoginTextField() {
            PersonViewControllerScreen.personButtonNextScreen.tap()
            app.buttons["backButton"].tap()
        }
    }
}
