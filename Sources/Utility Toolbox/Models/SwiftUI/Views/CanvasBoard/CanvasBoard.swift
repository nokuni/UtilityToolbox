//
//  CanvasBoard.swift
//  
//
//  Created by Maertens Yann-Christophe on 12/05/23.
//

import SwiftUI

public struct CanvasBoard: View {
    @ObservedObject var manager: CanvasManager
    public var body: some View {
        manager.canvasView
    }
}
