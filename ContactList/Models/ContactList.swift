//
//  ContactList.swift
//  ContactList
//
//  Created by Торопов Даниил  on 25.10.2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
