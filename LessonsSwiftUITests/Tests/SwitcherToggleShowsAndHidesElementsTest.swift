import XCTest

final class SwitcherToggleShowsAndHidesElementsTest: BaseTest {
    func testLessonSwift() {
        startTests()
        step("Переключение свитчера и отображение элементов") {
            step("Элементы отображаются, свитчер включен") {
                XCTAssertEqual(PersonViewControllerScreen.personSwitcher.value as? String, "1", "Свитчер включен")
                XCTAssertFalse(PersonViewControllerScreen.personName.exists == false)
                XCTAssertFalse(PersonViewControllerScreen.personLastName.exists == false)
            }
            step("Свитчер выключен") {
                PersonViewControllerScreen.personSwitcher.tap()
                step("Свитчер переключен, элементы не отображаются") {
                    XCTAssertEqual(PersonViewControllerScreen.personSwitcher.value as? String, "0", "Свитчер выключен")
                    XCTAssertFalse(PersonViewControllerScreen.personName.isHittable)
                    XCTAssertFalse(PersonViewControllerScreen.personLastName.isHittable)
                }
            }
        }
    }
}
