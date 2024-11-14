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
    
    var setNames: Set<String> = []
    var setSurnames: Set<String> = []
    
    var names: [String] = []
    var surnames: [String] = []
    
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
        
        person.name = names[indexPath.row]
        person.surname = surnames[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else {return}
//        let viewControllers = tabBarController.viewControllers
//        
//        for VC in viewControllers! {
//            if let fullInformationVC = VC as? FullInformationViewController {
//                fullInformationVC.fullName = person.fullName
//            }
//        }
//
//    }
    
}

extension ContactTableViewController {
    private func generateRandomContacts() {
        for (name, surname) in zip(dataManager.names, dataManager.surnames) {
        
            setSurnames.insert(name)
            setNames.insert(surname)
        }
        
        for name in setNames {
            names.append(name)
        }
        
        for surname in setSurnames {
            surnames.append(surname)
        }
    }
}
