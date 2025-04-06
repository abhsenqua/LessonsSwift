//
//  PVCD+Accessability.swift
//  LessonsSwiftUITests
//
//  Created by Альберт Бахитов on 06.04.2025.
//

@testable import LessonsSwift
import UIKit

extension PersonViewDetailController {
    func applyAccessibilityIdentifiers() {
        personFullNameLabel.accessibilityIdentifier = Accessability.PersonViewControllerDetail.personFullNameLabel.rawValue
        personAgeLabel.accessibilityIdentifier = Accessability.PersonViewControllerDetail.personAgeLabel.rawValue
        personExperienceTextView.accessibilityIdentifier = Accessability.PersonViewControllerDetail.personExperienceTextView.rawValue
        personAvatarImageView.accessibilityIdentifier = Accessability.PersonViewControllerDetail.personAvatarImageView.rawValue
    }
}
