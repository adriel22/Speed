//
//  HomeViewController.swift
//  Speed
//
//  Created by Adriel Freire on 22/11/21.
//  Copyright © 2021 Adriel Freire. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    let viewMode = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nameLabel.text = viewMode.name
        
    }

}
