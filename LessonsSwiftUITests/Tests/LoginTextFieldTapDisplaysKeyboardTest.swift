import XCTest

final class LoginTextFieldTapDisplaysKeyboardTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        step("Тап на поле 'Логин'") {
            PersonViewControllerScreen.personLogin.tap()
            step("Открыт экран ввода для поля 'Логин'") {
                XCTAssertTrue(
                    app.keyboards.firstMatch.waitForExistence(timeout: 2),
                    "Клавиатура не появилась"
                )
            }
        }
    }
}
