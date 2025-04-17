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
    var personFullNameLabel: UILabel = {
        // создаю экзепляр UILabel
        let labelPersonFullName = UILabel()
        // разрешаю метке переносить текст на новую строку при необходимости
        labelPersonFullName.numberOfLines = 0
        // отключаю автоматическое создание ограничений constrait
        labelPersonFullName.translatesAutoresizingMaskIntoConstraints = false
        // назначаю Accessability personFullNameLabel
        labelPersonFullName.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personFullNameLabel.rawValue
        // возвращаю созданный UILabel
        return labelPersonFullName
    }()
    // объявляю переменную personAgeLabel
    var personAgeLabel: UILabel = {
        // создаю экземпляр UILabel
        let labelPersonAge = UILabel()
        // разрешаю метке переносить текст на новую строку при необходимости
        labelPersonAge.numberOfLines = 0
        // отключаю автоматическое создание ограничений constrait
        labelPersonAge.translatesAutoresizingMaskIntoConstraints = false
        // назначаю Accessability для personAgeLabel
        labelPersonAge.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personAgeLabel.rawValue
        // возвращаю созданный UILabel
        return labelPersonAge
    }()
    // объявляю переменную personExpirienceWorTextView
    var personExperienceTextView: UITextView = {
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
        textViewPersonExpirienceWork.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personExperienceTextView.rawValue

        // возвращаю созданный UITextView
        return textViewPersonExpirienceWork
    }()
    // объявляю переменную personAvatarImageView
    var personAvatarImageView: UIImageView = {
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
        // устаналвлию закругление
        imageViewPersonAvatar.clipsToBounds = true
        // принимает размеры изображения
        imageViewPersonAvatar.sizeToFit()
        // назначаю Accessability для personAvatarImageView
        imageViewPersonAvatar.accessibilityIdentifier = Accessibility.PersonViewControllerDetail.personAvatarImageView.rawValue
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

        view.addSubview(personFullNameLabel)
        view.addSubview(personAgeLabel)
        view.addSubview(personExperienceTextView)
        view.addSubview(personAvatarImageView)
        view.backgroundColor = .white
        setupConstraints()
        updateUI()
        titlePVCD()
    }
    // метод обновления текстовых полей для 2 контроллера
    func updateUI() {
        guard let person = person else { return }
        personFullNameLabel.text = "ФИО: \(person.lastName) \(person.name) \(person.sureName)"
        personAgeLabel.text = "Возраст: \(person.age)"
        personExperienceTextView.text = "Опыт работы: 1 год"
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
            personFullNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personFullNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            personFullNameLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    // Констрейты для возраста
    func addAgeLabelConstraints() {
        NSLayoutConstraint.activate([
            personAgeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAgeLabel.topAnchor.constraint(equalTo: personFullNameLabel.bottomAnchor, constant: 20),
            personAgeLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    // Констрейты для текстового поля опыта работы
    func addExperienceTextViewConstraints() {
        NSLayoutConstraint.activate([
            personExperienceTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personExperienceTextView.topAnchor.constraint(equalTo: personAgeLabel.bottomAnchor, constant: 20),
            personExperienceTextView.widthAnchor.constraint(equalToConstant: 300),
            personExperienceTextView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    // Констрейты для аватара
    func addAvatarImageViewConstraints() {
        NSLayoutConstraint.activate([
            personAvatarImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personAvatarImageView.topAnchor.constraint(equalTo:personExperienceTextView.bottomAnchor, constant: 20),
            personAvatarImageView.widthAnchor.constraint(equalToConstant: 100),
            personAvatarImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

