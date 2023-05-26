//
//  UIAnimation.swift
//  
//
//  Created by Maertens Yann-Christophe on 14/05/23.
//

import Foundation

final public class UIAnimation {
    
    private var timer: Timer?
    private var duration: Int = 0
    
    private var frames: [String] = []
    public var startAction: (() -> Void)?
    public var whileAction: (() -> Void)?
    public var endAction: (() -> Void)?
    
    public func cancelTimer() { timer?.invalidate() }
    
    public var isRunning: Bool { ((timer?.isValid) != nil) }
    
    public func animate(frames: [String],
                        startAction: (() -> Void)? = nil,
                        whileAction: (() -> Void)? = nil,
                        endAction: (() -> Void)? = nil,
                        isRepeatingForever: Bool = false,
                        timeInterval: TimeInterval = 1) {
        
        self.frames = frames
        self.duration = frames.count
        self.startAction = startAction
        self.whileAction = whileAction
        self.endAction = endAction
        
        self.startAction?()
        
        timer = Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true) { timer in
            self.animationBlock(timer: timer, isRepeatingForever: isRepeatingForever)
        }
    }
    
    private func animationBlock(timer: Timer,
                                isRepeatingForever: Bool) {
        switch true {
        case duration > 0:
            whileAction?()
            duration -= 1
        case isRepeatingForever:
            duration = frames.count
        default:
            timer.invalidate()
            endAction?()
        }
    }
}
