import XCTest

final class LoginTextFieldTapDisplaysKeyboardTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        step("Тап на поле 'Логин'") {
            PersonViewControllerScreen.personLogin.tap()
            step("Появилась клавиатура для ввода в поле") {
                let keyboard = XCUIApplication().keyboards.firstMatch
                XCTAssertTrue(keyboard.waitForExistence(timeout: 2), "Клавиатура не появилась")
            }
        }
    }
}

