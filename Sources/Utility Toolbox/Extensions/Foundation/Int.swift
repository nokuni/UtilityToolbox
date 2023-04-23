//
//  Int.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation

public extension Int {
    
    /// Returns a string with an amount of leading zeros (number included).
    func leadingZeros(amount: Int) -> String {
        let result = String(format: "%0\(amount)d", self)
        return result
    }
    
    /// Returns true if this value is even and false otherwise.
    var isEven: Bool {
        isMultiple(of: 2)
    }
    
    /// Returns true if this value is odd and false otherwise.
    var isOdd: Bool {
        !isMultiple(of: 2)
    }
    
    func percentageValue(percentage: Int) -> Int {
        return (percentage * self) / 100
    }
}
