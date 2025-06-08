import XCTest

struct PersonViewControllerDetailScreen: BaseScreen {
    static let personFullName = app.staticTexts[Accessibility.PersonViewControllerDetail.personFullName.rawValue]
    static let personAge = app.staticTexts[Accessibility.PersonViewControllerDetail.personAge.rawValue]
    static let personExperience = app.textViews[Accessibility.PersonViewControllerDetail.personExperience.rawValue]
    static let personAvatar = app.images[Accessibility.PersonViewControllerDetail.personAvatar.rawValue]
    static let backButton = app.buttons[Accessibility.PersonViewControllerDetail.backButton.rawValue]
}
