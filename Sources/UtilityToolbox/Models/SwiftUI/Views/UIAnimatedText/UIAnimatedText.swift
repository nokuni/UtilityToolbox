//
//  UIAnimatedText.swift
//  
//
//  Created by Yann Christophe Maertens on 24/06/2023.
//

import Foundation

public class UIAnimatedText: ObservableObject {
    @Published public var prompt: String = ""
    @Published public var currentIndex = 0
    
    private var timer: Timer?
    
    public var text: String = ""
    public var speed: TextSpeed = .normal
    public var completion: (() -> Void)? = nil
    
    public enum TextSpeed: CGFloat {
        case verySlow = 0.2
        case slow = 0.1
        case normal = 0.05
        case fast = 0.025
        case veryFast = 0.01
    }
    
    public init() {
        self.startWriting()
    }
    
    private func startWriting() {
        timer = Timer.scheduledTimer(withTimeInterval: speed.rawValue, repeats: true, block: write)
    }
    
    private func write(timer: Timer) {
        let isWriting = currentIndex < (text.count - 1)
        guard isWriting else {
            completion?()
            timer.invalidate()
            return
        }
        prompt.append(text[currentIndex])
        currentIndex += 1
    }
    
    public func completeWriting(text: String) {
        timer?.invalidate()
        prompt = text
    }
}
