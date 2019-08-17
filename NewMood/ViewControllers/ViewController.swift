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

    func save(thought text: String) {
        guard
            let context = managedContext,
            let entity = NSEntityDescription.entity(
                forEntityName: "Thought",
                in: context)
            else { return }

        let thought = NSManagedObject(
            entity: entity,
            insertInto: context
        )

        thought.setValue(
            text,
            forKey: "text"
        )

        do {
            try managedContext?.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }

    func fetchThoughts() -> [Thought]? {
        let fetchRequest = NSFetchRequest<NSManagedObject>(
            entityName: "Thought"
        )

        do {
            let result = try managedContext?.fetch(fetchRequest)
            if let thoughts = result as? [Thought] {
                return thoughts
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
            return nil
        }
        return nil
    }
}

