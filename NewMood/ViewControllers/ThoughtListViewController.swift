//
//  ThoughtListViewController.swift
//  NewMood
//
//  Created by Ben Whitley on 8/11/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit

class ThoughtListViewController: ViewController {
    internal var thoughts = [Thought]()
    internal let ThoughtCellId = CellIds.ThoughtTableView.raw

    @IBOutlet weak var tableView: TableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let storedThoughts = fetchThoughts() {
            thoughts = storedThoughts
            tableView.reloadData()
        }
    }

    @IBAction func addThought(_ sender: Any) {

    }
}
