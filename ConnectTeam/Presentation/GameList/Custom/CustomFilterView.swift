//
//  CustomFilterView.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 04.03.2024.
//

import UIKit

final class CustomFilterView: UIView {
    private lazy var personalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Мои", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 17)
        return button
    }()
    
    private lazy var joinedButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Учавствую", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 17)
        return button
    }()
    
    private lazy var filterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "filter"), for: .normal)
        button.imageView?.tintColor = .white
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        insertViews()
        layoutView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomFilterView {
    private func setupView() {
        backgroundColor = Constants.Colors.backgroundColor
    }
    
    private func layoutView() {
        NSLayoutConstraint.activate([
            personalButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            personalButton.topAnchor.constraint(equalTo: topAnchor, constant: 11),
            
            joinedButton.leadingAnchor.constraint(equalTo: personalButton.trailingAnchor, constant: 33),
            joinedButton.topAnchor.constraint(equalTo: topAnchor, constant: 11),
            
            filterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            filterButton.topAnchor.constraint(equalTo: topAnchor, constant: 15)
        ])
    }
    
    private func insertViews() {
        addSubview(personalButton)
        addSubview(joinedButton)
        addSubview(filterButton)
    }
}
