//
//  ColoredSegmentedPicker.swift
//
//
//  Created by Yann Christophe Maertens on 30/03/2024.
//

import Foundation
import SwiftUI

public protocol ColorPickerDelegate {
    var content: String { get }
    var color: Color { get }
}

public typealias ColorPicker = RawRepresentable & Hashable & CaseIterable & ColorPickerDelegate

/// A colored segmented picker.
public struct ColoredSegmentedPicker<M: ColorPicker>: View {
    @Namespace private var animation
    
    public var data: [M]
    @Binding public var selection: M
    public var height: CGFloat
    public var fontSize: CGFloat
    public var fontWeight: Font.Weight
    public var fontDesign: Font.Design
    public var cornerRadius: CGFloat
    public var backgroundColor: Color
    public var selectedTextColor: Color
    public var unselectedTextColor: Color
    
    public init(data: [M],
                selection: Binding<M>,
                height: CGFloat = 29,
                fontSize: CGFloat = 13,
                fontWeight: Font.Weight = .medium,
                fontDesign: Font.Design = .default,
                cornerRadius: CGFloat = 6,
                backgroundColor: Color = Color.transparent,
                selectedTextColor: Color = Color.background,
                unselectedTextColor: Color = Color.primary) {
        self.data = data
        self._selection = selection
        self.height = height
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.fontDesign = fontDesign
        self.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.selectedTextColor = selectedTextColor
        self.unselectedTextColor = unselectedTextColor
    }
    
    public var body: some View {
        HStack {
            ForEach(data.indices, id: \.self) { index in
                makeText(index: index)
            }
        }
        .background(Color.transparent)
        .cornerRadius(cornerRadius)
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(backgroundColor)
        )
    }
    
    @ViewBuilder
    private func makeText(index: Int) -> some View {
        Text(data[index].content.capitalized)
            .font(.system(size: fontSize, weight: fontWeight, design: fontDesign))
            .foregroundColor("\(selection)" == "\(data[index])" ? selectedTextColor : unselectedTextColor)
            .padding(.leading, index == 0 ? 5 : 0)
            .padding(.trailing, index == data.count - 1 ? 5 : 0)
            .frame(maxWidth: .infinity,
                   minHeight: height,
                   maxHeight: height)
            .background(
                makeTextBackground(index: index)
                    .shadow(radius: 3)
            )
            .padding(.leading, index == 0 ? 2 : 0)
            .padding(.trailing, index == data.count - 1 ? 2 : 0)
            .padding(.vertical, 2)
            .onTapGesture {
                withAnimation {
                    selection = data[index]
                }
            }
    }
    
    @ViewBuilder
    private func makeTextBackground(index: Int) -> some View {
        if "\(selection)" != "\(data[index])" {
            Color.transparent
        } else {
            selection.color
                .cornerRadius(cornerRadius)
                .matchedGeometryEffect(id: "Tab", in: animation)
        }
    }
}
