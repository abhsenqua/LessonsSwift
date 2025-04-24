import XCTest

final class TapElementFieldLoginTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        step("Тап на поле 'Логин'") {
            PersonViewControllerScreen.personLogin.tap()
            step("Появилась клавиатура для ввода в поле") {
            }
        }
    }
}

