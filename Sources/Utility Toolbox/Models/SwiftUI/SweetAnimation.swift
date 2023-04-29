//
//  SweetAnimation.swift
//  
//
//  Created by Maertens Yann-Christophe on 29/04/23.
//

import SwiftUI

class SweetAnimation {
    
    init(frames: [String], isRepeatingForever: Bool = false) {
        self.frames = frames
        self.isRepeatingForever = isRepeatingForever
    }
    
    var frames: [String]
    var isRepeatingForever: Bool
    
    var timer: Timer?
    var currentIndex: Int = 0
    
    func play() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
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
