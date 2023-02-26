//
//  Numeric.swift
//  
//
//  Created by Maertens Yann-Christophe on 26/02/23.
//

import Foundation

public extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}
