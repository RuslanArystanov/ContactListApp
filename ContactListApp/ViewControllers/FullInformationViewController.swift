//
//  FullInformationViewController.swift
//  ContactListApp
//
//  Created by Руслан Арыстанов on 12.11.2024.
//

import UIKit

class FullInformationViewController: UIViewController {
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var fullName = ""
    var phone = ""
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
