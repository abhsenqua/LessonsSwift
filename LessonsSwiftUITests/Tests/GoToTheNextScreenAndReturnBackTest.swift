import XCTest

final class GoToTheNextScreenAndReturnBackTest: BaseTest {
    func testLessonSwift() throws {
        startTests()
        step("Переход на второй экран и возврат назад") {
            PersonViewControllerScreen.personButtonNextScreen.tap()
            step("Тап по кнопке 'Назад'") {
                PersonViewControllerDetailScreen.backButton.tap()
            }
            step("Кнопка 'Назад' не отображается") {
                XCTAssertFalse(PersonViewControllerDetailScreen.backButton.exists)
            }
        }
    }
}
