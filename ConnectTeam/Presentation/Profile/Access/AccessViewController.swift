//
//  AccessViewController.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 19.01.2024.
//

import UIKit

final class AccessViewController: UIViewController {
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "leftButtonArrow"), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var generalLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 23)
        label.textColor = .white
        label.text = "Доступ"
        return label
    }()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.text = "Ваш тариф:"
        return label
    }()
    
    private lazy var dataLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var changeAccessButton: UIButton = {
        let button = GradientButton()
        button.setTitle("Сменить тариф", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var presenter: AccessPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        addSubviews()
        layoutViews()
    }
    
    @objc private func backButtonTapped() {
        presenter?.backButtonTapped()
    }
}

extension AccessViewController {
    private func setupViews() {
        view.backgroundColor = Constants.Colors.backgroundColor
    }
    
    private func layoutViews() {
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18.0),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 65.0),
            
            generalLabel.leadingAnchor.constraint(equalTo: backButton.trailingAnchor, constant: 11.0),
            generalLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 65.0),
            
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            infoLabel.topAnchor.constraint(equalTo: generalLabel.bottomAnchor, constant: 34),
            
            changeAccessButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58),
            changeAccessButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            changeAccessButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            changeAccessButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    private func addSubviews() {
        view.addSubview(backButton)
        view.addSubview(generalLabel)
        view.addSubview(infoLabel)
        view.addSubview(changeAccessButton)
    }
}
