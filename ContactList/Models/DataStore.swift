//
//  File.swift
//  ContactList
//
//  Created by Торопов Даниил  on 27.10.2023.
//

import Foundation

final class DataStore {
    
    var names = ["Steve", "Bill", "Sergey", "Jeff", "Pavel"]
    var surnames = ["Jobs", "Gates", "Brin", "Bezos", "Durov"]
    var phones = [String]()
    var emails = [String]()
    
    init() {
        for index in 0..<names.count {
            let email = "\(names[index]).\(surnames[index])@gmail.com"
            let phone = "111 - \(Int.random(in: 100...999)) - \(Int.random(in: 1000...9999))"
            emails.append(email)
            phones.append(phone)
        }
    }
    
    func getPersonalData() -> Person {
        let index = Int.random(in: 0..<names.count)
        let name = names[index]
        let surname = surnames[index]
        let phone = phones[index]
        let email = emails[index]
        
        names.remove(at: index)
        surnames.remove(at: index)
        phones.remove(at: index)
        emails.remove(at: index)
        
        return Person(name: name, surname: surname, phone: phone, email: email)
    }
}
