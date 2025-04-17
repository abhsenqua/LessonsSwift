import XCTest

struct PersonViewControllerScreen: BaseScreen {

    static let personAgeSlider = app.sliders[Accessibility.PersonViewController.personAgeSlider.rawValue]
    static let personSwitcher = app.switches[Accessibility.PersonViewController.personSwitcher.rawValue]
    static let personNameLabel = app.staticTexts[Accessibility.PersonViewController.personNameLabel.rawValue]
    static let personLastNameLabel = app.staticTexts[Accessibility.PersonViewController.personLastNameLabel.rawValue]
    static let personAgeLabel = app.staticTexts[Accessibility.PersonViewController.personAgeLabel.rawValue]
    static let personTypeLabel = app.staticTexts[Accessibility.PersonViewController.personTypeLabel.rawValue]
    static let personAuthorizationLabel = app.staticTexts[Accessibility.PersonViewController.personAuthorizationLabel.rawValue]
    static let personLoginTextField = app.textFields[Accessibility.PersonViewController.personLoginTextField.rawValue]
    static let personPasswordTextField = app.textFields[Accessibility.PersonViewController.personPasswordTextField.rawValue]
    static let personButtonAuthorization = app.staticTexts[Accessibility.PersonViewController.personButtonAuthorization.rawValue]
    static let personButtonNextScreenPersonViewControllerDetail = app.staticTexts[Accessibility.PersonViewController.personButtonNextScreenPersonViewControllerDetail.rawValue]
}
