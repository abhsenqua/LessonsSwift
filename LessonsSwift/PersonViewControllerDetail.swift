//
//  PersonViewControllerDetail.swift
//  LessonsSwift
//
//  Created by Альберт Бахитов on 10.02.2025.
//

import UIKit

class PersonViewDetailController: UIViewController {
    // объявляю переменную personFullNameLabel, которая содержит UILabel
    var personFullNameLabel: UILabel = {
        // создаю экзепляр UILabel
        let labelPersonFullName = UILabel()
        // разрешаю метке переносить текст на новую строку при необходимости
        labelPersonFullName.numberOfLines = 0
        // отключаю автоматическое создание ограничений constrait
        labelPersonFullName.translatesAutoresizingMaskIntoConstraints = false
        // возвращаю созданный UILabel
        return labelPersonFullName
    }()
    
    // объявляю переменную personAgeLabel, которая содержит UILabel
    var personAgeLabel: UILabel = {
        // создаю экземпляр UILabel
        let labelPersonAge = UILabel()
        // разрешаю метке переносить текст на новую строку при необходимости
        labelPersonAge.numberOfLines = 0
        // отключаю автоматическое создание ограничений constrait
        labelPersonAge.translatesAutoresizingMaskIntoConstraints = false
        // возвращаю созданный UILabel
        return labelPersonAge
    }()
    
    // объявляю переменную personExpirienceWorTextView, которая содержит UITextView
    var personExpirienceWorTextView: UITextView = {
        // создаю экзепляр UITextView()
        let textViewPersonExpirienceWork = UITextView()
        // делаю текстовое поле только для чтения
        textViewPersonExpirienceWork.isEditable = false
        // отключаю автоматическое создание ограничений constrait
        textViewPersonExpirienceWork.translatesAutoresizingMaskIntoConstraints = false
        // устанавливаю цвет рамки текстового поля
        textViewPersonExpirienceWork.layer.borderColor = UIColor.black.cgColor
        // устанавливаю ширину рамки
        textViewPersonExpirienceWork.layer.borderWidth = 1
        // возвращаю созданный UITextView
        return textViewPersonExpirienceWork
    }()
    
    // объявляю переменную personAvatarImageView, которая содержит ImageView
    var personAvatarImageView: UIImageView = {
        // создаю экзепляр UIView
        let imageViewPersonAvatar = UIImageView()
        // задаю режим отображения изображения (сохранение границ)
        imageViewPersonAvatar.contentMode = .scaleAspectFill
        // отключаю автоматическое создание ограничений constrait
        imageViewPersonAvatar.translatesAutoresizingMaskIntoConstraints = false
        // возвращаю созданный UIImageView
        return imageViewPersonAvatar
    }()
    
    override func viewDidLoad() {
    
    }
}
