//
//  GameViewController.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 19.01.2024.
//

import UIKit

final class GameListViewController: UIViewController {
    private lazy var customFilterView: CustomFilterView = {
        let view = CustomFilterView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var presenter: GameListPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Constants.Colors.backgroundColor
        setupViews()
        addSubviews()
        layoutViews()
    }
}

extension GameListViewController {
    private func setupViews() {
        view.backgroundColor = Constants.Colors.backgroundColor
    }
    
    private func layoutViews() {
        NSLayoutConstraint.activate([
            customFilterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            customFilterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            customFilterView.topAnchor.constraint(equalTo: view.topAnchor, constant: 68)
        ])
    }
    
    private func addSubviews() {
        view.addSubview(customFilterView)
    }
}
