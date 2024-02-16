//
//  ZeroOrGreaterInteger.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import Foundation

@propertyWrapper struct ZeroOrGreaterInteger {
    var wrappedValue: Int {
        didSet {
            wrappedValue = max(wrappedValue, 0)
        }
    }
    
    init(wrappedValue: Int) {
        self.wrappedValue = max(wrappedValue, 0)
    }
}
