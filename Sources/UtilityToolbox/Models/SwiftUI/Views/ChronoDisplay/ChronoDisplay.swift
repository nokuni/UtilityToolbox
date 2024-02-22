//
//  ChronoDisplay.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import SwiftUI

public struct ChronoDisplay: View {
    @ObservedObject var chronoManager: ChronoManager
    public var body: some View {
        Text(chronoManager.label)
            .monospacedDigit()
    }
}
