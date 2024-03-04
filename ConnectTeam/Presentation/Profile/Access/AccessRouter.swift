//
//  AccessRouter.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 19.01.2024.
//

import Foundation

protocol AccessRouterProtocol {
    func hideView()
}

final class AccessRouter: AccessRouterProtocol {
    weak var view: AccessViewController?
    
    func hideView() {
        guard let view = view else { return }
        view.dismiss(animated: true)
    }
}
