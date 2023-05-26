//
//  FXAnimation.swift
//  
//
//  Created by Maertens Yann-Christophe on 14/05/23.
//

import SwiftUI

public struct FXAnimation: View {
    @State private var index = 0
    @State private var isAnimationCompleted = false
    private let animation = UIAnimation()
    public var frames: [String]
    public var isRepeatingForever: Bool
    public var completion: (() -> Void)?
    
    public init(frames: [String],
                isRepeatingForever: Bool = false,
                completion: (() -> Void)? = nil) {
        self.frames = frames
        self.isRepeatingForever = isRepeatingForever
        self.completion = completion
    }
    public var body: some View {
        switch true {
        case frames.isEmpty:
            Text("")
        default:
            animatedImageView()
                .onAppear {
                    animation.animate(frames: frames,
                                      whileAction: incrementIndex,
                                      endAction: completion,
                                      isRepeatingForever: isRepeatingForever,
                                      timeInterval: 0.1)
                }
            
        }
    }
    
    @ViewBuilder
    private func animatedImageView() -> some View {
        if !isAnimationCompleted {
            Image(frames[index])
                .resizable()
        } else {
            EmptyView()
        }
    }
    
    func incrementIndex() {
        switch true {
        case index < frames.count - 1:
            index += 1
        case isRepeatingForever:
            index = 0
        default:
            isAnimationCompleted = true
        }
    }
}
