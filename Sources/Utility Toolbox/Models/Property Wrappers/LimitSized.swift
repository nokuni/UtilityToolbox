//
//  LimitSized.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import Foundation

/// Limit the number of elements an array can have
@propertyWrapper
public struct LimitSized<Element> {
    public var limit: Int
    public init(_ limit: Int) {
        self.limit = limit
    }
    private var elements = [Element]()
    public var wrappedValue: [Element] {
        get {
            return elements
        }
        set {
            elements = newValue
            if elements.count > limit { elements.removeLast(elements.count - limit) }
        }
    }
}
