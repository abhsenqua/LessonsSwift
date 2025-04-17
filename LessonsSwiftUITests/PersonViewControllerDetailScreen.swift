import XCTest

struct PersonViewControllerDetailScreen: BaseScreen {

    static let personFullNameLabel = app.staticTexts[Accessibility.PersonViewControllerDetail.personFullNameLabel.rawValue]
    static let personAgeLabel = app.staticTexts[Accessibility.PersonViewControllerDetail.personAgeLabel.rawValue]
    static let personExperienceTextView = app.textViews[Accessibility.PersonViewControllerDetail.personExperienceTextView.rawValue]
    static let personAvatarImageView = app.images[Accessibility.PersonViewControllerDetail.personAvatarImageView.rawValue]
}
