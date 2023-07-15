//
//  Carousel.swift
//  
//
//  Created by Maertens Yann-Christophe on 09/05/23.
//

import SwiftUI

// Custom implementation of a card carousel.

// The behavior expected is to have a horizontal scroll
// With a recalibration of the current content depending on the gesture.
// It also have to show the next element to scroll with.
// In order to demonstrates to the user that he has the possibility to scroll further.

private typealias DragGestureValue = GestureStateGesture<DragGesture, CGFloat>.Value

public struct Carousel<Content: View, Card: Identifiable>: View {
    
    public var content: (Card) -> Content
    public var cards: [Card]
    public var height: CGFloat
    public var spacing: CGFloat
    public var trailingSpace: CGFloat
    
    @Binding public var index: Int
    @GestureState private var offset: CGFloat = 0
    @State private var currentIndex: Int = 0
    
    /// height: The height of cards
    /// spacing: The spacing between each card.
    /// trailingSpace: The spacing card boundaries.
    /// index: The current index of the card.
    /// cards: The cards elements.
    /// content: The card content.
    
    public init(height: CGFloat = UIScreen.main.bounds.height * 0.25,
                spacing: CGFloat = 13,
                trailingSpace: CGFloat = 100,
                index: Binding<Int>,
                cards: [Card],
                @ViewBuilder content: @escaping (Card) -> Content) {
        self.height = height
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.cards = cards
        self.content = content
    }
    
    public var body: some View {
        GeometryReader { proxy in
            HStack(spacing: spacing) {
                ForEach(cards) { card in
                    content(card)
                        .frame(width: contentFrameWidth(proxy: proxy),
                               height: height)
                }
            }
            .padding(.horizontal, spacing)
            .offset(x: viewXOffset(proxy: proxy))
            .gesture(dragGesture(proxy: proxy))
        }
        .animation(.easeInOut, value: offset == 0)
    }
}

// MARK: - View content properties
extension Carousel {
    
    /// Returns the current width of the current card width.
    private func contentFrameWidth(proxy: GeometryProxy) -> CGFloat {
        proxy.size.width - trailingSpace
    }
    
    /// Returns the final width of the current card updated gesture.
    private func width(proxy: GeometryProxy) -> CGFloat {
        proxy.size.width - (trailingSpace - spacing)
    }
    
    /// Returns the x offset of the view.
    private func viewXOffset(proxy: GeometryProxy) -> CGFloat {
        let adjustedWidth = (trailingSpace / 2) - spacing
        let currentIndexWidth = CGFloat(currentIndex) * (-width(proxy: proxy))
        let currentIndexAdjustedWidth = (currentIndex != 0 ? adjustedWidth : 0)
        return (currentIndexWidth + currentIndexAdjustedWidth + offset)
    }
}

// MARK: - Drag Gesture logic
extension Carousel {
    
    /// Update the scroll from left to right while managing the elastic effect to boundaries.
    private func updateGesture(value: DragGesture.Value, out: inout CGFloat) {
        switch true {
        case currentIndex == 0 && value.translation.width > 0:
            out = value.translation.width - (value.translation.width / 2)
        case currentIndex == (cards.count - 1) && value.translation.width < 0:
            out = value.translation.width - (value.translation.width / 2)
        default:
            out = value.translation.width
        }
    }
    
    /// // Update and re-position the current scrolled card depending on his dragged position.
    private func onGestureEnded(value: DragGestureValue,
                                proxy: GeometryProxy) {
        let offsetX = value.translation.width
        let progress = -offsetX / width(proxy: proxy)
        let roundIndex = progress.rounded()
        currentIndex = max(min(currentIndex + Int(roundIndex), cards.count - 1), 0)
        currentIndex = index
    }
    
    /// Update the card index while scrolling.
    private func onGestureChanged(value: DragGestureValue,
                                  proxy: GeometryProxy) {
        let offsetX = value.translation.width
        let progress = -offsetX / width(proxy: proxy)
        let roundIndex = progress.rounded()
        index = max(min(currentIndex + Int(roundIndex), cards.count - 1), 0)
    }
    
    /// Returns the update, on ended and on changed drag gesture logic:
    private func dragGesture(proxy: GeometryProxy) -> some Gesture {
        DragGesture()
            .updating($offset) { value, out, _ in
                updateGesture(value: value, out: &out)
            }
            .onEnded { value in
                onGestureEnded(value: value, proxy: proxy)
            }
            .onChanged { value in
                onGestureChanged(value: value, proxy: proxy)
            }
    }
}
