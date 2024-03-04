//
//  Constants.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 10.01.2024.
//

import UIKit


struct Constants {
    struct Images {
        static let rightArrow = UIImage(named: "rightButtonArrow")
        static let logo = UIImage(named: "logo")
        static let logoutImage = UIImage(systemName: "rectangle.portrait.and.arrow.right")
        static let blurLogo = UIImage(named: "blur_logo")
        static let resizeViewButton = UIImage(named: "tariffButton")
        static let circleTabBar = UIImage(systemName: "plus.circle.fill")
    }
    
    struct Colors {
        static let backgroundColor = UIColor(named: "background")
        static let textColor: UIColor = .white
    }
    
    struct API {
        static let defaultBaseURL: String = "http://localhost:5432"
    }
    
}
