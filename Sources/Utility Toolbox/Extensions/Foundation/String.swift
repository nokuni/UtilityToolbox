//
//  String.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation

public extension String {

    private var expression: NSExpression {
        return NSExpression(format: self)
    }

    /// Returns an UInt32 from the string.
    func intoUInt32(from dictionary: [Int: UInt32]) -> UInt32? {
        let number = self.expression.expressionValue(with: dictionary, context: nil) as? UInt32
        return number
    }
}
