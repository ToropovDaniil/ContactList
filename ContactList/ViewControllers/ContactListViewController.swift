//
//  ViewController.swift
//  ContactList
//
//  Created by Торопов Даниил  on 25.10.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var person: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let personVC = segue.destination as? PersonDataViewController else { return }
        personVC.personalData = person[indexPath.row]
    }
}

extension ContactListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let personIndex = person[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = personIndex.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

