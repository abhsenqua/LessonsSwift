import XCTest

class BaseTest: XCTestCase {
   let app = XCUIApplication()
    // метод запуска автотестов
    func startTests() {
        app.launch()
    }
    // метод stepов
    func step(_ description: String, action: () -> Void) {
        action()
    }
    // метод авторизации
    func autorization(login: String, password: String) {
        PersonViewControllerScreen.personLogin.tap()
        PersonViewControllerScreen.personLogin.typeText(login)
        PersonViewControllerScreen.personPassword.tap()
        PersonViewControllerScreen.personPassword.typeText(password)
        PersonViewControllerScreen.personButtonAuthorization.tap()
    }
}
