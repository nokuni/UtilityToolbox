//
//  Double.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/04/23.
//

import Foundation

public extension Double {
    func percentageValue(percentage: Double) -> Double {
        return (percentage * self) / 100
    }
    
    func withoutTrailingZeros() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        let number: NSNumber = NSNumber(floatLiteral: self)
        guard let result = formatter.string(from: number) else { return "" }
        return result
    }
}
