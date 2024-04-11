//
//  TabBarController.swift
//  ContactListApp
//
//  Created by Matvei Khlestov on 12.04.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
    }
    
    private func generateTabBar() {
        let contactListVC = ContactListViewController()
        contactListVC.persons = persons
        
        let sectionVC = SectionViewController()
        sectionVC.persons = persons
        
        viewControllers = [
            generateVC(
                rootViewController: contactListVC,
                title: "Person List",
                image: UIImage(systemName: "person.crop.circle.fill")
            ),
            generateVC(
                rootViewController: sectionVC,
                title: "Contacts",
                image: UIImage(systemName: "phone.circle.fill")
            )
        ]
    }
    
    private func generateVC(rootViewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        rootViewController.navigationItem.title = title
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        navigationVC.navigationBar.prefersLargeTitles = true
        
        return navigationVC
    }
}
