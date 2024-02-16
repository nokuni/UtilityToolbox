//
//  ChronoManager.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import SwiftUI

public class ChronoManager: ObservableObject {
    @Published var chrono = Chrono()
    
    public init() { }
    
    struct Chrono {
        var minute = TimeElement(type: .minute)
        var second = TimeElement(type: .second)
        var millisecond = TimeElement(type: .millisecond)
    }
    
    struct TimeElement {
        var value: TimeInterval = 0
        var type: Category
        var timer: Timer?
        
        mutating func advance() { value += 1 }
        
        mutating func reset() { value = 0 }
        
        func isAdvancing() -> Bool {
            Int(value) >= Int(type.rawValue)
        }
        
        enum Category: TimeInterval {
            case minute = 1
            case second = 60
            case millisecond = 1000
            
            var interval: TimeInterval {
                return 1 / self.rawValue
            }
        }
    }
    
    private func chronoTimer(category: TimeElement.Category,
                             completion: @escaping (Timer) -> Void) -> Timer {
        let timer = Timer.scheduledTimer(withTimeInterval: category.interval,
                                         repeats: true,
                                         block: completion)
        return timer
    }
    
    public func startTimer() {
        chrono.minute.timer = chronoTimer(category: .minute) { _ in
            if self.chrono.second.isAdvancing() {
                self.chrono.minute.advance()
                self.chrono.second.reset()
            }
        }
        chrono.second.timer = chronoTimer(category: .second)  { _ in
            if self.chrono.millisecond.isAdvancing() {
                self.chrono.second.advance()
                self.chrono.millisecond.reset()
            }
        }
        chrono.millisecond.timer = chronoTimer(category: .millisecond)  { _ in
            self.chrono.millisecond.advance()
        }
    }
    
    public var label: String {
        let minuteValue = Int(chrono.minute.value).leadingZeros(amount: 2)
        let secondValue = Int(chrono.second.value).leadingZeros(amount: 2)
        let millisecondValue = Int(chrono.millisecond.value).leadingZeros(amount: 4)
        return "\(minuteValue):\(secondValue):\(millisecondValue)"
    }
}
