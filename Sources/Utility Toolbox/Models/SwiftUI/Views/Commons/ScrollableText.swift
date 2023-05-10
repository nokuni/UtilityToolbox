//
//  SwiftUIView.swift
//  
//
//  Created by Maertens Yann-Christophe on 10/05/23.
//

import SwiftUI

public struct ScrollableText: View {
    @State private var scrollViewContentSize: CGSize = .zero
    public var text: String

    public init(scrollViewContentSize: CGSize, text: String) {
        self.text = text
    }

    public var body: some View {
        ScrollView {
            Text(text)
                .background(
                    GeometryReader { geo -> Color in
                        DispatchQueue.main.async {
                            scrollViewContentSize = geo.size
                        }
                        return Color.clear
                    }
                )
        }
        .frame(maxWidth: .infinity, maxHeight: scrollViewContentSize.height)
    }
}
