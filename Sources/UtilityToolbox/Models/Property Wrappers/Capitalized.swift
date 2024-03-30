//
//  Capitalized.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import Foundation

/// Capitalized string automatically
@propertyWrapper 
public struct Capitalized {
    public var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.capitalized }
    }

    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}
