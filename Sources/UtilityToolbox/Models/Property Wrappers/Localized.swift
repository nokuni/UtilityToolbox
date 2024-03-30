//
//  Localized.swift
//  
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import Foundation

/// Localize string automatically
@propertyWrapper 
public struct Localized {
    public var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.localized() }
    }

    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.localized()
    }
}
