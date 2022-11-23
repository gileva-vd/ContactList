//
//  PersoneDetalisViewController.swift
//  ContactList
//
//  Created by Валерия Гилева on 22.11.2022.
//

import UIKit

class PersoneDetalisViewController: UIViewController {

    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLable: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLable.text = "Phone: \(person.phone)"
        emailLable.text = "Email: \(person.email)"
        self.title = person.fullName
    }

}

