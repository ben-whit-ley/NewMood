//
//  UIColor.Ext.swift
//  NewMood
//
//  Created by Ben Whitley on 8/6/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import UIKit

typealias Theme = UIColor.Theme

extension UIColor {
    convenience init(
        r: CGFloat,
        g: CGFloat,
        b: CGFloat,
        a: CGFloat = 1.0) {

        self.init(
            red: r/255.0,
            green: g/255.0,
            blue: b/255.0,
            alpha: a
        )
    }

    struct Theme {
        static var primaryBlue: UIColor  {
            return UIColor(
                r: 87.0,
                g: 158.0,
                b: 250.0
            )
        }
    }
}
