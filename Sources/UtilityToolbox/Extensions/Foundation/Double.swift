//
//  Double.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/04/23.
//

import Foundation

public extension Double {

    /// Convert and returns as an Int
    var int: Int { Int(self) }
    
    func formattedCurrency() -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self))
    }

    func percentageValue(percentage: Double) -> Double {
        return (percentage * self) / 100
    }
    
    func withoutTrailingZeros() -> String? {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        let number: NSNumber = NSNumber(floatLiteral: self)
        let result = formatter.string(from: number)
        return result
    }
}
