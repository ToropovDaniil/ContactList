//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Торопов Даниил  on 27.10.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private var person = [Person]()
    private let dataStore = DataStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0..<dataStore.names.count {
            person.append(dataStore.getPersonalData())
        }
        
        getDataIntoView()
    }
    
    private func getDataIntoView() {
        guard let viewControllers else { return }
        
        if let firstNavigationVC = viewControllers[0] as? UINavigationController {
            let contactListVC = firstNavigationVC.topViewController
            
            guard let contactListVC = contactListVC as? ContactListViewController else { return }
            contactListVC.person = person
            
        } else if let secondNavigationVC = viewControllers[1] as? UINavigationController {
            let fullContactVC = secondNavigationVC.topViewController
            
            guard let fullContactVC = fullContactVC as? FullContactTableViewController else { return }
            fullContactVC.person = person
        }
    }
}
