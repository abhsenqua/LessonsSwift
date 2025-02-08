import UIKit

class PersonViewController: UIViewController {
    // лейбл имени
    var personNameLabel: UILabel = {
        let labelPersonName = UILabel()
        labelPersonName.numberOfLines = 0
        labelPersonName.translatesAutoresizingMaskIntoConstraints = false
        return labelPersonName
    }()
    // лейбл фамилии
    var personLastNameLabel: UILabel = {
        let labelPersonLastName = UILabel()
        labelPersonLastName.numberOfLines = 0
        labelPersonLastName.translatesAutoresizingMaskIntoConstraints = false
        return labelPersonLastName
    }()
    // лейбл возраста
    var personAgeLabel: UILabel = {
        let labelPersonAge = UILabel()
        labelPersonAge.numberOfLines = 0
        labelPersonAge.translatesAutoresizingMaskIntoConstraints = false
        return labelPersonAge
    }()
    // лейбл тип
    var personTypeLabel: UILabel = {
        let labelPersonType = UILabel()
        labelPersonType.numberOfLines = 0
        labelPersonType.translatesAutoresizingMaskIntoConstraints = false
        return labelPersonType
    }()
    // лейбл авторизации
    var personAutoruzationLabel: UILabel = {
        let labelPersonAutorization = UILabel()
        labelPersonAutorization.numberOfLines = 0
        labelPersonAutorization.translatesAutoresizingMaskIntoConstraints = false
        return labelPersonAutorization
    }()
    // поле ввода логина
    var loginTextField: UITextField = {
        let textFieldLog = UITextField()
        textFieldLog.translatesAutoresizingMaskIntoConstraints = false
        textFieldLog.placeholder = "Введите логин"
        textFieldLog.clipsToBounds = true
        textFieldLog.layer.borderColor = UIColor.black.cgColor
        textFieldLog.layer.borderWidth = 1
        return textFieldLog
    }()
    // поле ввода пароля
    var passwordTextField: UITextField = {
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
        if !(loginTextField.text?.isEmpty ?? true) && !(passwordTextField.text?.isEmpty ?? true) {
            personAutoruzationLabel.text = "Логин: \(loginTextField.text!)\nПароль: \(passwordTextField.text!)"
        } else {
            personAutoruzationLabel.text = "Введите логин и пароль"
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
    func displayTextLabels() {
        personNameLabel.text = "Имя: \(person1.name)"
        personLastNameLabel.text = "Фамилия: \(person1.lastName)"
        personAgeLabel.text = "Возраст: \(person1.age)"
        personTypeLabel.text = "Специальность: \(person1.personType)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addView()
        setupConstraints()
        displayTextLabels()
    }
}

extension PersonViewController {
    // метод добавления view на экран
    func addView() {
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(personAutoruzationLabel)
        view.addSubview(buttonAutorization)
        view.addSubview(personNameLabel)
        view.addSubview(personLastNameLabel)
        view.addSubview(personAgeLabel)
        view.addSubview(personTypeLabel)
    }
    // метод вызова констрейтов
    func setupConstraints() {
        addLoginTextFieldConstrait()
        addPasswordTextFieldConstrait()
        addAutoruzationLabelPersonConstraint()
        addButtonAutorizationConstraint()
        addNameLabelPersonConstrait()
        addLastNameLabelPersonConstrait()
        addAgeLabelPersonConstraint()
        addTypeLabelPersonConstrait()
    }
    // метод констрейта textFieldLogin
    func addLoginTextFieldConstrait() {
        NSLayoutConstraint.activate([
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            loginTextField.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта textFieldPassword
    func addPasswordTextFieldConstrait() {
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personAutoruzationLabel
    func addAutoruzationLabelPersonConstraint() {
        NSLayoutConstraint.activate([
            personAutoruzationLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            personAutoruzationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30 ),
            personAutoruzationLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта buttonAutorization
    func addButtonAutorizationConstraint() {
        NSLayoutConstraint.activate([
            buttonAutorization.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75),
            buttonAutorization.centerYAnchor.constraint(equalTo: personAutoruzationLabel.centerYAnchor),
        ])
    }
    // метод констрейта personNameLabel
    func addNameLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personNameLabel.bottomAnchor.constraint(equalTo: buttonAutorization.bottomAnchor, constant: 20),
            personNameLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personLastNameLabel
    func addLastNameLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personLastNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personLastNameLabel.bottomAnchor.constraint(equalTo: personNameLabel.bottomAnchor, constant: 20),
            personLastNameLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personAgeLabel
    func addAgeLabelPersonConstraint() {
        NSLayoutConstraint.activate([
            personAgeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAgeLabel.bottomAnchor.constraint(equalTo: personLastNameLabel.bottomAnchor, constant: 20),
            personAgeLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personTypeLabel
    func addTypeLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personTypeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personTypeLabel.bottomAnchor.constraint(equalTo: personAgeLabel.bottomAnchor, constant: 20),
            personTypeLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
}
