//
//  ThoughtTableViewCell.swift
//  NewMood
//
//  Created by Ben Whitley on 8/11/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit

class ThoughtTableViewCell: TableViewCell {
    @IBOutlet weak var textView: TextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = .clear
    }
}
