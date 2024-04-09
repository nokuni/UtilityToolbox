//
//  Optional.swift
//  
//
//  Created by Yann Christophe Maertens on 09/04/2024.
//

import Foundation

extension Optional where Wrapped == String {
    var isNil: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Int {
    var isNil: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Double {
    var isNil: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Date {
    var isNil: Bool {
        return self == nil
    }
}

extension Optional where Wrapped: Collection {
    var isNil: Bool {
        return self == nil
    }
}
