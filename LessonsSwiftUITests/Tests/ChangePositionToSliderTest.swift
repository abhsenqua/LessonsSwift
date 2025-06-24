import XCTest

final class ChangePositionToSwitcherTest: BaseTest {
    func testLessonSwit() {
        startTests()
        step("Изменение позиции слайдера") {
            let startAge = PersonViewControllerScreen.personAge.label
            PersonViewControllerScreen.personAgeSlider.adjust(toNormalizedSliderPosition: 0.2)
            step("Позиция изменилась startAge != lastAge") {
                let lastAge = PersonViewControllerScreen.personAge.label
                XCTAssertNotEqual(startAge, lastAge)
            }
        }
    }
}
