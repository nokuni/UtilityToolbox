//
//  Int.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation

public extension Int {

    /// Convert and returns as a Double
    var double: Double { Double(self) }
    
    /// Returns a string with an amount of leading zeros (number included).
    func leadingZeros(amount: Int, isStatic: Bool = false) -> String {
        let number = isStatic ? digits.count + amount : amount
        let result = String(format: "%0\(number)d", self)
        return result
    }
    
    /// Returns true if this value is even and false otherwise.
    var isEven: Bool { isMultiple(of: 2) }
    
    /// Returns true if this value is odd and false otherwise.
    var isOdd: Bool { !isEven }
    
    func percentageValue(percentage: Int) -> Int {
        return (percentage * self) / 100
    }
}
