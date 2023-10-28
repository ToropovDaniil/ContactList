//
//  FullContactTableViewController.swift
//  ContactList
//
//  Created by Торопов Даниил  on 27.10.2023.
//

import UIKit

final class FullContactTableViewController: UITableViewController {
    
    var person: [Person]!
}

// MARK: - extension FullContactTableViewController
extension FullContactTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = person[section]
        return "\(person.fullName)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let personIndex = person[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = "Email: \(personIndex.email)"
        } else {
            content.text = "Phone: \(personIndex.phone)"
        }
        cell.contentConfiguration = content
        return cell
    }
}
