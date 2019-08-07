//
//  ViewController.swift
//  NewMood
//
//  Created by Ben Whitley on 8/6/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit
import CoreData

class ThoughtInputViewController: ViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var nextButton: UIBarButtonItem!

    var textIsValid: Bool {
        return textView.text != ""
    }

    var thought = Thought()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Theme.primaryBlue
        textView.becomeFirstResponder()

        fetch()
    }

    func save() {
        guard
            textIsValid,
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
            textView.text,
            forKey: "text"
        )

        do {
            try managedContext?.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }

    func fetch() {
        let fetchRequest = NSFetchRequest<NSManagedObject>(
            entityName: "Thought"
        )

        do {
            let result = try managedContext?.fetch(fetchRequest)
            if let storedThought = result?.first as? Thought {
                print("fetched stored thought: \(storedThought.text)")
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

    @IBAction func goToResponses(_ sender: Any) {
        save()
    }
}
