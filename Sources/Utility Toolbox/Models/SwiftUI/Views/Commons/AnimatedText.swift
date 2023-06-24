//
//  AnimatedText.swift
//  
//
//  Created by Yann Christophe Maertens on 24/06/2023.
//

import SwiftUI

public struct AnimatedText: View {
    @State private var prompt = ""
    @State private var currentIndex: Int = 0
    private let timer = Timer.publish(every: 0.05,
                                      on: .main,
                                      in: .common).autoconnect()
    public var text: String
    public var completion: (() -> Void)?
    
    public init(text: String,
                completion: (() -> Void)? = nil) {
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