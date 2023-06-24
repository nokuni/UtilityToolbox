//
//  AnimatedText.swift
//  
//
//  Created by Yann Christophe Maertens on 24/06/2023.
//

import SwiftUI

public struct AnimatedText: View {
    @ObservedObject public var uiAnimatedText = UIAnimatedText()
    @State private var prompt = ""
    @State private var currentIndex: Int = 0
    private let timer = Timer.publish(every: 0.05,
                                      on: .main,
                                      in: .common).autoconnect()
    public var text: String
    public var completion: (() -> Void)?
    
    public init(uiAnimatedText: UIAnimatedText,
                text: String,
                completion: (() -> Void)? = nil) {
        self.uiAnimatedText = uiAnimatedText
        self.text = text
        self.completion = completion
    }
    
    public var body: some View {
        Text(prompt)
            .onReceive(timer) { _ in write() }
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .topLeading)
    }
    
    private func write() {
        let isWriting = currentIndex < (text.count - 1)
        guard isWriting else {
            completion?()
            timer.upstream.connect().cancel()
            return
        }
        prompt.append(text[currentIndex])
        currentIndex += 1
    }
}

public class UIAnimatedText: ObservableObject {
    public init() { }
    public func completeWriting(prompt: inout String, text: String) {
        prompt = text
    }
}
