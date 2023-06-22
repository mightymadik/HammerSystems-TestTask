//
//  TabBarController.swift
//  Hammers
//
//  Created by MacBook on 22.06.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = .init(gray: 0.5, alpha: 0.5)
    }
    
}
