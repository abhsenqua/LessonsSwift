//
//  LessonsSwiftUITests.swift
//  LessonsSwiftUITests
//
//  Created by Альберт Бахитов on 30.01.2025.
//

import XCTest

final class LessonsSwiftUITests: XCTestCase {

    func testExample() throws {
        
        let app = XCUIApplication()
        let passwordtextfieldTextField = app/*@START_MENU_TOKEN@*/.textFields["passwordTextField"]/*[[".textFields[\"Введите пароль\"]",".textFields[\"passwordTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        passwordtextfieldTextField.tap()
        passwordtextfieldTextField.tap()
        app/*@START_MENU_TOKEN@*/.textFields["loginTextField"]/*[[".textFields[\"Введите логин\"]",".textFields[\"loginTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()


    }
}
