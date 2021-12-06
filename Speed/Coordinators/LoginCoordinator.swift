//
//  LoginCoordinator.swift
//  Speed
//
//  Created by Adriel Freire on 22/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import UIKit
final class LoginCoordinator: Coordinator {
    var navigationViewController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    init(_ navigation: UINavigationController) {
        navigationViewController = navigation
    }
    
    func start() {
        let viewController = LoginViewController.init(nibName: nil, bundle: nil)
        viewController.modalPresentationStyle = .fullScreen
        navigationViewController.present(viewController, animated: false, completion: nil)
    }
    
    
}
