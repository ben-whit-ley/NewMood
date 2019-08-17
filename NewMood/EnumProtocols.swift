//
//  EnumProtocols.swift
//  FeelGood
//
//  Created by Ben Whitley on 1/7/19.
//  Copyright © 2019 Ben Whitley. All rights reserved.
//

import Foundation

// MARK: - RawRepresentableString

protocol RawRepresentableString {
    var raw: String { get }
}

extension RawRepresentableString
    where Self: RawRepresentable,
          Self.RawValue == String {

    var raw: String { return rawValue }
}

// MARK: - ShorthandHashable

protocol ShorthandHashable {
    var hash: Int { get }
}

extension ShorthandHashable
    where Self: Hashable {
    var hash: Int { return hashValue }
}
