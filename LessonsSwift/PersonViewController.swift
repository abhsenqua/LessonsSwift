import UIKit

class PersonViewController: UIViewController {
    // слайдер для возраста
    lazy var personAgeSlider: UISlider = {
        let ageSlider = UISlider()
        ageSlider.minimumValue = 0
        ageSlider.maximumValue = 45
        ageSlider.value = Float(person.age)
        ageSlider.isContinuous = true
        ageSlider.translatesAutoresizingMaskIntoConstraints = false
        ageSlider.accessibilityIdentifier = Accessibility.PersonViewController.personAgeSlider.rawValue
        return ageSlider
    }()
    // свитчер переключения
    let personSwitcher: UISwitch = {
        let switcher = UISwitch()
        switcher.translatesAutoresizingMaskIntoConstraints = false
        switcher.accessibilityIdentifier = Accessibility.PersonViewController.personSwitcher.rawValue
        return switcher
    }()
    // лейбл имени
    var personName: UILabel = {
        let labelPersonName = UILabel()
        labelPersonName.numberOfLines = 0
        labelPersonName.translatesAutoresizingMaskIntoConstraints = false
        labelPersonName.accessibilityIdentifier = Accessibility.PersonViewController.personName.rawValue
        return labelPersonName
    }()
    // лейбл фамилии
    var personLastName: UILabel = {
        let labelPersonLastName = UILabel()
        labelPersonLastName.numberOfLines = 0
        labelPersonLastName.translatesAutoresizingMaskIntoConstraints = false
        labelPersonLastName.accessibilityIdentifier = Accessibility.PersonViewController.personLastName.rawValue
        return labelPersonLastName
    }()
    //лейбл отчества
    var personSureName: UILabel = {
        let labelSureNamePerson = UILabel()
        labelSureNamePerson.numberOfLines = 0
        labelSureNamePerson.translatesAutoresizingMaskIntoConstraints = false
        labelSureNamePerson.accessibilityIdentifier = Accessibility.PersonViewController.personSureName.rawValue
        return labelSureNamePerson
    }()
    // лейбл возраста
    var personAge: UILabel = {
        let labelPersonAge = UILabel()
        labelPersonAge.numberOfLines = 0
        labelPersonAge.translatesAutoresizingMaskIntoConstraints = false
        labelPersonAge.accessibilityIdentifier = Accessibility.PersonViewController.personAge.rawValue
        return labelPersonAge
    }()
    // лейбл тип
    var personType: UILabel = {
        let labelPersonType = UILabel()
        labelPersonType.numberOfLines = 0
        labelPersonType.translatesAutoresizingMaskIntoConstraints = false
        labelPersonType.accessibilityIdentifier = Accessibility.PersonViewController.personType.rawValue
        return labelPersonType
    }()
    // лейбл авторизации
    var personAuthorization: UILabel = {
        let labelPersonAutorization = UILabel()
        labelPersonAutorization.numberOfLines = 0
        labelPersonAutorization.translatesAutoresizingMaskIntoConstraints = false
        labelPersonAutorization.accessibilityIdentifier = Accessibility.PersonViewController.personAuthorization.rawValue
        return labelPersonAutorization
    }()
    // поле ввода логина
    var personLogin: UITextField = {
        let textFieldLog = UITextField()
        textFieldLog.translatesAutoresizingMaskIntoConstraints = false
        textFieldLog.placeholder = "Введите логин"
        textFieldLog.clipsToBounds = true
        textFieldLog.layer.borderColor = UIColor.black.cgColor
        textFieldLog.layer.borderWidth = 1
        textFieldLog.accessibilityIdentifier = Accessibility.PersonViewController.personLogin.rawValue
        return textFieldLog
    }()
    // поле ввода пароля
    var personPassword: UITextField = {
        let textFieldPass = UITextField()
        textFieldPass.translatesAutoresizingMaskIntoConstraints = false
        textFieldPass.placeholder = "Введите пароль"
        textFieldPass.clipsToBounds = true
        textFieldPass.layer.borderColor = UIColor.black.cgColor
        textFieldPass.layer.borderWidth = 1
        textFieldPass.accessibilityIdentifier = Accessibility.PersonViewController.personPassword.rawValue
        return textFieldPass
    }()
    // создаю константу с моделью данных
    var person = PersonModel(name: "Альберт", lastName: "Бахитов", sureName: "Ирикович", age: 28, personType: .qa)
    // создаем кнопку авторизации
    var buttonAuthorization: UIButton = {
        let buttonAuth = UIButton(type: .system)
        buttonAuth.translatesAutoresizingMaskIntoConstraints = false
        buttonAuth.setTitle("Авторизация", for: .normal)
        return buttonAuth
    }()

    // кнопка для перехода на 2 контроллер
    var personButtonNextScreen: UIButton = {
        let buttonNextScreenPVCD = UIButton(type: .system)
        buttonNextScreenPVCD.translatesAutoresizingMaskIntoConstraints = false
        buttonNextScreenPVCD.setTitle("Открыть 2 контроллер", for: .normal)
        buttonNextScreenPVCD.accessibilityIdentifier = Accessibility.PersonViewController.personButtonNextScreen.rawValue
        return buttonNextScreenPVCD
    }()
    // метод для добавления отображения текста в лейблах на экране
    func displayTextLabels() {
        personName.text = "Имя: \(person.name)"
        personLastName.text = "Фамилия: \(person.lastName)"
        personSureName.text = "Отчество: \(person.sureName)"
        personAge.text = "Возраст: \(person.age)"
        personType.text = "Специальность: \(person.personType)"
    }
    // создаю метод отображения полей "Пароль" и "Логин"
    @objc func showInfo() {
        if !(personLogin.text?.isEmpty ?? true) && !(personPassword.text?.isEmpty ?? true) {
            personAuthorization.text = "Логин: \(personLogin.text!)\nПароль: \(personPassword.text!)"
        } else {
            personAuthorization.text = "Введите логин и пароль"
        }
    }
    // метод перехода на 2 контроллер
    @objc func openPersonViewControllerDetail() {
        // создаю экзепляр 2 контроллера передавая данные person
        let personViewControllerDetail = PersonViewDetailController(Person: person)
        // открываю 2 контроллер
        navigationController?.pushViewController(personViewControllerDetail, animated: true)
    }
    // метод для установки татйтла PVC
    func titlePVC() {
        title = "PVC \(person.name)"
    }
    //метод обновления возраста
    @objc func sliderValueChanged(_ sender: UISlider) {
        let age = Int(sender.value)
        personAge.text = "Возраст: \(age)"
        person.age = age
    }

    //метод переключения свитчера
    @objc
    func changeSwitchPerson() {
        if personSwitcher.isOn {
            personName.isHidden = false
            personLastName.isHidden = false
            personSureName.isHidden = false
            personAge.isHidden = false
            personType.isHidden = false
            personAuthorization.isHidden = false
            personLogin.isHidden = false
            personPassword.isHidden = false
            buttonAuthorization.isHidden = false
            personButtonNextScreen.isHidden = false
            personAgeSlider.isHidden = false
        } else {
            personName.isHidden = true
            personLastName.isHidden = true
            personSureName.isHidden = true
            personAge.isHidden = true
            personType.isHidden = true
            personAuthorization.isHidden = true
            personLogin.isHidden = true
            personPassword.isHidden = true
            buttonAuthorization.isHidden = true
            personButtonNextScreen.isHidden = true
            personAgeSlider.isHidden = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addView()
        setupConstraints()
        displayTextLabels()
        titlePVC()
        personSwitcher.isOn = true
        changeSwitchPerson()
        personAgeSlider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
        personSwitcher.addTarget(self, action: #selector(changeSwitchPerson), for: .valueChanged)
        personButtonNextScreen.addTarget(self, action: #selector(openPersonViewControllerDetail), for: .touchUpInside)
        buttonAuthorization.addTarget(self, action: #selector(showInfo), for: .touchUpInside)
    }
}

extension PersonViewController {
    // метод добавления view на экран
    func addView() {
        view.addSubview(personLogin)
        view.addSubview(personPassword)
        view.addSubview(personAuthorization)
        view.addSubview(buttonAuthorization)
        view.addSubview(personName)
        view.addSubview(personLastName)
        view.addSubview(personSureName)
        view.addSubview(personAge)
        view.addSubview(personType)
        view.addSubview(personButtonNextScreen)
        view.addSubview(personSwitcher)
        view.addSubview(personAgeSlider)
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
        addSwitcherPersonConstrait()
        addAgeSliderConstraint()
    }
    // метод констрейта textFieldLogin
    func addLoginTextFieldConstrait() {
        NSLayoutConstraint.activate([
            personLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            personLogin.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта textFieldPassword
    func addPasswordTextFieldConstrait() {
        NSLayoutConstraint.activate([
            personPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personPassword.topAnchor.constraint(equalTo: personLogin.bottomAnchor, constant: 20),
            personPassword.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personAutoruzationLabel
    func addAuthorizationLabelPersonConstraint() {
        NSLayoutConstraint.activate([
            personAuthorization.topAnchor.constraint(equalTo: personPassword.bottomAnchor, constant: 20),
            personAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30 ),
            personAuthorization.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта buttonAutorization
    func addButtonAutorizationConstraint() {
        NSLayoutConstraint.activate([
            buttonAuthorization.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75),
            buttonAuthorization.centerYAnchor.constraint(equalTo: personAuthorization.centerYAnchor),
        ])
    }
    // метод констрейта personNameLabel
    func addNameLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personName.bottomAnchor.constraint(equalTo: buttonAuthorization.bottomAnchor, constant: 20),
            personName.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personLastNameLabel
    func addLastNameLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personLastName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personLastName.bottomAnchor.constraint(equalTo: personName.bottomAnchor, constant: 20),
            personLastName.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personSureNameLabel
    func addSureNameLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personSureName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personSureName.bottomAnchor.constraint(equalTo: personLastName.bottomAnchor, constant: 20),
            personSureName.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personAgeLabel
    func addAgeLabelPersonConstraint() {
        NSLayoutConstraint.activate([
            personAge.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAge.bottomAnchor.constraint(equalTo: personSureName.bottomAnchor, constant: 20),
            personAge.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personTypeLabel
    func addTypeLabelPersonConstrait() {
        NSLayoutConstraint.activate([
            personType.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personType.bottomAnchor.constraint(equalTo: personAge.bottomAnchor, constant: 20),
            personType.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта buttonNextScreenPersonViewControllerDetail
    func addButtonNextScreenPersonConstraint() {
        NSLayoutConstraint.activate([
            personButtonNextScreen.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personButtonNextScreen.bottomAnchor.constraint(equalTo: personType.bottomAnchor, constant: 25)
        ])
    }
    // метод констрейта switcher
    func addSwitcherPersonConstrait() {
        NSLayoutConstraint.activate([
            personSwitcher.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            personSwitcher.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    // метод констрейта ageSlider
    func addAgeSliderConstraint() {
        NSLayoutConstraint.activate([
            personAgeSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAgeSlider.topAnchor.constraint(equalTo: personAge .bottomAnchor, constant: 40),
            personAgeSlider.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
}
