//
//  SwiftUIView.swift
//  
//
//  Created by Maertens Yann-Christophe on 10/05/23.
//

import SwiftUI

struct ScrollableText: View {
    @State private var scrollViewContentSize: CGSize = .zero
    var text: String
    var body: some View {
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
