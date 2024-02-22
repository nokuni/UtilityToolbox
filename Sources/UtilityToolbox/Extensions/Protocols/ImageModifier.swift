//
//  ImageModifier.swift
//
//
//  Created by Yann Christophe Maertens on 22/02/2024.
//

import SwiftUI

public protocol ImageModifier {
    /// `Body` is derived from `View`
    associatedtype Body : View

    /// Modify an image by applying any modifications into `some View`
    func body(image: Image) -> Self.Body
}
