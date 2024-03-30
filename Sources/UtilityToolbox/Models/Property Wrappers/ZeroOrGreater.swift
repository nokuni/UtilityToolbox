//
//  ZeroOrGreater.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import Foundation

@propertyWrapper 
public struct ZeroOrGreaterInteger {
    public var wrappedValue: Int {
        didSet {
            wrappedValue = max(wrappedValue, 0)
        }
    }
    
    public init(wrappedValue: Int) {
        self.wrappedValue = max(wrappedValue, 0)
    }
}

@propertyWrapper 
public struct ZeroOrGreaterDouble {
    public var wrappedValue: Double {
        didSet {
            wrappedValue = max(wrappedValue, 0.0)
        }
    }
    
    public init(wrappedValue: Double) {
        self.wrappedValue = max(wrappedValue, 0.0)
    }
}
