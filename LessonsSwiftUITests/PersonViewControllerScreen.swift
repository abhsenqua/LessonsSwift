import XCTest

struct PersonViewControllerScreen: BaseScreen {
    static let personAgeSlider = app.sliders[Accessibility.PersonViewController.personAgeSlider.rawValue]
    static let personSwitcher = app.switches[Accessibility.PersonViewController.personSwitcher.rawValue]
    static let personName = app.staticTexts[Accessibility.PersonViewController.personName.rawValue]
    static let personLastName = app.staticTexts[Accessibility.PersonViewController.personLastName.rawValue]
    static let personAge = app.staticTexts[Accessibility.PersonViewController.personAge.rawValue]
    static let personType = app.staticTexts[Accessibility.PersonViewController.personType.rawValue]
    static let personAuthorization = app.staticTexts[Accessibility.PersonViewController.personAuthorization.rawValue]
    static let personLogin = app.textFields[Accessibility.PersonViewController.personLogin.rawValue]
    static let personPassword = app.textFields[Accessibility.PersonViewController.personPassword.rawValue]
    static let personButtonAuthorization = app.buttons[Accessibility.PersonViewController.personButtonAuthorization.rawValue]
    static let personButtonNextScreen = app.buttons[Accessibility.PersonViewController.personButtonNextScreen.rawValue]
}
