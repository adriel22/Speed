//
//  HomeCoordinator.swift
//  Speed
//
//  Created by Adriel Freire on 22/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import UIKit
final class HomeCoordinator: Coordinator {
    var navigationViewController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    init(_ navigation: UINavigationController) {
        navigationViewController = navigation
        childCoordinators.append(LoginCoordinator(navigation))
    }
    
    func start() {
        let viewController = HomeViewController(nibName: nil, bundle: nil)
        navigationViewController.pushViewController(viewController, animated: false)

        if !User.shared.isLogged {
           childCoordinators.first?.start()
        }
    }
    
    
}
