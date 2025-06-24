import XCTest

final class AutorizationTest: BaseTest {
    func testLesson() {
        startTests()
        step("Авторизоваться в приложении") {
         autorization(login: "abhsenqua", password: "12345")
            step("Авторизация успешна") {
                XCTAssertTrue(app.staticTexts["Логин: abhsenqua\nПароль: 12345"].exists)
            }
        }
    }
}
