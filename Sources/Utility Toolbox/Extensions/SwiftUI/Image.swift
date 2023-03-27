//
//  Image.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI

public extension Image {

    /// Zoomed center of an image
    func centerCropped(radius: CGFloat) -> some View {
        GeometryReader { geo in
            self
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: geo.size.height)
                .clipShape(RoundedRectangle(cornerRadius: radius))
        }
    }

    /// Get Image from data.
    static func data(_ data: Data) -> Image? {
        if let uiimage = UIImage(data: data) {
            return Image(uiImage: uiimage)
        }
        return nil
    }
}
