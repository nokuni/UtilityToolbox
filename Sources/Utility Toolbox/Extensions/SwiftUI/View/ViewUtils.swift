//
//  ViewUtils.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/05/23.
//

import SwiftUI

// MARK: - Utils

extension View {
    /// Returns a snapshot of a view as an image.
    @MainActor public func image(isOpaque: Bool = false) -> UIImage? {
        if #available(iOS 16, *) {
            let renderer = ImageRenderer(content: self)
            renderer.scale = UIScreen.main.scale
            renderer.isOpaque = isOpaque
            let renderedImage = renderer.uiImage
            return renderedImage
        }
        return nil
    }
    
    /// Calls the completion handler whenever an animation on the given value completes.
    /// - Parameters:
    ///   - value: The value to observe for animations.
    ///   - completion: The completion callback to call once the animation completes.
    /// - Returns: A modified `View` instance with the observer attached.
    public typealias AnimationCompletion<Value: VectorArithmetic> = ModifiedContent<Self, AnimationCompletionObserverModifier<Value>>
    public func onAnimationCompleted<Value: VectorArithmetic>(for value: Value,
                                                       completion: @escaping () -> Void) -> AnimationCompletion<Value> {
        modifier(AnimationCompletionObserverModifier(observedValue: value, completion: completion))
    }
}
