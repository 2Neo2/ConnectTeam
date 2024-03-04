//
//  GameConfigurator.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 19.01.2024.
//

import UIKit

protocol GameListConfiguratorProtocol {
    static func configure() -> UIViewController
}

final class GameListConfigurator: GameListConfiguratorProtocol {
    static func configure() -> UIViewController {
        let view = GameListViewController()
        
        return view
    }
}
