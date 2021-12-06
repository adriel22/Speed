//
//  User.swift
//  Speed
//
//  Created by Adriel Freire on 22/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import Foundation
class User {
    static let shared = User()
    var isLogged = false
    var name = ""
    var email = ""
    var id = ""

}
