//
//  Accessability.swift
//  LessonsSwiftUITests
//
//  Created by Альберт Бахитов on 04.04.2025.
//

import Foundation

public enum Accessability {
    public enum PersonViewController: String {

        case personAgeSlider
        case switcher
        case personNameLabel
        case personLastNameLabel
        case personSureNameLabel
        case personAgeLabel
        case personTypeLabel
        case personAuthorizationLabel
        case loginTextField
        case passwordTextField
        case buttonAuthorization
        case buttonNextScreenPersonViewControllerDetail
    }

    public enum PersonViewControllerDetail: String {

        case personFullNameLabel
        case personAgeLabel
        case personExperienceTextView
        case personAvatarImageView
    }


}
