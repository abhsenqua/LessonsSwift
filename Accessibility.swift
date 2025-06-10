import Foundation

public enum Accessibility {
    public enum PersonViewController: String {
        case personAgeSlider
        case personSwitcher
        case personName
        case personLastName
        case personSureName
        case personAge
        case personType
        case personAuthorization
        case personLogin
        case personPassword
        case personButtonAuthorization
        case personButtonNextScreen
    }
    public enum PersonViewControllerDetail: String {
        case personFullName
        case personAge
        case personExperience
        case personAvatar
        case backButton
        case title
    }
}
