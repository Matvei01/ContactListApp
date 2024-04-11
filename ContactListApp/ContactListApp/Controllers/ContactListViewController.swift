//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Matvei Khlestov on 11.04.2024.
//

import UIKit

// MARK: - ContactListViewController
final class ContactListViewController: UITableViewController {
    
    // MARK: - Public Properties
    var persons: [Person] = []
    
    // MARK: - Private Properties
    private let cellID = "showContactListVC"
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
}

// MARK: - Table view data source
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - Table view delegate
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        
        let contactDetailsVC = ContactDetailsViewController()
        contactDetailsVC.person = person
        
        navigationController?.pushViewController(contactDetailsVC, animated: true)
    }
}
