import XCTest

final class GoToTheNextScreenAndReturnBackTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        step("Переход на второй экран и возврат назад") {
            PersonViewControllerScreen.personButtonNextScreen.tap()
            step("Тап по кнопке 'Назад'") {
                app.buttons["backButton"].tap()
            }
            step("Кнопка 'Назад' не отображается") {
                let backButton = app.buttons["backButton"]
                XCTAssertFalse(backButton.exists && backButton.isHittable)
            }
        }
    }
}
