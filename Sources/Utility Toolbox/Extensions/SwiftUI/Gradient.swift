//
//  Gradient.swift
//  
//
//  Created by Maertens Yann-Christophe on 14/05/23.
//

import SwiftUI

public extension Gradient {
    static let rainbow = Gradient(colors: [.red, .orange, .yellow, .green, .blue, .indigo, .purple])
    static let lightRainbow = Gradient(colors: [
        Color(hex: 0xffb6c1), Color(hex: 0xe0b0ff), Color(hex: 0x7df9ff), Color(hex: 0xdffff8f), Color(hex: 0xffbf00)
    ])
    static let diamond = Gradient(colors: [
        Color(hex: 0xf1f7fb), Color(hex: 0xd9ebf4), Color(hex: 0xcbe3f0), Color(hex: 0xb8d8e7), Color(hex: 0x9ac5db)
    ])
    static let summerBreeze = Gradient(colors: [Color(hex: 0xf9c58d), Color(hex: 0xf492f0)])
    static let blueSea = Gradient(colors: [Color(hex: 0x0061ff), Color(hex: 0x60efff)])
    static let sunset = Gradient(colors: [Color(hex: 0xffcf67), Color(hex: 0xd3321d)])
    static let clearSea = Gradient(colors: [Color(hex: 0x6ef195), Color(hex: 0x00e3fd)])
    static let mediterranean = Gradient(colors: [Color(hex: 0x2feaa8), Color(hex: 0x028cf3)])
    static let allSea = Gradient(colors: [Color(hex: 0x009FFD), Color(hex: 0x2A2A72)])
}
