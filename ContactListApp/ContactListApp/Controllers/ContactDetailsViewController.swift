//
//  ContactDetailsViewController.swift
//  ContactListApp
//
//  Created by Matvei Khlestov on 11.04.2024.
//

import UIKit

// MARK: - ContactDetailsViewController
final class ContactDetailsViewController: UIViewController {
    
    // MARK: - UI Elements
    private lazy var phoneLabel: UILabel = {
        createLabel(title: "Phone: \(person.phoneNumber)")
    }()
    
    private lazy var emailLabel: UILabel = {
        createLabel(title: "Email: \(person.email)")
    }()
    
    private lazy var contactDetailStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            phoneLabel, emailLabel
        ])
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - Private Methods
private extension ContactDetailsViewController {
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(contactDetailStackView)
        
        setupNavigationBar()
        
        setConstraints()
    }
    
    func setupNavigationBar() {
        title = person.fullName
    }
    
    private func createLabel(title: String) -> UILabel {
        let label = UILabel()
        label.text = title
        label.font = .systemFont(ofSize: 20)
        
        return label
    }
}

// MARK: - Constraints
private extension ContactDetailsViewController {
    func setConstraints() {
        NSLayoutConstraint.activate(
            [
                contactDetailStackView.topAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 69
                ),
                contactDetailStackView.leadingAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                    constant: 16
                ),
                contactDetailStackView.trailingAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                    constant: -16
                )
            ]
        )
    }
}

