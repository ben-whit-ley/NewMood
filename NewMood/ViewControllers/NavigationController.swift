//
//  NavigationController.swift
//  NewMood
//
//  Created by Ben Whitley on 8/6/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.barTintColor = Theme.primaryBlue
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
    }
}
