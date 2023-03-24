//
//  File.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/03/23.
//

import Foundation

/// Repeat an action following a condtion. The amount of repeated actions is limited to 10000 by default.
public func repeatWhile(limit: Int = 10000, condition: Bool, repeatedCompletion: (() -> Void)?) {
    repeat {
        repeatedCompletion?()
    } while condition
}
