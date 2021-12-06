//
//  LoginViewController.swift
//  Speed
//
//  Created by Adriel Freire on 21/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import GoogleSignIn

class LoginViewController: UIViewController {
    
    @IBOutlet weak var googleLogin: GIDSignInButton!
    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        googleLogin.addTarget(self, action: #selector(loginWithGoogle(_:)), for: .touchUpInside)
    }
    
    @objc func loginWithGoogle(_ sender: Any) {
        let configuration = GIDConfiguration(clientID: "501883192725-obl337hm6knas9cd7jci1h5ep9hefnvc.apps.googleusercontent.com")
        GIDSignIn.sharedInstance.signIn(with: configuration, presenting: self) { user, error in
            
            guard error == nil,
            let user = user,
            let profile = user.profile,
            let id = user.userID else {
                self.viewModel.resetUser()
                return
            }
            self.viewModel.configureUser(name: profile.name, id: id, email: profile.email)
            self.dismiss(animated: true, completion: nil)
        }
    }
}

