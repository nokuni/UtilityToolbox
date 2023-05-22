//
//  File.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/03/23.
//

import Foundation

/// Repeat an action following a condtion. The amount of repeated actions is limited to 10000 by default.
public func repeatWhile(limit: Int, repeatedCompletion: (() -> Void)? = nil, endCompletion: (() -> Void)? = nil) {
    var currentLimit = limit
    repeat {
        currentLimit -= 1
        repeatedCompletion?()
        if currentLimit <= 0 { endCompletion?() }
    } while currentLimit > 0
}

public func encode<T>(_ value: T) throws -> [String: Any] where T : Encodable {
    let encoder = JSONEncoder()
    let data = try encoder.encode(value)
    return try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
}

public func inData<M: Codable>(value: M) throws -> Data? {
    let object = try encode(value)
    let data = try? JSONSerialization.data(withJSONObject: object)
    return data
}
