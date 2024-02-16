//
//  Localized.swift
//  
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import Foundation

/// Localize string automatically
@propertyWrapper struct Localized {
    var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.localized() }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.localized()
    }
}
