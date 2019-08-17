//
//  ThoughtListVC.Exts.swift
//  NewMood
//
//  Created by Ben Whitley on 8/11/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit

extension ThoughtListViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int)
        -> Int {

            return thoughts.count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {

            guard
                let cell = tableView.dequeueReusableCell(
                    withIdentifier: ThoughtCellId,
                    for: indexPath) as? ThoughtTableViewCell
                else { return UITableViewCell() }

            let thought = thoughts[indexPath.row]
            cell.textView.text = thought.text
            return cell
    }
}

extension ThoughtListViewController: UITableViewDelegate { }

