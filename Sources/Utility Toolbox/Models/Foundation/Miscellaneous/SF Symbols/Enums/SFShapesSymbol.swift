//
//  SFShapesSymbol.swift
//  
//
//  Created by Yann Christophe MAERTENS on 16/05/2023.
//

import Foundation

public enum SFShapesSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀀀
    case circle = "circle"
    /// 􀀁
    case circleFill = "circle.fill"
    /// 􀂒
    case square = "square"
    /// 􀂓
    case squareFill = "square.fill"
    /// 􀑋
    case app = "app"
    /// 􀑌
    case appFill = "app.fill"
    /// 􀏃
    case rectangle = "rectangle"
    /// 􀏄
    case rectangleFill = "rectangle.fill"
    /// 􀟏
    case rectanglePortrait = "rectangle.portrait"
    /// 􀟐
    case rectanglePortraitFill = "rectangle.portrait.fill"
    /// 􀝶
    case capsule = "capsule"
    /// 􀝷
    case capsuleFill = "capsule.fill"
    /// 􀧶
    case capsulePortrait = "capsule.portrait"
    /// 􀧷
    case capsulePortraitFill = "capsule.portrait.fill"
    /// 􀲞
    case oval = "oval"
    /// 􀲟
    case ovalFill = "oval.fill"
    /// 􀲠
    case ovalPortrait = "oval.portrait"
    /// 􀲡
    case ovalPortraitFill = "oval.portrait.fill"
    /// 􀛣
    case triangle = "triangle"
    /// 􀛤
    case triangleFill = "triangle.fill"
    /// 􀟈
    case diamond = "diamond"
    /// 􀟉
    case diamondFill = "diamond.fill"
    /// 􀟊
    case octagon = "octagon"
    /// 􀟋
    case octagonFill = "octagon.fill"
    /// 􀝝
    case hexagon = "hexagon"
    /// 􀝞
    case hexagonFill = "hexagon.fill"
    /// 􀶺
    case pentagon = "pentagon"
    /// 􀶻
    case pentagonFill = "pentagon.fill"
    /// 􀟆
    case seal = "seal"
    /// 􀟇
    case sealFill = "seal.fill"
    /// 􀋀
    case rhombus = "rhombus"
    /// 􀋁
    case rhombusFill = "rhombus.fill"
    /// 􀙦
    case shield = "shield"
    /// 􀙧
    case shieldFill = "shield.fill"
    /// 􀎹
    case viewfinder = "viewfinder"
    /// 􀩸
    case rectangleRoundedTop = "rectangle.roundedtop"
    /// 􀩹
    case rectangleRoundedTopFill = "rectangle.roundedtop.fill"
    /// 􀩺
    case rectangleRoundedBottom = "rectangle.roundedbottom"
    /// 􀩻
    case rectangleRoundedBottomFill = "rectangle.roundedbottom.fill"

    var symbol: String {
        switch self {
        case .circle: return "􀀀"
        case .circleFill: return "􀀁"
        case .square: return "􀂒"
        case .squareFill: return "􀂓"
        case .app: return "􀑋"
        case .appFill: return "􀑌"
        case .rectangle: return "􀏃"
        case .rectangleFill: return "􀏄"
        case .rectanglePortrait: return "􀟏"
        case .rectanglePortraitFill: return "􀟐"
        case .capsule: return "􀝶"
        case .capsuleFill: return "􀝷"
        case .capsulePortrait: return "􀧶"
        case .capsulePortraitFill: return "􀧷"
        case .oval: return "􀲞"
        case .ovalFill: return "􀲟"
        case .ovalPortrait: return "􀲠"
        case .ovalPortraitFill: return "􀲡"
        case .triangle: return "􀛣"
        case .triangleFill: return "􀛤"
        case .diamond: return "􀟈"
        case .diamondFill: return "􀟉"
        case .octagon: return "􀟊"
        case .octagonFill: return "􀟋"
        case .hexagon: return "􀝝"
        case .hexagonFill: return "􀝞"
        case .pentagon: return "􀶺"
        case .pentagonFill: return "􀶻"
        case .seal: return "􀟆"
        case .sealFill: return "􀟇"
        case .rhombus: return "􀋀"
        case .rhombusFill: return "􀋁"
        case .shield: return "􀙦"
        case .shieldFill: return "􀙧"
        case .viewfinder: return "􀎹"
        case .rectangleRoundedTop: return "􀩸"
        case .rectangleRoundedTopFill: return "􀩹"
        case .rectangleRoundedBottom: return "􀩺"
        case .rectangleRoundedBottomFill: return "􀩻"
        }
    }
}
