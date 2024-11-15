//
//  ContactTableViewController.swift
//  ContactListApp
//
//  Created by Руслан Арыстанов on 11.11.2024.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    let dataManager = DataManager()
    var person = Person()
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateRandomContacts()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataManager.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fullInformationVC = segue.destination as? FullInformationViewController else {
            return
        }
        guard let index = tableView.indexPathForSelectedRow else {return}
        
        fullInformationVC.fullName = persons[index.row].fullName
        fullInformationVC.phoneNumber = persons[index.row].phone
        fullInformationVC.email = persons[index.row].email
    }
    
}

extension ContactTableViewController {
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
