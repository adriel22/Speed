//
//  Coordinator.swift
//  Speed
//
//  Created by Adriel Freire on 21/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import UIKit
protocol Coordinator {
    var navigationViewController: UINavigationController {get set}
    var childCoordinators: [Coordinator] {get set}
    
    func start()
}
