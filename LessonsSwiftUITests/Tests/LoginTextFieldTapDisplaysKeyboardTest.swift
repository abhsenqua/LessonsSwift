import XCTest

final class LoginTextFieldTapDisplaysKeyboardTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        step("Тап на поле 'Логин'") {
            PersonViewControllerScreen.personLogin.tap()
            step("Появилась клавиатура для ввода в поле") {
                XCTAssertTrue(
                    app.keyboards.firstMatch.waitForExistence(timeout: 2),
                    "Клавиатура не появилась"
                )
            }
        }
    }
}
