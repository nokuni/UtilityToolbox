//
//  AnimatedText.swift
//  
//
//  Created by Yann Christophe Maertens on 24/06/2023.
//

import SwiftUI

public struct AnimatedText: View {
    @ObservedObject public var uiAnimatedText: UIAnimatedText
    
    public init(uiAnimatedText: UIAnimatedText) {
        self.uiAnimatedText = uiAnimatedText
    }
    
    public var body: some View {
        Text(uiAnimatedText.prompt)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .topLeading)
    }
}
