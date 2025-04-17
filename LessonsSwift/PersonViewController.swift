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
    var personNameLabel: UILabel = {
        let labelPersonName = UILabel()
        labelPersonName.numberOfLines = 0
        labelPersonName.translatesAutoresizingMaskIntoConstraints = false
        labelPersonName.accessibilityIdentifier = Accessibility.PersonViewController.personNameLabel.rawValue
        return labelPersonName
    }()
    // лейбл фамилии
    var personLastNameLabel: UILabel = {
        let labelPersonLastName = UILabel()
        labelPersonLastName.numberOfLines = 0
        labelPersonLastName.translatesAutoresizingMaskIntoConstraints = false
        labelPersonLastName.accessibilityIdentifier = Accessibility.PersonViewController.personLastNameLabel.rawValue
        return labelPersonLastName
    }()
    //лейбл отчества
    var personSureNameLabel: UILabel = {
        let labelSureNamePerson = UILabel()
        labelSureNamePerson.numberOfLines = 0
        labelSureNamePerson.translatesAutoresizingMaskIntoConstraints = false
        labelSureNamePerson.accessibilityIdentifier = Accessibility.PersonViewController.personSureNameLabel.rawValue
        return labelSureNamePerson
    }()
    // лейбл возраста
    var personAgeLabel: UILabel = {
        let labelPersonAge = UILabel()
        labelPersonAge.numberOfLines = 0
        labelPersonAge.translatesAutoresizingMaskIntoConstraints = false
        labelPersonAge.accessibilityIdentifier = Accessibility.PersonViewController.personAgeLabel.rawValue
        return labelPersonAge
    }()
    // лейбл тип
    var personTypeLabel: UILabel = {
        let labelPersonType = UILabel()
        labelPersonType.numberOfLines = 0
        labelPersonType.translatesAutoresizingMaskIntoConstraints = false
        labelPersonType.accessibilityIdentifier = Accessibility.PersonViewController.personTypeLabel.rawValue
        return labelPersonType
    }()
    // лейбл авторизации
    var personAuthorizationLabel: UILabel = {
        let labelPersonAutorization = UILabel()
        labelPersonAutorization.numberOfLines = 0
        labelPersonAutorization.translatesAutoresizingMaskIntoConstraints = false
        labelPersonAutorization.accessibilityIdentifier = Accessibility.PersonViewController.personAuthorizationLabel.rawValue
        return labelPersonAutorization
    }()
    // поле ввода логина
    var personLoginTextField: UITextField = {
        let textFieldLog = UITextField()
        textFieldLog.translatesAutoresizingMaskIntoConstraints = false
        textFieldLog.placeholder = "Введите логин"
        textFieldLog.clipsToBounds = true
        textFieldLog.layer.borderColor = UIColor.black.cgColor
        textFieldLog.layer.borderWidth = 1
        textFieldLog.accessibilityIdentifier = Accessibility.PersonViewController.personLoginTextField.rawValue
        return textFieldLog
    }()
    // поле ввода пароля
    var personPasswordTextField: UITextField = {
        let textFieldPass = UITextField()
        textFieldPass.translatesAutoresizingMaskIntoConstraints = false
        textFieldPass.placeholder = "Введите пароль"
        textFieldPass.clipsToBounds = true
        textFieldPass.layer.borderColor = UIColor.black.cgColor
        textFieldPass.layer.borderWidth = 1
        textFieldPass.accessibilityIdentifier = Accessibility.PersonViewController.personPasswordTextField.rawValue
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
    var personButtonNextScreenPersonViewControllerDetail: UIButton = {
        let buttonNextScreenPVCD = UIButton(type: .system)
        buttonNextScreenPVCD.translatesAutoresizingMaskIntoConstraints = false
        buttonNextScreenPVCD.setTitle("Открыть 2 контроллер", for: .normal)
        buttonNextScreenPVCD.accessibilityIdentifier = Accessibility.PersonViewController.personButtonNextScreenPersonViewControllerDetail.rawValue
        return buttonNextScreenPVCD
    }()
    // MARK: метод проверки видимости элемента

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
        if !(personLoginTextField.text?.isEmpty ?? true) && !(personPasswordTextField.text?.isEmpty ?? true) {
            personAuthorizationLabel.text = "Логин: \(personLoginTextField.text!)\nПароль: \(personPasswordTextField.text!)"
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
    //метод обновления возраста
    @objc func sliderValueChanged(_ sender: UISlider) {
        let age = Int(sender.value)
        personAgeLabel.text = "Возраст: \(age)"
        person.age = age
    }

    //метод переключения свитчера
    @objc
    func changeSwitchPerson() {
        if personSwitcher.isOn {
            personNameLabel.isHidden = false
            personLastNameLabel.isHidden = false
            personSureNameLabel.isHidden = false
            personAgeLabel.isHidden = false
            personTypeLabel.isHidden = false
            personAuthorizationLabel.isHidden = false
            personLoginTextField.isHidden = false
            personPasswordTextField.isHidden = false
            buttonAuthorization.isHidden = false
            personButtonNextScreenPersonViewControllerDetail.isHidden = false
            personAgeSlider.isHidden = false
        } else {
            personNameLabel.isHidden = true
            personLastNameLabel.isHidden = true
            personSureNameLabel.isHidden = true
            personAgeLabel.isHidden = true
            personTypeLabel.isHidden = true
            personAuthorizationLabel.isHidden = true
            personLoginTextField.isHidden = true
            personPasswordTextField.isHidden = true
            buttonAuthorization.isHidden = true
            personButtonNextScreenPersonViewControllerDetail.isHidden = true
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
        personButtonNextScreenPersonViewControllerDetail.addTarget(self, action: #selector(openPersonViewControllerDetail), for: .touchUpInside)
        buttonAuthorization.addTarget(self, action: #selector(showInfo), for: .touchUpInside)
    }
}

extension PersonViewController {
    // метод добавления view на экран
    func addView() {
        view.addSubview(personLoginTextField)
        view.addSubview(personPasswordTextField)
        view.addSubview(personAuthorizationLabel)
        view.addSubview(buttonAuthorization)
        view.addSubview(personNameLabel)
        view.addSubview(personLastNameLabel)
        view.addSubview(personSureNameLabel)
        view.addSubview(personAgeLabel)
        view.addSubview(personTypeLabel)
        view.addSubview(personButtonNextScreenPersonViewControllerDetail)
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
            personLoginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personLoginTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            personLoginTextField.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта textFieldPassword
    func addPasswordTextFieldConstrait() {
        NSLayoutConstraint.activate([
            personPasswordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personPasswordTextField.topAnchor.constraint(equalTo: personLoginTextField.bottomAnchor, constant: 20),
            personPasswordTextField.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // метод констрейта personAutoruzationLabel
    func addAuthorizationLabelPersonConstraint() {
        NSLayoutConstraint.activate([
            personAuthorizationLabel.topAnchor.constraint(equalTo: personPasswordTextField.bottomAnchor, constant: 20),
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
    // метод констрейта personSureNameLabel
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
    // метод констрейта buttonNextScreenPersonViewControllerDetail
    func addButtonNextScreenPersonConstraint() {
        NSLayoutConstraint.activate([
            personButtonNextScreenPersonViewControllerDetail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personButtonNextScreenPersonViewControllerDetail.bottomAnchor.constraint(equalTo: personTypeLabel.bottomAnchor, constant: 25)
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
            personAgeSlider.topAnchor.constraint(equalTo: personAgeLabel.bottomAnchor, constant: 40),
            personAgeSlider.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
}
