//
//  ViewController.swift
//  NewMood
//
//  Created by Ben Whitley on 8/6/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit

class ThoughtInputViewController: ViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var nextButton: UIBarButtonItem!

    var textIsValid: Bool {
        return textView.text != ""
    }

    var thought = Thought()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.becomeFirstResponder()
    }
    
    @IBAction func goToResponses(_ sender: Any) {
        if textIsValid {
            save(thought: textView.text)
        }
    }
}
