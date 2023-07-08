//
//  AccessibilityLabelQueue.swift
//  
//
//  Created by Yann Christophe Maertens on 08/07/2023.
//

import SwiftUI

public struct AccessibilityLabelQueue: ViewModifier {
    public var labels: [String]
    public func body(content: Content) -> some View {
        content
            .onAppear {
                accessibilityNotification(labels: labels)
            }
    }
    
    private func accessibilityNotification(labels: [String]) {
        guard UIAccessibility.isVoiceOverRunning else { return }
        for label in labels {
            let attributedString = NSAttributedString(string: label, attributes: [.accessibilitySpeechQueueAnnouncement: true])
            UIAccessibility.post(notification: .announcement, argument: attributedString)
        }
    }
}

/*
 if (UIAccessibility.isVoiceOverRunning) {
      let message: NSAttributedString = NSAttributedString(string: "C'est un coeur rouge", attributes: [.accessibilitySpeechQueueAnnouncement: true])
     let secondMessage: NSAttributedString = NSAttributedString(string: "Je n'ai rien à dire.", attributes: [.accessibilitySpeechQueueAnnouncement: true])
      UIAccessibility.post(notification: .announcement, argument: message)
     UIAccessibility.post(notification: .announcement, argument: secondMessage)
 }
 */
