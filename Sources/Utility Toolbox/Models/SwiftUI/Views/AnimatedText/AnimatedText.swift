//
//  AnimatedText.swift
//  
//
//  Created by Yann Christophe Maertens on 24/06/2023.
//

import SwiftUI

public struct AnimatedText: View {
    @ObservedObject public var uiAnimatedText: UIAnimatedText
    var text: String
    var speed: UIAnimatedText.TextSpeed
    var completion: (() -> Void)?
    
    public init(uiAnimatedText: UIAnimatedText,
                text: String,
                speed: UIAnimatedText.TextSpeed,
                completion: (() -> Void)?) {
        self.uiAnimatedText = uiAnimatedText
        self.text = text
        self.speed = speed
        self.completion = completion
    }
    
    public var body: some View {
        Text(uiAnimatedText.prompt)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .topLeading)
            .onAppear {
                uiAnimatedText.text = text
                uiAnimatedText.speed = speed
                uiAnimatedText.completion = completion
            }
    }
}
