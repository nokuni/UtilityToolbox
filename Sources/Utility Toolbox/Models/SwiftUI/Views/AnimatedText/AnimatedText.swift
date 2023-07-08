//
//  AnimatedText.swift
//  
//
//  Created by Yann Christophe Maertens on 24/06/2023.
//

import SwiftUI

public struct AnimatedText: View {
    @ObservedObject public var manager: UITextManager
    var text: String
    var speed: UITextManager.TextSpeed
    var completion: (() -> Void)?
    
    public init(manager: UITextManager,
                text: String,
                speed: UITextManager.TextSpeed,
                completion: (() -> Void)?) {
        self.manager = manager
        self.text = text
        self.speed = speed
        self.completion = completion
    }
    
    public var body: some View {
        Text(manager.prompt)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .topLeading)
            .onAppear {
                manager.text = text
                manager.speed = speed
                manager.completion = completion
            }
            .accessibilityLabel(text)
    }
}
