//
//  PersonDataViewController.swift
//  ContactList
//
//  Created by Торопов Даниил  on 26.10.2023.
//

import UIKit

final class PersonDataViewController: UIViewController {
    
    var personalData: Person!

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = personalData.fullName
        phoneLabel.text = personalData.phone
        emailLabel.text = personalData.email
    }

}
