//
//  File.swift
//  
//
//  Created by Maertens Yann-Christophe on 15/03/23.
//

import Foundation

public final class TimerManager: ObservableObject {
    
    init() { }
    
    private var timer: Timer?
    public var configuration = TimerConfiguration()
    
    public struct TimerConfiguration {
        public init(duration: TimeInterval? = nil,
                    startAction: (() -> Void)? = nil,
                    whileAction: (() -> Void)? = nil,
                    endAction: (() -> Void)? = nil) {
            self.duration = duration
            self.startAction = startAction
            self.whileAction = whileAction
            self.endAction = endAction
        }
        
        public var duration: TimeInterval?
        public var startAction: (() -> Void)?
        public var whileAction: (() -> Void)?
        public var endAction: (() -> Void)?
    }
    
    public func configure(_ configuration: TimerConfiguration = TimerConfiguration(),
                          timeInterval: TimeInterval = 1) {
        self.configuration = configuration
        self.configuration.startAction?()
        timer = Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true) { timer in
            self.update(timer: timer, timeInterval: timeInterval)
        }
    }
    public func cancel() { timer?.invalidate() }
    public func start() { timer?.fire() }
    
    private func update(timer: Timer, timeInterval: TimeInterval = 1) {
        if let duration = configuration.duration {
            if duration > 0 {
                configuration.whileAction?()
                configuration.duration! -= timeInterval
            } else {
                timer.invalidate()
                configuration.endAction?()
            }
        }
    }
}
