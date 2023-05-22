//
//  LosslessStringConvertible.swift
//  
//
//  Created by Maertens Yann-Christophe on 26/02/23.
//

import Foundation

public extension LosslessStringConvertible {
    /// String access through Int.
    var string: String { .init(self) }
}
