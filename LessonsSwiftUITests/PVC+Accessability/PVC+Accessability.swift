//
//  PVC+Accessability.swift
//  LessonsSwiftUITests
//
//  Created by Альберт Бахитов on 06.04.2025.
//

@testable import LessonsSwift
import UIKit

extension PersonViewController {
    func applyAccessibilityIdentifiers() {
        personAgeSlider.accessibilityIdentifier = Accessability.PersonViewController.personAgeSlider.rawValue
        switcher.accessibilityIdentifier = Accessability.PersonViewController.switcher.rawValue
        personNameLabel.accessibilityIdentifier = Accessability.PersonViewController.personNameLabel.rawValue
        personLastNameLabel.accessibilityIdentifier = Accessability.PersonViewController.personLastNameLabel.rawValue
        personSureNameLabel.accessibilityIdentifier = Accessability.PersonViewController.personSureNameLabel.rawValue
        personAgeLabel.accessibilityIdentifier = Accessability.PersonViewController.personAgeLabel.rawValue
        personTypeLabel.accessibilityIdentifier = Accessability.PersonViewController.personTypeLabel.rawValue
        personAuthorizationLabel.accessibilityIdentifier = Accessability.PersonViewController.personAuthorizationLabel.rawValue
        loginTextField.accessibilityIdentifier = Accessability.PersonViewController.loginTextField.rawValue
        passwordTextField.accessibilityIdentifier = Accessability.PersonViewController.passwordTextField.rawValue
        buttonAuthorization.accessibilityIdentifier = Accessability.PersonViewController.buttonAuthorization.rawValue
        buttonNextScreenPersonViewControllerDetail.accessibilityIdentifier = Accessability.PersonViewController.buttonNextScreenPersonViewControllerDetail.rawValue














    }


}

