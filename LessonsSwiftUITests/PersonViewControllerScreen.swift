
import XCTest

struct PersonViewControllerScreen: BaseScreen {

    static let personAgeSlider = app.sliders[Accessibility.PersonViewController.personAgeSlider.rawValue]
    static let switcher = app.switches[Accessibility.PersonViewController.switcher.rawValue]
    static let personNameLabel = app.staticTexts[Accessibility.PersonViewController.personNameLabel.rawValue]
    static let personLastNameLabel = app.staticTexts[Accessibility.PersonViewController.personLastNameLabel.rawValue]
    static let personAgeLabel = app.staticTexts[Accessibility.PersonViewController.personAgeLabel.rawValue]
    static let personTypeLabel = app.staticTexts[Accessibility.PersonViewController.personTypeLabel.rawValue]
    static let personAuthorizationLabel = app.staticTexts[Accessibility.PersonViewController.personAuthorizationLabel.rawValue]
    static let loginTextField = app.textFields[Accessibility.PersonViewController.loginTextField.rawValue]
    static let passwordTextField = app.textFields[Accessibility.PersonViewController.passwordTextField.rawValue]
    static let buttonAuthorization = app.staticTexts[Accessibility.PersonViewController.buttonAuthorization.rawValue]
    static let buttonNextScreenPersonViewControllerDetail = app.staticTexts[Accessibility.PersonViewController.buttonNextScreenPersonViewControllerDetail.rawValue]
}
