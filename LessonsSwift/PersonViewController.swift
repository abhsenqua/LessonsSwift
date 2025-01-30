//
//  ViewController.swift
//  LessonsSwift
//
//  Created by Альберт Бахитов on 30.01.2025.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelType: UILabel!
    
    let person1 = PersonModel(name: "Albert",
                                      lastName: "Bakhitov",age: 28, personType:.qa)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonName(_ sender: Any) {
        putLabel()
    }
    
    func putLabel() {
        labelName.text = "Имя: \(person1.name)"
        labelLastName.text = "Фамилия: \(person1.lastName)"
        labelAge.text = "Возраст: \(person1.age)"
        labelType.text = "Специальность: \(person1.personType)"
    }
}


