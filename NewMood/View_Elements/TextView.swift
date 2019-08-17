//
//  TextView.swift
//  NewMood
//
//  Created by Ben Whitley on 8/17/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit

class TextView: UITextView {

    override func awakeFromNib() {
        super.awakeFromNib()
        textColor = .white
    }

    override var backgroundColor: UIColor? {
        get { return .clear }
        set { }
    }
}
