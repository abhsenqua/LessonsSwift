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
    // объявляю переменную personFullNameLabel
    var personFullName: UILabel = {
        // создаю экзепляр UILabel
        let labelPersonFullName = UILabel()
        // разрешаю метке переносить текст на новую строку при необходимости
        labelPersonFullName.numberOfLines = 0
        // отключаю автоматическое создание ограничений constrait
        labelPersonFullName.translatesAutoresizingMaskIntoConstraints = false
        // назначаю Accessability personFullNameLabel
        labelPersonFullName.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personFullName.rawValue
        // возвращаю созданный UILabel
        return labelPersonFullName
    }()
    // объявляю переменную personAgeLabel
    var personAge: UILabel = {
        // создаю экземпляр UILabel
        let labelPersonAge = UILabel()
        // разрешаю метке переносить текст на новую строку при необходимости
        labelPersonAge.numberOfLines = 0
        // отключаю автоматическое создание ограничений constrait
        labelPersonAge.translatesAutoresizingMaskIntoConstraints = false
        // назначаю Accessability для personAgeLabel
        labelPersonAge.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personAge.rawValue
        // возвращаю созданный UILabel
        return labelPersonAge
    }()
    // объявляю переменную personExpirienceWorTextView
    var personExperience: UITextView = {
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
        // назначаю Accessability для personExperienceTextView
        textViewPersonExpirienceWork.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personExperience.rawValue
        // возвращаю созданный UITextView
        return textViewPersonExpirienceWork
    }()
    // объявляю переменную personAvatarImageView
    var personAvatar: UIImageView = {
        // передаю название аватарки
        let image = UIImage(named: "Image")
        // создаю экзепляр UIView с аватаркой
        let imageViewPersonAvatar = UIImageView(image: image)
        // задаю режим отображения изображения (сохранение границ)
        imageViewPersonAvatar.contentMode = .scaleAspectFill
        // отключаю автоматическое создание ограничений constrait
        imageViewPersonAvatar.translatesAutoresizingMaskIntoConstraints = false
        // устанавливаю радиус
        imageViewPersonAvatar.layer.cornerRadius = 50
        // устанавливаю закругление
        imageViewPersonAvatar.clipsToBounds = true
        // принимает размеры изображения
        imageViewPersonAvatar.sizeToFit()
        // назначаю Accessability для personAvatarImageView
        imageViewPersonAvatar.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personAvatar.rawValue
        // возвращаю созданный UIImageView
        return imageViewPersonAvatar
    }()
    // метод для установки татйтла PVCD
    func titlePVCD() {
        guard let person = person else {
            return title = "Контроллер PVCD"
        }
        title = "PVCD \(person.name)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(personFullName)
        view.addSubview(personAge)
        view.addSubview(personExperience)
        view.addSubview(personAvatar)
        view.backgroundColor = .white
        setupConstraints()
        updateUI()
        titlePVCD()

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Назад",
            style: .plain,
            target: self,
            action: #selector(backButton)
        )
        navigationItem.leftBarButtonItem?.accessibilityIdentifier = "backButton"
    }
    // метод обновления текстовых полей для 2 контроллера
    func updateUI() {
        guard let person = person else { return }
        personFullName.text = "ФИО: \(person.lastName) \(person.name) \(person.sureName)"
        personAge.text = "Возраст: \(person.age)"
        personExperience.text = "Опыт работы: 1 год"
    }
    // метод перехода со 2 контроллера на 1
    @objc func backButton() {
        navigationController?.popViewController(animated: true)
    }
}
// расширение PersonViewDetailController
extension PersonViewDetailController {
    // Метод установки констрейтов
    func setupConstraints() {
        addFullNameLabelConstraints()
        addAgeLabelConstraints()
        addExperienceTextViewConstraints()
        addAvatarImageViewConstraints()
    }
    // констрейт для ФИО
    func addFullNameLabelConstraints() {
        NSLayoutConstraint.activate([
            personFullName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personFullName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            personFullName.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    // Констрейты для возраста
    func addAgeLabelConstraints() {
        NSLayoutConstraint.activate([
            personAge.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAge.topAnchor.constraint(equalTo: personFullName.bottomAnchor, constant: 20),
            personAge.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // Констрейты для текстового поля опыта работы
    func addExperienceTextViewConstraints() {
        NSLayoutConstraint.activate([
            personExperience.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personExperience.topAnchor.constraint(equalTo: personAge.bottomAnchor, constant: 20),
            personExperience.widthAnchor.constraint(equalToConstant: 300),
            personExperience.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    // Констрейты для аватара
    func addAvatarImageViewConstraints() {
        NSLayoutConstraint.activate([
            personAvatar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAvatar.topAnchor.constraint(equalTo:personExperience.bottomAnchor, constant: 20),
            personAvatar.widthAnchor.constraint(equalToConstant: 100),
            personAvatar.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
