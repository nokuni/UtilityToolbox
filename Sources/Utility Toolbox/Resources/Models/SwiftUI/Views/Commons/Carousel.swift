//
//  Carousel.swift
//  
//
//  Created by Maertens Yann-Christophe on 09/05/23.
//

import SwiftUI

public struct Carousel<Content: View, T: Identifiable>: View {
    
    public var content: (T) -> Content
    public var items: [T]
    public var height: CGFloat
    public var spacing: CGFloat
    public var trailingSpace: CGFloat
    
    @Binding public var index: Int
    
    @GestureState private var offset: CGFloat = 0
    @State private var currentIndex: Int = 0
    
    public init(height: CGFloat = UIScreen.main.bounds.height * 0.25,
                spacing: CGFloat = 15,
                trailingSpace: CGFloat = 100,
                index: Binding<Int>,
                items: [T],
                @ViewBuilder content: @escaping (T) -> Content) {
        self.height = height
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.items = items
        self.content = content
    }
    
    private func width(proxy: GeometryProxy) -> CGFloat {
        return proxy.size.width - (trailingSpace - spacing)
    }
    
    private func viewXOffset(proxy: GeometryProxy) -> CGFloat {
        let adjustedWidth = (trailingSpace / 2) - spacing
        let currentIndexWidth = CGFloat(currentIndex) * (-width(proxy: proxy))
        let currentIndexAdjustedWidth = (currentIndex != 0 ? adjustedWidth : 0)
        return (currentIndexWidth + currentIndexAdjustedWidth + offset)
    }
    
    public var body: some View {
        
        GeometryReader { proxy in
            
            HStack(spacing: spacing) {
                ForEach(items) { item in
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace, height: height)
                }
            }
            .padding(.horizontal, spacing)
            .offset(x: viewXOffset(proxy: proxy))
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        out = currentIndex == 0 && value.translation.width > 0 ?
                        value.translation.width - (value.translation.width / 2) :
                        value.translation.width
                    })
                    .onEnded({ value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / width(proxy: proxy)
                        let roundIndex = progress.rounded()
                        currentIndex = max(min(currentIndex + Int(roundIndex), items.count - 1), 0)
                        currentIndex = index
                    })
                    .onChanged({ value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / width(proxy: proxy)
                        let roundIndex = progress.rounded()
                        index = max(min(currentIndex + Int(roundIndex), items.count - 1), 0)
                    })
            )
        }
        .animation(.easeInOut, value: offset == 0)
    }
}
