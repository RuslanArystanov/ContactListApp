//
//  DetailContactTableViewController.swift
//  ContactListApp
//
//  Created by Руслан Арыстанов on 11.11.2024.
//

import UIKit

class DetailContactTableViewController: UITableViewController {
    
    var persons: [Person] = []
    var contactInformatios: [[String]] = []
    var images = ["phone", "tray"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.contentView.backgroundColor = .systemGray5
            header.textLabel?.textColor = .black
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailContact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.image = UIImage(systemName: images[indexPath.row])
        content.text = contactInformatios[indexPath.section][indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }
}
