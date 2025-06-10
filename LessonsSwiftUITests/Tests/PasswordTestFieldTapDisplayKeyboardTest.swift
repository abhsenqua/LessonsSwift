import XCTest

final class PasswordTestFieldTapDisplayKeyboardTest: BaseTest {
    func testLessonSwit() {
        startTests()
        step("Тап на поле 'Пароль'") {
            PersonViewControllerScreen.personPassword.tap()
            step("Появилась клавиатура для ввода в поле") {
                XCTAssertTrue(app.firstMatch.keyboards.element.waitForExistence(timeout: 2), "Клавиатура не появилась")
            }
        }
    }
}

