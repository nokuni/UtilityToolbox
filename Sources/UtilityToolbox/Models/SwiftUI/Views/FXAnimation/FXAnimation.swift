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
    public var hasFrameTransition: Bool
    public var timeInterval: TimeInterval
    public var isRepeatingForever: Bool
    public var completion: (() -> Void)?
    
    public init(frames: [String],
                hasFrameTransition: Bool = false,
                timeInterval: TimeInterval = 0.1,
                isRepeatingForever: Bool = false,
                completion: (() -> Void)? = nil) {
        self.frames = frames
        self.hasFrameTransition = hasFrameTransition
        self.timeInterval = timeInterval
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
                                      timeInterval: timeInterval)
                }
        }
    }
    
    @ViewBuilder
    private func animatedImageView() -> some View {
        Image(frames[index])
            .resizable()
            .opacity(isAnimationCompleted ? 0 : 1)
    }
    
    func incrementIndex() {
        if hasFrameTransition {
            withAnimation {
                switch true {
                case index < frames.count - 1:
                    index += 1
                case isRepeatingForever:
                    index = 0
                default:
                    isAnimationCompleted = true
                }
            }
        } else {
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
}
