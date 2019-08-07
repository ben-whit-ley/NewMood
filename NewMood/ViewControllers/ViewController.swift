//
//  ViewController.swift
//  NewMood
//
//  Created by Ben Whitley on 8/6/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var appDelegate: AppDelegate? {
        return UIApplication.shared.delegate as? AppDelegate
    }

    var managedContext: NSManagedObjectContext? {
        return appDelegate?.persistentContainer.viewContext
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.primaryBlue
    }
}
