//
//  Capitalized.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import Foundation

/// Capitalized string automatically
@propertyWrapper struct Capitalized {
    var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.capitalized }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}
