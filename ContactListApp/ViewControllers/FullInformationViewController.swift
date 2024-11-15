//
//  FullInformationViewController.swift
//  ContactListApp
//
//  Created by Руслан Арыстанов on 14.11.2024.
//

import UIKit

class FullInformationViewController: UIViewController {
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var fullName = ""
    var phoneNumber = ""
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = fullName
        phoneNumberLabel.text = phoneNumber
        emailLabel.text = email
    }
}
