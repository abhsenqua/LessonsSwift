//
//  PersonViewControllerDetail.swift
//  LessonsSwift
//
//  Created by Альберт Бахитов on 10.02.2025.
//

import UIKit

class PersonViewDetailController: UIViewController {
    
    // переменная для хранения информации о Person, переданной из 1 контроллера
    var person: PersonModel?
    
    // init для передачи данных о Person
    init(Person: PersonModel) {
        self.person = Person
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
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
        // передаю название аватарки
        let image = UIImage(named: "avatar")
        // создаю экзепляр UIView с аватаркой
        let imageViewPersonAvatar = UIImageView(image: image)
        // задаю режим отображения изображения (сохранение границ)
        imageViewPersonAvatar.contentMode = .scaleAspectFill
        // отключаю автоматическое создание ограничений constrait
        imageViewPersonAvatar.translatesAutoresizingMaskIntoConstraints = false
        // возвращаю созданный UIImageView
        return imageViewPersonAvatar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // метод обновления текстовых полей для 2 контроллера
    func updateUI() {
        guard let person = person else { return }
        personFullNameLabel.text = "ФИО: \(person.name) \(person.lastName)"
        personAgeLabel.text = "Возраст: \(person.age)"
        personExpirienceWorTextView.text = "Опыт работы: 1 год"
    }
    
    
}
