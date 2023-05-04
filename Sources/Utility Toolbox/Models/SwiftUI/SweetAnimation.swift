//
//  SweetAnimation.swift
//  
//
//  Created by Maertens Yann-Christophe on 29/04/23.
//

import SwiftUI

public class SweetAction {
    
    init(frames: [String],
         timePerFrame: TimeInterval,
         isRepeatingForever: Bool = false) {
        self.frames = frames
        self.timePerFrame = timePerFrame
        self.isRepeatingForever = isRepeatingForever
    }
    
    var frames: [String]
    var timePerFrame: TimeInterval
    var isRepeatingForever: Bool
    
    var timer: Timer?
    var currentIndex: Int = 0
    
    func play() {
        timer = Timer.scheduledTimer(withTimeInterval: timePerFrame, repeats: true, block: { _ in
            self.animate()
        })
    }
    
    func animate() {
        if let nextFrame = frames.nextFrom(index: currentIndex) {
            frames[currentIndex] = nextFrame
            currentIndex += 1
        } else {
            if isRepeatingForever { currentIndex = 0 }
        }
    }
}
