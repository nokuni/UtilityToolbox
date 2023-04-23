//
//  Double.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/04/23.
//

import Foundation

extension Double {
    func percentageValue(percentage: Double) -> Double {
        return (percentage * self) / 100
    }
}
