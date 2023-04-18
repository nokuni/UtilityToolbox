//
//  File.swift
//  
//
//  Created by Maertens Yann-Christophe on 15/03/23.
//

import Foundation

public final class TimerManager: ObservableObject {
    
    public init() { }
    
    private var timer: Timer?
    public var configuration = TimerConfiguration()
    
    public struct TimerConfiguration {
        public init(duration: TimeInterval? = nil,
                    startCompletion: (() -> Void)? = nil,
                    whileCompletion: (() -> Void)? = nil,
                    endCompletion: (() -> Void)? = nil) {
            self.duration = duration
            self.startCompletion = startCompletion
            self.whileCompletion = whileCompletion
            self.endCompletion = endCompletion
        }
        
        public var duration: TimeInterval?
        public var startCompletion: (() -> Void)?
        public var whileCompletion: (() -> Void)?
        public var endCompletion: (() -> Void)?
    }
    
    public func configure(_ configuration: TimerConfiguration = TimerConfiguration(),
                          timeInterval: TimeInterval = 1) {
        self.configuration = configuration
        self.configuration.startCompletion?()
        timer = Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true) { timer in
            self.update(timer: timer, timeInterval: timeInterval)
        }
    }
    public func cancel() { timer?.invalidate() }
    public func start() { timer?.fire() }
    
    private func update(timer: Timer, timeInterval: TimeInterval = 1) {
        if let duration = configuration.duration {
            if duration > 0 {
                configuration.whileCompletion?()
                configuration.duration! -= timeInterval
            } else {
                timer.invalidate()
                configuration.endCompletion?()
            }
        }
    }
}
