//
//  StringProtocol.swift
//  
//
//  Created by Maertens Yann-Christophe on 26/02/23.
//

import Foundation

public extension StringProtocol  {
    /// The digits from a String value.
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}
