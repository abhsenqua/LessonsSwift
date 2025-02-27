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
    //лейбл отчества
    var personSureNameLabel: UILabel = {
        let labelSureNamePerson = UILabel()
        labelSureNamePerson.numberOfLines = 0
        labelSureNamePerson.translatesAutoresizingMaskIntoConstraints = false
        return labelSureNamePerson
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
    var personAuthorizationLabel: UILabel = {
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
    // создаю константу с моделью данных
    var person = PersonModel(name: "Альберт", lastName: "Бахитов", sureName: "Ирикович", age: 28, personType: .qa)
    // создаем кнопку авторизации
    var buttonAuthorization: UIButton = {
        // инициализация кнопки buttonAutorization
        let buttonAuth = UIButton(type: .system)
        buttonAuth.translatesAutoresizingMaskIntoConstraints = false
        buttonAuth.setTitle("Авторизация", for: .normal)
        buttonAuth.addTarget(self, action: #selector(showInfo), for: .touchUpInside)
        return buttonAuth
    }()
    // кнопка для перехода на 2 контроллер
    var buttonNextScreenPersonViewControllerDetail: UIButton = {
        let buttonNextScreenPVCD = UIButton(type: .system)
        buttonNextScreenPVCD.translatesAutoresizingMaskIntoConstraints = false
        buttonNextScreenPVCD.setTitle("Открыть 2 контроллер", for: .normal)
        buttonNextScreenPVCD.addTarget(self, action: #selector(openPersonViewControllerDetail), for: .touchUpInside)
        return buttonNextScreenPVCD
    }()
    // метод для добавления отображения текста в лейблах на экране
    func displayTextLabels() {
        personNameLabel.text = "Имя: \(person.name)"
        personLastNameLabel.text = "Фамилия: \(person.lastName)"
        personSureNameLabel.text = "Отчество: \(person.sureName)"
        personAgeLabel.text = "Возраст: \(person.age)"
        personTypeLabel.text = "Специальность: \(person.personType)"
    }
    // создаю метод отображения полей "Пароль" и "Логин"
    @objc func showInfo() {
        if !(loginTextField.text?.isEmpty ?? true) && !(passwordTextField.text?.isEmpty ?? true) {
            personAuthorizationLabel.text = "Логин: \(loginTextField.text!)\nПароль: \(passwordTextField.text!)"
        } else {
            personAuthorizationLabel.text = "Введите логин и пароль"
        }
    }
    // метод перехода на 2 контроллер
    @objc func openPersonViewControllerDetail() {
        // создаю экзепляр 2 контроллера передавая данные person
        let personViewControllerDetail = PersonViewDetailController(Person: person)
        // задаю метод открытия экрана
        personViewControllerDetail.modalPresentationStyle = .formSheet
        // открываю 2 контроллер
        navigationController?.pushViewController(personViewControllerDetail, animated: true)
    }
    // метод для установки татйтла PVC
    func titlePVC() {
        title = "PVC \(person.name)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        addView()
        setupConstraints()
        displayTextLabels()
        titlePVC()
    }
}

extension PersonViewController {
    // метод добавления view на экран
    func addView() {
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(personAuthorizationLabel)
        view.addSubview(buttonAuthorization)
        view.addSubview(personNameLabel)
        view.addSubview(personLastNameLabel)
        view.addSubview(personSureNameLabel)
        view.addSubview(personAgeLabel)
        view.addSubview(personTypeLabel)
        view.addSubview(buttonNextScreenPersonViewControllerDetail)
    }
    // метод вызова констрейтов
    func setupConstraints() {
        addLoginTextFieldConstrait()
        addPasswordTextFieldConstrait()
        addAuthorizationLabelPersonConstraint()
        addButtonAutorizationConstraint()
        addNameLabelPersonConstrait()
        addLastNameLabelPersonConstrait()
        addSureNameLabelPersonConstrait()
        addAgeLabelPersonConstraint()
        addTypeLabelPersonConstrait()
        addButtonNextScreenPersonConstraint()
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
    func addAuthorizationLabelPersonConstraint() {
        NSLayoutConstraint.activate([
            personAuthorizationLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            personAuthorizationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30 ),
            personAuthorizationLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта buttonAutorization
    func addButtonAutorizationConstraint() {
        NSLayoutConstraint.activate([
            buttonAuthorization.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75),
            buttonAuthorization.centerYAnchor.constraint(equalTo: personAuthorizationLabel.centerYAnchor),
        ])
    }
    // метод констрейта personNameLabel
    func addNameLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personNameLabel.bottomAnchor.constraint(equalTo: buttonAuthorization.bottomAnchor, constant: 20),
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
    func addSureNameLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personSureNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personSureNameLabel.bottomAnchor.constraint(equalTo: personLastNameLabel.bottomAnchor, constant: 20),
            personSureNameLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personAgeLabel
    func addAgeLabelPersonConstraint() {
        NSLayoutConstraint.activate([
            personAgeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAgeLabel.bottomAnchor.constraint(equalTo: personSureNameLabel.bottomAnchor, constant: 20),
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
    // метод констрейта addButtonNextScreenConstraint
    func addButtonNextScreenPersonConstraint() {
        NSLayoutConstraint.activate([
            buttonNextScreenPersonViewControllerDetail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonNextScreenPersonViewControllerDetail.bottomAnchor.constraint(equalTo: personTypeLabel.bottomAnchor, constant: 20)
        ])
    }
}
