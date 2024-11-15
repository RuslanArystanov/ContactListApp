//
//  MainNavigationController.swift
//  ContactListApp
//
//  Created by Руслан Арыстанов on 15.11.2024.
//

import UIKit

class MainNavigationController: UINavigationController {
    let dataManager = DataManager()
    var person = Person()
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MainNavigationController {
    private func generateRandomContacts() {
        for _ in dataManager.names {
            person = .init(
                name: dataManager.names.randomElement() ?? "",
                surname: dataManager.surnames.randomElement() ?? "",
                phone: dataManager.phoneNumbers.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? ""
            )
            
            persons.append(person)
        }
    }

}
