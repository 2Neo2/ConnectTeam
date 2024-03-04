//
//  AccessConfigurator.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 19.01.2024.
//

import UIKit

protocol AccessConfiguratorProtocol {
    static func configure(with data: UserModel) -> UIViewController
}

final class AccessConfigurator: AccessConfiguratorProtocol {
    static func configure(with data: UserModel) -> UIViewController {
        let view = AccessViewController()
        let router = AccessRouter()
        let presenter = AccessPresenter()
        
        router.view = view
        presenter.router = router
        view.presenter = presenter
        return view
    }
}
