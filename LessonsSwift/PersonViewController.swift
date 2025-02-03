import UIKit

class PersonViewController: UIViewController {
    
    // лейбл имени
    var labelName: UILabel = {
        let labelNaming = UILabel()
        labelNaming.numberOfLines = 0
        labelNaming.translatesAutoresizingMaskIntoConstraints = false
        return labelNaming
    }()
    
    // лейбл фамилии
    var labelLastName: UILabel = {
        let labelLastNaming = UILabel()
        labelLastNaming.numberOfLines = 0
        labelLastNaming.translatesAutoresizingMaskIntoConstraints = false
        return labelLastNaming
    }()
    
    // лейбл возраста
    var labelAge: UILabel = {
        let labelAgePerson = UILabel()
        labelAgePerson.numberOfLines = 0
        labelAgePerson.translatesAutoresizingMaskIntoConstraints = false
        return labelAgePerson
    }()
    
    // лейбл тип
    var labelType: UILabel = {
        let labelTypePerson = UILabel()
        labelTypePerson.numberOfLines = 0
        labelTypePerson.translatesAutoresizingMaskIntoConstraints = false
        return labelTypePerson
    }()
    
    // лейбл авторизации
    var labelAutorization: UILabel = {
        let labelAuth = UILabel()
        labelAuth.numberOfLines = 0
        labelAuth.translatesAutoresizingMaskIntoConstraints = false
        return labelAuth
    }()
    
    // поле ввода логина
    var textFieldLogin: UITextField = {
        let textFieldLog = UITextField()
        textFieldLog.translatesAutoresizingMaskIntoConstraints = false
        textFieldLog.placeholder = "Введите логин"
        textFieldLog.clipsToBounds = true
        textFieldLog.layer.borderColor = UIColor.black.cgColor
        textFieldLog.layer.borderWidth = 1
        return textFieldLog
    }()
    
    // поле ввода пароля
    var textFieldPassword: UITextField = {
        let textFieldPass = UITextField()
        textFieldPass.translatesAutoresizingMaskIntoConstraints = false
        textFieldPass.placeholder = "Введите пароль"
        textFieldPass.clipsToBounds = true
        textFieldPass.layer.borderColor = UIColor.black.cgColor
        textFieldPass.layer.borderWidth = 1
        return textFieldPass
    }()
    
    // создаю метод отображения полей "Пароль" и "Логин"
    @objc func showInfo() {
        if textFieldLogin.text == nil && textFieldPassword.text == nil {
            print(#function)
        } else {
            labelAutorization.text = "Логин: \(textFieldLogin.text ?? "")\nПароль: \(textFieldPassword.text ?? "")"
        }
    }
    
    // создаю константу с моделью данных
    let person1 = PersonModel(name: "Albert", lastName: "Bakhitov", age: 28, personType: .qa)
    
    // создаем кнопку авторизации
    var buttonAutorization: UIButton = {
        // инициализация кнопки buttonAutorization
        let buttonAuth = UIButton(type: .system)
        buttonAuth.translatesAutoresizingMaskIntoConstraints = false
        buttonAuth.setTitle("Авторизация", for: .normal)
        buttonAuth.addTarget(self, action: #selector(showInfo), for: .touchUpInside)
        return buttonAuth
    }()
    
    // метод для добавления отображения текста в лейблах на экране
    func putLabel() {
        labelName.text = "Имя: \(person1.name)"
        labelLastName.text = "Фамилия: \(person1.lastName)"
        labelAge.text = "Возраст: \(person1.age)"
        labelType.text = "Специальность: \(person1.personType)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        addSubViews()
        setupConstraints()
        putLabel()
    }
}
    extension PersonViewController {
        
        // метод для добавления вью на экран
        func addSubViews() {
            
            // добавляю текстовые поля и кнопку на экран
            view.addSubview(textFieldLogin)
            view.addSubview(textFieldPassword)
            view.addSubview(buttonAutorization)
            view.addSubview(labelAutorization)
            view.addSubview(labelName)
            view.addSubview(labelLastName)
            view.addSubview(labelAge)
            view.addSubview(labelType)
        }
        
        func setupConstraints() {
            
            // констрейты для labelType
              NSLayoutConstraint.activate([
                  labelType.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                  labelType.bottomAnchor.constraint(equalTo: labelAge.bottomAnchor, constant: 20),
                  labelType.widthAnchor.constraint(equalToConstant: 250)
              ])
            
            // констрейты для labelAge
            NSLayoutConstraint.activate([
                labelAge.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                labelAge.bottomAnchor.constraint(equalTo: labelLastName.bottomAnchor, constant: 20),
                labelAge.widthAnchor.constraint(equalToConstant: 250)
            ])
            
            // констрейты для labelLastName
            NSLayoutConstraint.activate([
                labelLastName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                labelLastName.bottomAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 20),
                labelLastName.widthAnchor.constraint(equalToConstant: 250)
            ])
            
            // констрейты для labelName
            NSLayoutConstraint.activate([
                labelName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                labelName.bottomAnchor.constraint(equalTo: buttonAutorization.bottomAnchor, constant: 20),
                labelName.widthAnchor.constraint(equalToConstant: 250)
            ])
            
            // констрейты для labelAutorization
            NSLayoutConstraint.activate([
                labelAutorization.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 20),
                labelAutorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 60 ),
                labelAutorization.widthAnchor.constraint(equalToConstant: 250)
            ])

            // констрейты для поля textFieldLogin
            NSLayoutConstraint.activate([
                textFieldLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                textFieldLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
                textFieldLogin.widthAnchor.constraint(equalToConstant: 250)
            ])

           // констрейты для поля textFieldPassword
            NSLayoutConstraint.activate([
                textFieldPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                textFieldPassword.topAnchor.constraint(equalTo: textFieldLogin.bottomAnchor, constant: 20),
                textFieldPassword.widthAnchor.constraint(equalToConstant: 250)
            ])

            // констрейты для кнопки buttonAutorization
            NSLayoutConstraint.activate([
                buttonAutorization.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50),
                buttonAutorization.centerYAnchor.constraint(equalTo: labelAutorization.centerYAnchor),
            ])
        }
    }


