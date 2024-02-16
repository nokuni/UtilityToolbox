//
//  Image.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI

public extension Image {
    
    /// Zoomed center of an image
    func cropped(cornerRadius: CGFloat = 0,
                 corners: UIRectCorner = .allCorners,
                 zoomedPart: Alignment = .center) -> some View {
        GeometryReader { geo in
            self
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: geo.size.height, alignment: zoomedPart)
                .clipShape(
                    RoundedCorner(radius: cornerRadius, corners: corners)
                )
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

// MARK: - SF Symbols
public extension Image {
    
    init(sfSymbol: SFSymbolProtocol) {
        self.init(systemName: sfSymbol.rawValue)
    }
    
    init(sfGaming: SFGamingSymbol) {
        self.init(systemName: sfGaming.rawValue)
    }
    
    init(sfWeather: SFWeatherSymbol) {
        self.init(systemName: sfWeather.rawValue)
    }
    
    init(sfAccessibility: SFAccessibilitySymbol) {
        self.init(systemName: sfAccessibility.rawValue)
    }
    
    init(sfTime: SFTimeSymbol) {
        self.init(systemName: sfTime.rawValue)
    }
    
    init(sfPrivacyAndSecurity: SFPrivacyAndSecuritySymbol) {
        self.init(systemName: sfPrivacyAndSecurity.rawValue)
    }
    
    init(sfDevices: SFDevicesSymbol) {
        self.init(systemName: sfDevices.rawValue)
    }
    
    init(sfShapes: SFShapesSymbol) {
        self.init(systemName: sfShapes.rawValue)
    }
    
    init(sfArrow: SFArrowsSymbol) {
        self.init(systemName: sfArrow.rawValue)
    }
    
    init(sfMaths: SFMathsSymbol) {
        self.init(systemName: sfMaths.rawValue)
    }
    
    init(sfTransport: SFTransportSymbol) {
        self.init(systemName: sfTransport.rawValue)
    }
    
    init(sfTextFormatting: SFTextFormattingSymbol) {
        self.init(systemName: sfTextFormatting.rawValue)
    }
    
    init(sfMedia: SFMediaSymbol) {
        self.init(systemName: sfMedia.rawValue)
    }
    
    init(sfHealth: SFHealthSymbol) {
        self.init(systemName: sfHealth.rawValue)
    }
    
    init(sfNature: SFNatureSymbol) {
        self.init(systemName: sfNature.rawValue)
    }
    
    init(sfVariable: SFVariableSymbol) {
        self.init(systemName: sfVariable.rawValue)
    }
    
    init(sfHome: SFHomeSymbol) {
        self.init(systemName: sfHome.rawValue)
    }
    
    init(sfObjectsAndTools: SFObjectsAndTools) {
        self.init(systemName: sfObjectsAndTools.rawValue)
    }
}
