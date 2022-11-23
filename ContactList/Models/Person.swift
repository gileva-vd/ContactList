//
//  Models.swift
//  ContactList
//
//  Created by Валерия Гилева on 22.11.2022.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName : String{
        "\(name) \(surname)"
    }
}

extension Person{
    static func getPersonList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surnames
        let emails = DataStore.shared.emails
        let phones = DataStore.shared.phones
        
        for row in 0..<names.count{
            let person = Person(
                name: names[row],
                surname: surnames[row],
                email: emails[row],
                phone: phones[row]
            )
            persons.append(person)
        }
        
        return persons
    }
}
