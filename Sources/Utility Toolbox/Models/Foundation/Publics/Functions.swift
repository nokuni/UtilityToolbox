//
//  Functions.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/03/23.
//

import SwiftUI

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

/// Returns a dictionary of arguments from constructs.
public func reflected<S>(value: S) -> [String: Any] {
    let mirror = Mirror(reflecting: value)
    let labels = mirror.children.compactMap { $0.label }
    let values = mirror.children.compactMap { $0.value }
    let result = Dictionary(uniqueKeysWithValues: zip(labels, values))
    return result
}

public func isImageInAssets(image: String) -> Bool {
    let uiImage = UIImage(named: image)
    return uiImage != nil
}

public func isImagesInAssets(images: [String]) -> Bool {
    let uiImages = images.compactMap { UIImage(named: $0) }
    return uiImages.count == images.count
}
