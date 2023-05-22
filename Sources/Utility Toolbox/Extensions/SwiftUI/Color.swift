//
//  Color.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI

public extension Color {
    
    /// Allow to use hex codes in the color initialization.
    init(hex: UInt, alpha: Double = 1) {
        let red = Double((hex & 0xFF0000) >> 16) / 255
        let green = Double((hex & 0x00FF00) >> 8) / 255
        let blue = Double(hex & 0x0000FF) / 255
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
    
    /// A sixth-level shade of gray that adapts to the environment.
    static let whiteGray = Color(UIColor.systemGray6)
    
    /// A fifth-level shade of gray that adapts to the environment.
    static let ultraLightGray = Color(UIColor.systemGray5)
    
    /// A fourth-level shade of gray that adapts to the environment.
    static let veryLightGray = Color(UIColor.systemGray4)
    
    /// A third-level shade of gray that adapts to the environment.
    static let lightGray = Color(UIColor.systemGray3)
    
    /// A second-level shade of gray that adapts to the environment.
    static let regularGray = Color(UIColor.systemGray2)
    
    /// The color for the main background of your interface.
    static let background = Color(UIColor.systemBackground)
}

// MARK: - Color Panel
public extension Color {
    static let licorice = Color(red: 0/255, green: 0/255, blue: 0/255)
    static let lead = Color(red: 33/255, green: 33/255, blue: 33/255)
    static let tungsten = Color(red: 66/255, green: 66/255, blue: 66/255)
    static let iron = Color(red: 94/255, green: 94/255, blue: 94/255)
    static let steel = Color(red: 121/255, green: 121/255, blue: 121/255)
    static let tin = Color(red: 145/255, green: 145/255, blue: 145/255)
    static let nickel = Color(red: 146/255, green: 146/255, blue: 146/255)
    static let aluminium = Color(red: 169/255, green: 169/255, blue: 169/255)
    static let magnesium = Color(red: 192/255, green: 192/255, blue: 192/255)
    static let silver = Color(red: 214/255, green: 214/255, blue: 214/255)
    static let mercury = Color(red: 235/255, green: 235/255, blue: 235/255)
    static let snow = Color(red: 255/255, green: 255/255, blue: 255/255)
    
    static let cayenne = Color(red: 148/255, green: 17/255, blue: 0/255)
    static let mocha = Color(red: 148/255, green: 82/255, blue: 0/255)
    static let asparagus = Color(red: 146/255, green: 144/255, blue: 0/255)
    static let fern = Color(red: 79/255, green: 143/255, blue: 0/255)
    static let clover = Color(red: 0/255, green: 143/255, blue: 0/255)
    static let moss = Color(red: 0/255, green: 144/255, blue: 81/255)
    static let teal = Color(red: 0/255, green: 145/255, blue: 147/255)
    static let ocean = Color(red: 0/255, green: 84/255, blue: 147/255)
    static let midnight = Color(red: 1/255, green: 25/255, blue: 147/255)
    static let eggplant = Color(red: 83/255, green: 27/255, blue: 147/255)
    static let plum = Color(red: 148/255, green: 33/255, blue: 147/255)
    static let maroon = Color(red: 148/255, green: 23/255, blue: 81/255)
    
    static let maraschino = Color(red: 255/255, green: 38/255, blue: 0/255)
    static let tangerine = Color(red: 255/255, green: 147/255, blue: 0/255)
    static let lemon = Color(red: 255/255, green: 251/255, blue: 0/255)
    static let lime = Color(red: 142/255, green: 250/255, blue: 0/255)
    static let spring = Color(red: 0/255, green: 249/255, blue: 0/255)
    static let seaFoam = Color(red: 0/255, green: 250/255, blue: 146/255)
    static let turquoise = Color(red: 0/255, green: 253/255, blue: 255/255)
    static let aqua = Color(red: 0/255, green: 150/255, blue: 255/255)
    static let blueberry = Color(red: 4/255, green: 51/255, blue: 255/255)
    static let grape = Color(red: 148/255, green: 55/255, blue: 255/255)
    static let newMagenta = Color(red: 255/255, green: 64/255, blue: 255/255)
    static let strawberry = Color(red: 255/255, green: 47/255, blue: 146/255)
    
    static let salmon = Color(red: 255/255, green: 126/255, blue: 121/255)
    static let cantaloupe = Color(red: 255/255, green: 212/255, blue: 121/255)
    static let banana = Color(red: 255/255, green: 252/255, blue: 121/255)
    static let honeydew = Color(red: 212/255, green: 251/255, blue: 121/255)
    static let flora = Color(red: 115/255, green: 250/255, blue: 121/255)
    static let spindrift = Color(red: 115/255, green: 252/255, blue: 214/255)
    static let ice = Color(red: 115/255, green: 253/255, blue: 255/255)
    static let sky = Color(red: 118/255, green: 214/255, blue: 255/255)
    static let orchid = Color(red: 122/255, green: 129/255, blue: 255/255)
    static let lavender = Color(red: 215/255, green: 131/255, blue: 255/255)
    static let bubblegum = Color(red: 255/255, green: 133/255, blue: 255/255)
    static let carnation = Color(red: 255/255, green: 138/255, blue: 216/255)
}
