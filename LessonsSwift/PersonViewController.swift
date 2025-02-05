import UIKit

class PersonViewController: UIViewController {
    // лейбл имени
    var labelName: UILabel = {
        let nameLabel = UILabel()
        nameLabel.numberOfLines = 0
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    // лейбл фамилии
    var labelLastName: UILabel = {
        let lastNameLabel = UILabel()
        lastNameLabel.numberOfLines = 0
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return lastNameLabel
    }()
    // лейбл возраста
    var labelAge: UILabel = {
        let ageLabel = UILabel()
        ageLabel.numberOfLines = 0
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        return ageLabel
    }()
    // лейбл тип
    var labelTypePerson: UILabel = {
        let typePersonLabel = UILabel()
        typePersonLabel.numberOfLines = 0
        typePersonLabel.translatesAutoresizingMaskIntoConstraints = false
        return typePersonLabel
    }()
    // лейбл авторизации
    var labelAutorization: UILabel = {
        let autorizationLabel = UILabel()
        autorizationLabel.numberOfLines = 0
        autorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        return autorizationLabel
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
        if let login = textFieldLogin.text, !login.isEmpty, let password = textFieldPassword.text, !password.isEmpty {
            labelAutorization.text = "Логин: \(login)\nПароль:\(password)"
        } else {
            labelAutorization.text = "введите логин и пароль"
        }
    }
    // создаю константу с моделью данных
    let person1 = PersonModel(name: "Albert", lastName: "Bakhitov", age: 28, personType: .qa)
    // создаем кнопку авторизации
    var buttonAutorization: UIButton = {
        // инициализация кнопки buttonAutorization
        let buttonAuth = UIButton(type: .system)
        buttonAuth.translatesAutoresizingMaskIntoConstraints = false
        buttonAuth.setTitle("Авторизация: ", for: .normal)
        buttonAuth.addTarget(self, action: #selector(showInfo), for: .touchUpInside)
        return buttonAuth
    }()
    // метод для добавления отображения текста в лейблах на экране
    func putLabel() {
        labelName.text = "Имя: \(person1.name)"
        labelLastName.text = "Фамилия: \(person1.lastName)"
        labelAge.text = "Возраст: \(person1.age)"
        labelTypePerson.text = "Специальность: \(person1.personType)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addViewTextFieldLogin()
        addViewTextFieldPassword()
        addViewLabelAutorization()
        addViewButtonAutorization()
        addViewButtonAutorization()
        addViewLabelName()
        addViewLabelLastName()
        addViewLabelAge()
        addViewLabelTypePerson()
        setupConstraints()
        putLabel()
    }
}

extension PersonViewController {
    // метод вызова textFieldLogin
    func addViewTextFieldLogin() {
        view.addSubview(textFieldLogin)
    }
    // метод вызова textFieldPassword
    func addViewTextFieldPassword() {
        view.addSubview(textFieldPassword)
    }
    // метод вызова labelAutorization
    func addViewLabelAutorization() {
        view.addSubview(labelAutorization)
    }
    // метод вызова buttonAutorization
    func addViewButtonAutorization() {
        view.addSubview(buttonAutorization)
    }
    // метод вызова labelName
    func addViewLabelName() {
        view.addSubview(labelName)
    }
    // метод вызова addViewLabelLastName
    func addViewLabelLastName() {
        view.addSubview(labelLastName)
    }
    // метод вызова labelAge
    func addViewLabelAge() {
        view.addSubview(labelAge)
    }
    // метод вызова labelTypePerson
    func addViewLabelTypePerson() {
        view.addSubview(labelTypePerson)
    }
    
    func setupConstraints() {
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
        // констрейты для labelAutorization
        NSLayoutConstraint.activate([
            labelAutorization.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 20),
            labelAutorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30 ),
            labelAutorization.widthAnchor.constraint(equalToConstant: 250)
        ])
        // констрейты для кнопки buttonAutorization
        NSLayoutConstraint.activate([
            buttonAutorization.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75),
            buttonAutorization.centerYAnchor.constraint(equalTo: labelAutorization.centerYAnchor),
        ])
        // констрейты для labelName
        NSLayoutConstraint.activate([
            labelName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelName.bottomAnchor.constraint(equalTo: buttonAutorization.bottomAnchor, constant: 20),
            labelName.widthAnchor.constraint(equalToConstant: 250)
        ])
        // констрейты для labelLastName
        NSLayoutConstraint.activate([
            labelLastName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelLastName.bottomAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 20),
            labelLastName.widthAnchor.constraint(equalToConstant: 250)
        ])
        // констрейты для labelAge
        NSLayoutConstraint.activate([
            labelAge.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelAge.bottomAnchor.constraint(equalTo: labelLastName.bottomAnchor, constant: 20),
            labelAge.widthAnchor.constraint(equalToConstant: 250)
        ])
        // констрейты для labelTypePerson
        NSLayoutConstraint.activate([
            labelTypePerson.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelTypePerson.bottomAnchor.constraint(equalTo: labelAge.bottomAnchor, constant: 20),
            labelTypePerson.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
}
