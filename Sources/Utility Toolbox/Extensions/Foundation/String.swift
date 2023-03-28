//
//  String.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation

// MARK: - Core

public extension String {
    
    private var expression: NSExpression {
        return NSExpression(format: self)
    }
    
    /// Returns the numbers in the string.
    var extractedNumber: Int? {
        Int(components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
    }
    
    /// Used to convert strings of hex code. ex: "0x00FF00" into 0x00FF00
    var uInt: UInt {
        return UInt(self.dropFirst(2), radix: 16) ?? 0
    }

    /// Returns an UInt32 from the string.
    func intoUInt32(from dictionary: [Int: UInt32]) -> UInt32? {
        let number = expression.expressionValue(with: dictionary, context: nil) as? UInt32
        return number
    }
}

// MARK: - LocalizedError

extension String: LocalizedError {
    public var errorDescription: String? { return self }
}
