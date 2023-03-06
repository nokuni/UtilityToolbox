//
//  File.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI
import Combine

struct OnlyNumbersModifier: ViewModifier {
    @Binding var text: String
    func body(content: Content) -> some View {
        content
            .keyboardType(.numberPad)
            .onReceive(Just(text)) { newValue in
                let filtered = newValue.filter { "0123456789".contains($0) }
                if filtered != newValue { text = filtered }
            }
    }
}
