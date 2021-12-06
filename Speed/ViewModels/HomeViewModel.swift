//
//  HomeViewModel.swift
//  Speed
//
//  Created by Adriel Freire on 22/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import Foundation
final class HomeViewModel {
    var name: String {
        if User.shared.isLogged {
            return "Olá \(User.shared.name)"
        } else {
            return ""
        }
    }
}
