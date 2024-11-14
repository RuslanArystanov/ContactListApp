//
//  Person.swift
//  ContactListApp
//
//  Created by Руслан Арыстанов on 11.11.2024.
//

struct Person {
    var name = ""
    var surname = ""
    var phone = ""
    var email = ""
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
