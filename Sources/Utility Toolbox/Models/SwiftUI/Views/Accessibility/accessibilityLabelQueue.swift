//
//  accessibilityLabelQueue.swift
//  
//
//  Created by Yann Christophe Maertens on 08/07/2023.
//

import SwiftUI

public extension View {
    /// If Voice Over is enabled, read the labels in order
    func accessibilityLabelQueue(labels: [String]) -> some View {
        modifier(AccessibilityLabelQueue(labels: labels))
    }
}
