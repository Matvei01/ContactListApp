//
//  SectionViewController.swift
//  ContactListApp
//
//  Created by Matvei Khlestov on 11.04.2024.
//

import UIKit

// MARK: - SectionViewController
final class SectionViewController: UITableViewController {
    
    // MARK: - Private Properties
    var persons: [Person] = []
    
    // MARK: - Private Properties
    private let cellID = "showSectionListVC"
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
}

// MARK: - Table view data source
extension SectionViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        
        return cell
    }
}

// MARK: - Table view delegate
extension SectionViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
