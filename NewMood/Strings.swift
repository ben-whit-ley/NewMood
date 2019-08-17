//
//  Strings.swift
//  NewMood
//
//  Created by Ben Whitley on 8/11/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import Foundation

typealias CellIds = Strings.Identifiers.Cells

enum Strings {
    enum Identifiers {
        enum Cells: String,
                    RawRepresentable,
                    RawRepresentableString {
            case ThoughtTableView = "THOUGHT_TABLEVIEW_CELL"
            case ResponseTableView = "RESPONSE_TABLEVIEW_CELL"
        }

//        enum Segues: String,
//                     RawRepresentable,
//                     RawRepresentableString {
//
//        }
    }
}
