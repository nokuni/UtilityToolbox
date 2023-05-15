//
//  SFAccessibilitySymbol.swift
//  
//
//  Created by Yann Christophe MAERTENS on 15/05/2023.
//

import Foundation

public enum SFAccessibilitySymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀳿
    case figureStandLineDottedFigureStand = "figure.stand.line.dotted.figure.stand"
    /// 􁈑
    case figureRoll = "figure.roll"
    /// 􁌈
    case figureRollRunningPace = "figure.roll.runningpace"
    /// 􀇰
    case cursorArrowRays = "cursorarrow.rays"
    /// 􀣠
    case cursorArrowMotionLines = "cursorarrow.motionlines"
    /// 􀣡
    case cursorArrowMotionLinesClick = "cursorarrow.motionlines.click"
    /// 􀮴
    case cursorArrowClickBadgeClock = "cursorarrow.click.badge.clock"
    /// 􀮐
    case cursorArrowAndSquareOnSquareDashed = "cursorarrow.and.square.on.square.dashed"
    /// 􀭆
    case cursorArrowClick = "cursorarrow.click"
    /// 􀭇
    case cursorArrowClick2 = "cursorarrow.click.2"
    /// 􀭈
    case contextualMenuAndCursorArrow = "contextualmenu.and.cursorarrow"
    /// 􀯪
    case fileMenuAndCursorArrow = "filemenu.and.cursorarrow"
    /// 􀺪
    case dotCircleAndHandPointUpLeftFill = "dot.circle.and.hand.point.up.left.fill"
    /// 􀫍
    case dotCircleAndCursorArrow = "dot.circle.and.cursorarrow"
    /// 􀊬
    case plusMagnifyingGlass = "plus.magnifyingglass"
    /// 􀊭
    case minusMagnifyingGlass = "minus.magnifyingglass"
    /// 􀍷
    case smallcircleFilledCircle = "smallcircle.filled.circle"
    /// 􀕩
    case smallcircleFilledCircleFill = "smallcircle.filled.circle.fill"
    /// 􀬎
    case circleHexagonPath = "circle.hexagonpath"
    /// 􀬏
    case circleHexagonPathFill = "circle.hexagonpath.fill"
    /// 􀦴
    case squareGrid3x3TopLeftFilled = "square.grid.3x3.topleft.filled"
    /// 􀦵
    case squareGrid3x3TopMiddleFilled = "square.grid.3x3.topmiddle.filled"
    /// 􀦶
    case squareGrid3x3TopRightFilled = "square.grid.3x3.topright.filled"
    /// 􀦷
    case squareGrid3x3MiddleLeftFilled = "square.grid.3x3.middleleft.filled"
    /// 􀦸
    case squareGrid3x3MiddleFilled = "square.grid.3x3.middle.filled"
    /// 􀦹
    case squareGrid3x3MiddleRightFilled = "square.grid.3x3.middleright.filled"
    /// 􀦺
    case squareGrid3x3BottomLeftFilled = "square.grid.3x3.bottomleft.filled"
    /// 􀦻
    case squareGrid3x3BottomMiddleFilled = "square.grid.3x3.bottommiddle.filled"
    /// 􀦼
    case squareGrid3x3BottomRightFilled = "square.grid.3x3.bottomright.filled"
    /// 􀌮
    case quoteBubble = "quote.bubble"
    /// 􀌯
    case quoteBubbleFill = "quote.bubble.fill"
    /// 􀌴
    case captionsBubble = "captions.bubble"
    /// 􀌵
    case captionsBubbleFill = "captions.bubble.fill"

    var symbol: String {
        switch self {
        case .figureStandLineDottedFigureStand:
            return ""
        case .figureRoll:
            return ""
        case .figureRollRunningPace:
            return ""
        case .cursorArrowRays:
            return ""
        case .cursorArrowMotionLines:
            return ""
        case .cursorArrowMotionLinesClick:
            return ""
        case .cursorArrowClickBadgeClock:
            return ""
        case .cursorArrowAndSquareOnSquareDashed:
            return ""
        case .cursorArrowClick:
            return ""
        case .cursorArrowClick2:
            return ""
        case .contextualMenuAndCursorArrow:
            return ""
        case .fileMenuAndCursorArrow:
            return ""
        case .dotCircleAndHandPointUpLeftFill:
            return ""
        case .dotCircleAndCursorArrow:
            return ""
        case .plusMagnifyingGlass:
            return ""
        case .minusMagnifyingGlass:
            return ""
        case .smallcircleFilledCircle:
            return ""
        case .smallcircleFilledCircleFill:
            return ""
        case .circleHexagonPath:
            return ""
        case .circleHexagonPathFill:
            return ""
        case .squareGrid3x3TopLeftFilled:
            return ""
        case .squareGrid3x3TopMiddleFilled:
            return ""
        case .squareGrid3x3TopRightFilled:
            return ""
        case .squareGrid3x3MiddleLeftFilled:
            return ""
        case .squareGrid3x3MiddleFilled:
            return ""
        case .squareGrid3x3MiddleRightFilled:
            return ""
        case .squareGrid3x3BottomLeftFilled:
            return ""
        case .squareGrid3x3BottomMiddleFilled:
            return ""
        case .squareGrid3x3BottomRightFilled:
            return ""
        case .quoteBubble:
            return ""
        case .quoteBubbleFill:
            return ""
        case .captionsBubble:
            return ""
        case .captionsBubbleFill:
            return ""
        }
    }
}
