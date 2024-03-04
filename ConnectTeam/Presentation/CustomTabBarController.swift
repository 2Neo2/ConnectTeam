//
//  CustomTabBarController.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 19.01.2024.
//

import UIKit
import Foundation

class CustomTabBarController : UITabBarController {
    private lazy var  buttonMiddle : UIButton = {
       let button = GradientButton()
        button.frame = CGRect(x: Int(self.tabBar.bounds.width)/2 - 30, y: -40, width: 60, height: 60)
        button.setImage(Constants.Images.circleTabBar, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.layer.cornerRadius = 30
        button.tintColor = .white
        button.addTarget(self, action: #selector(buttonMiddleTapped), for: .touchUpInside)
        return button
    }()
    
    @objc private func buttonMiddleTapped() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSomeTabItems()
    }
    
    override func loadView() {
        super.loadView()
        
        setupCustomTabBar()
    }
    
    func setupCustomTabBar() {
        let path : UIBezierPath = getPathForTabBar()
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.lineWidth = 1
        shape.strokeColor = UIColor.white.cgColor
        shape.fillColor = Constants.Colors.backgroundColor?.cgColor
        self.tabBar.layer.insertSublayer(shape, at: 0)
        self.tabBar.itemWidth = 40
        self.tabBar.itemPositioning = .centered
        self.tabBar.itemSpacing = 220
        self.tabBar.tintColor = .white
    }
    
    func addSomeTabItems() {
        let gameVC = configureTabBarItems(for:  GameListConfigurator.configure(), with: UIImage(systemName: "gamecontroller") ?? UIImage(), UIImage(systemName: "gamecontroller.fill") ?? UIImage())
        let profileVC = configureTabBarItems(for: ProfileConfigurator.configure(), with: UIImage(systemName: "person.crop.circle") ?? UIImage(), UIImage(systemName: "person.crop.circle.fill") ?? UIImage())
        viewControllers = [gameVC, profileVC]
    }
    
    private func configureTabBarItems(for controller: UIViewController, with image: UIImage, _ selected: UIImage) -> UIViewController {
        image.withTintColor(.white)
        selected.withTintColor(.white)
        controller.tabBarItem.image = selected
        controller.tabBarItem.selectedImage = selected
        return controller
    }
    
    func getPathForTabBar() -> UIBezierPath {
        let frameWidth = self.tabBar.bounds.width
        let frameHeight = self.tabBar.bounds.height + 20
        let holeWidth = 150
        let holeHeight = 50
        let leftXUntilHole = Int(frameWidth/2) - Int(holeWidth/2)
        
        let path : UIBezierPath = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: leftXUntilHole , y: 0)) // 1.Line
        path.addCurve(to: CGPoint(x: leftXUntilHole + (holeWidth/3), y: holeHeight/2), controlPoint1: CGPoint(x: leftXUntilHole + ((holeWidth/3)/8)*6,y: 0), controlPoint2: CGPoint(x: leftXUntilHole + ((holeWidth/3)/8)*8, y: holeHeight/2)) // part I
        
        path.addCurve(to: CGPoint(x: leftXUntilHole + (2*holeWidth)/3, y: holeHeight/2), controlPoint1: CGPoint(x: leftXUntilHole + (holeWidth/3) + (holeWidth/3)/3*2/5, y: (holeHeight/2)*6/4), controlPoint2: CGPoint(x: leftXUntilHole + (holeWidth/3) + (holeWidth/3)/3*2 + (holeWidth/3)/3*3/5, y: (holeHeight/2)*6/4)) // part II
        
        path.addCurve(to: CGPoint(x: leftXUntilHole + holeWidth, y: 0), controlPoint1: CGPoint(x: leftXUntilHole + (2*holeWidth)/3,y: holeHeight/2), controlPoint2: CGPoint(x: leftXUntilHole + (2*holeWidth)/3 + (holeWidth/3)*2/8, y: 0)) // part III
        path.addLine(to: CGPoint(x: frameWidth, y: 0)) // 2. Line
        path.addLine(to: CGPoint(x: frameWidth, y: frameHeight)) // 3. Line
        path.addLine(to: CGPoint(x: 0, y: frameHeight)) // 4. Line
        path.addLine(to: CGPoint(x: 0, y: 0)) // 5. Line
        path.close()
        return path
    }
}
