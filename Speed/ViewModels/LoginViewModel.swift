//
//  LoginViewModel.swift
//  Speed
//
//  Created by Adriel Freire on 22/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import Foundation
final class LoginViewModel {
    func configureUser(name: String, id: String, email: String) {
        User.shared.email = email
        User.shared.name = name
        User.shared.id = id
        User.shared.isLogged = true
    }
    
    func resetUser() {
        User.shared.email = ""
        User.shared.name = ""
        User.shared.id = ""
        User.shared.isLogged = false
    }
}
