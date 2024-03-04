//
//  AccessPresenter.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 19.01.2024.
//

import Foundation

protocol AccessPresenterProtocol {
    func backButtonTapped()
}

final class AccessPresenter: AccessPresenterProtocol {
    var router: AccessRouter?
    
    func backButtonTapped() {
        router?.hideView()
    }
}
