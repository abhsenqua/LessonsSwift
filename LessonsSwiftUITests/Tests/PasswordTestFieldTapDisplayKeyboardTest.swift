import XCTest

final class PasswordTestFieldTapDisplayKeyboardTest: BaseTest {
    func testLessonSwit() {
        startTests()
        step("Тап на поле 'Пароль'") {
            PersonViewControllerScreen.personPassword.tap()
            step("Открыт экран ввода для поля 'Пароль'") {
                XCTAssertTrue(app.firstMatch.keyboards.element.waitForExistence(timeout: 2), "Клавиатура не появилась")
            }
        }
    }
}

