//
//  Numeric.swift
//  
//
//  Created by Maertens Yann-Christophe on 26/02/23.
//

import Foundation

public extension Numeric where Self: LosslessStringConvertible {
    /// The digits from an Int value.
    var digits: [Int] { string.digits }
}
