import XCTest

final class TapButtonBackTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        step("Тап по кнопке 'Назад'") {
            PersonViewControllerScreen.personButtonNextScreen.tap()
            app.buttons["backButton"].tap()
        }
    }
}
