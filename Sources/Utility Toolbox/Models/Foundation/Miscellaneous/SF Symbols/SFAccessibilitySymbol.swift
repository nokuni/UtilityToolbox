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
    /// 􀬄
    case rectangle3GroupBubbleLeft = "rectangle.3.group.bubble.left"
    /// 􀬅
    case rectangle3GroupBubbleLeftFill = "rectangle.3.group.bubble.left.fill"
    /// 􀕺
    case ellipsisBubble = "ellipsis.bubble"
    /// 􀕻
    case ellipsisBubbleFill = "ellipsis.bubble.fill"
    /// 􀍈 This symbol may not be modified and may only be used to refer to Apple's Teletype feature.
    case teletype = "teletype"
    /// 􀜅 This symbol may not be modified and may only be used to refer to Apple's Teletype feature.
    case teletypeCircle = "teletype.circle"
    /// 􀜆 This symbol may not be modified and may only be used to refer to Apple's Teletype feature.
    case teletypeCircleFill = "teletype.circle.fill"
    /// 􀙰 This symbol may not be modified and may only be used to refer to Apple's Teletype feature.
    case teletypeAnswer = "teletype.answer"
    /// 􀴦 This symbol may not be modified and may only be used to refer to Apple's Teletype feature.
    case teletypeAnswerCircle = "teletype.answer.circle"
    /// 􀴧 This symbol may not be modified and may only be used to refer to Apple's Teletype feature.
    case teletypeAnswerCircleFill = "teletype.answer.circle.fill"
    /// 􀬸
    case rectangleAndTextMagnifyingGlass = "rectangle.and.text.magnifyingglass"
    /// 􁒏
    case arrowUpAndDownAndSparkles = "arrow.up.and.down.and.sparkles"
    /// 􀻖 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalcrownArrowClockwise = "digitalcrown.arrow.clockwise"
    /// 􀻗 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalcrownArrowClockwiseFill = "digitalcrown.arrow.clockwise.fill"
    /// 􀻘 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalcrownArrowCounterclockwise = "digitalcrown.arrow.counterclockwise"
    /// 􀻙 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalcrownArrowCounterclockwiseFill = "digitalcrown.arrow.counterclockwise.fill"
    /// 􀴡 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalcrownPress = "digitalcrown.press"
    /// 􀴢 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalcrownPressFill = "digitalcrown.press.fill"
    /// 􀓎
    case hare = "hare"
    /// 􀓏
    case hareFill = "hare.fill"
    /// 􀓐
    case tortoise = "tortoise"
    /// 􀓑
    case tortoiseFill = "tortoise.fill"
    /// 􀋭
    case eye = "eye"
    /// 􀋮
    case eyeFill = "eye.fill"
    /// 􀛿
    case eyeCircle = "eye.circle"
    /// 􀜀
    case eyeCircleFill = "eye.circle.fill"
    /// 􀽇
    case eyeSquare = "eye.square"
    /// 􀽈
    case eyeSquareFill = "eye.square.fill"
    /// 􀋯
    case eyeSlash = "eye.slash"
    /// 􀋰
    case eyeSlashFill = "eye.slash.fill"
    /// 􀜁
    case eyeSlashCircle = "eye.slash.circle"
    /// 􀜂
    case eyeSlashCircleFill = "eye.slash.circle.fill"
    /// 􁂔
    case eyeTrianglebadgeExclamationMark = "eye.trianglebadge.exclamationmark"
    /// 􁂕
    case eyeTrianglebadgeExclamationMarkFill = "eye.trianglebadge.exclamationmark.fill"
    /// 􀜣
    case ear = "ear"
    /// 􀦿
    case earBadgeCheckmark = "ear.badge.checkmark"
    /// 􀧁
    case earTrianglebadgeExclamationMark = "ear.trianglebadge.exclamationmark"
    /// 􀵣
    case earAndWaveform = "ear.and.waveform"
    /// 􀞇
    case earFill = "ear.fill"
    /// 􀪓
    case hearingDeviceEar = "hearingdevice.ear"
    /// 􁉗
    case hearingDeviceEarFill = "hearingdevice.ear.fill"
    /// 􁎏
    case hearingDeviceAndSignalMeter = "hearingdevice.and.signal.meter"
    /// 􁎐
    case hearingDeviceAndSignalMeterFill = "hearingdevice.and.signal.meter.fill"
    /// 􀬁
    case handTap = "hand.tap"
    /// 􀬂
    case handTapFill = "hand.tap.fill"
    /// 􀤹
    case handPointUp = "hand.point.up"
    /// 􀤺
    case handPointUpFill = "hand.point.up.fill"
    /// 􀦂
    case handPointUpBraille = "hand.point.up.braille"
    /// 􀦃
    case handPointUpBrailleFill = "hand.point.up.braille.fill"
    /// 􀻾
    case waveformAndMagnifyingGlass = "waveform.and.magnifyingglass"
    /// 􀝯
    case dotArrowtrianglesUpRightDownLeftCircle = "dot.arrowtriangles.up.right.down.left.circle"
    /// 􀵷
    case textFormatSizeSmaller = "textformat.size.smaller"
    /// 􀵿
    case textFormatSizeLarger = "textformat.size.larger"
    /// 􀅐
    case textFormatSize = "textformat.size"
    /// 􁓖
    case characterDuployan = "character.duployan"
    /// 􀤍
    case aMagnify = "a.magnify"
    /// 􀧐
    case arrowUpAndDownAndArrowLeftAndRight = "arrow.up.and.down.and.arrow.left.and.right"
    /// 􀬑
    case arrowUpLeftAndDownRightAndArrowUpRightAndDownLeft = "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left"

    var symbol: String {
        switch self {
        case .figureStandLineDottedFigureStand:
            return "􀳿"
        case .figureRoll:
            return "􁈑"
        case .figureRollRunningPace:
            return "􁌈"
        case .cursorArrowRays:
            return "􀇰"
        case .cursorArrowMotionLines:
            return "􀣠"
        case .cursorArrowMotionLinesClick:
            return "􀣡"
        case .cursorArrowClickBadgeClock:
            return "􀮴"
        case .cursorArrowAndSquareOnSquareDashed:
            return "􀮐"
        case .cursorArrowClick:
            return "􀭆"
        case .cursorArrowClick2:
            return "􀭇"
        case .contextualMenuAndCursorArrow:
            return "􀭈"
        case .fileMenuAndCursorArrow:
            return "􀯪"
        case .dotCircleAndHandPointUpLeftFill:
            return "􀺪"
        case .dotCircleAndCursorArrow:
            return "􀫍"
        case .plusMagnifyingGlass:
            return "􀊬"
        case .minusMagnifyingGlass:
            return "􀊭"
        case .smallcircleFilledCircle:
            return "􀍷"
        case .smallcircleFilledCircleFill:
            return "􀕩"
        case .circleHexagonPath:
            return "􀬎"
        case .circleHexagonPathFill:
            return "􀬏"
        case .squareGrid3x3TopLeftFilled:
            return "􀦴"
        case .squareGrid3x3TopMiddleFilled:
            return "􀦵"
        case .squareGrid3x3TopRightFilled:
            return "􀦶"
        case .squareGrid3x3MiddleLeftFilled:
            return "􀦷"
        case .squareGrid3x3MiddleFilled:
            return "􀦸"
        case .squareGrid3x3MiddleRightFilled:
            return "􀦹"
        case .squareGrid3x3BottomLeftFilled:
            return "􀦺"
        case .squareGrid3x3BottomMiddleFilled:
            return "􀦻"
        case .squareGrid3x3BottomRightFilled:
            return "􀦼"
        case .quoteBubble:
            return "􀌮"
        case .quoteBubbleFill:
            return "􀌯"
        case .captionsBubble:
            return "􀌴"
        case .captionsBubbleFill:
            return "􀌵"
        case .rectangle3GroupBubbleLeft:
            return "􀬄"
        case .rectangle3GroupBubbleLeftFill:
            return "􀬅"
        case .ellipsisBubble:
            return "􀕺"
        case .ellipsisBubbleFill:
            return "􀕻"
        case .teletype:
            return "􀍈"
        case .teletypeCircle:
            return "􀜅"
        case .teletypeCircleFill:
            return "􀜆"
        case .teletypeAnswer:
            return "􀙰"
        case .teletypeAnswerCircle:
            return "􀴦"
        case .teletypeAnswerCircleFill:
            return "􀴧"
        case .rectangleAndTextMagnifyingGlass:
            return "􀬸"
        case .arrowUpAndDownAndSparkles:
            return "􁒏"
        case .digitalcrownArrowClockwise:
            return "􀻖"
        case .digitalcrownArrowClockwiseFill:
            return "􀻗"
        case .digitalcrownArrowCounterclockwise:
            return "􀻘"
        case .digitalcrownArrowCounterclockwiseFill:
            return "􀻙"
        case .digitalcrownPress:
            return "􀴡"
        case .digitalcrownPressFill:
            return "􀴢"
        case .hare:
            return "􀓎"
        case .hareFill:
            return "􀓏"
        case .tortoise:
            return "􀓐"
        case .tortoiseFill:
            return "􀓑"
        case .eye:
            return "􀋭"
        case .eyeFill:
            return "􀋮"
        case .eyeCircle:
            return "􀛿"
        case .eyeCircleFill:
            return "􀜀"
        case .eyeSquare:
            return "􀽇"
        case .eyeSquareFill:
            return "􀽈"
        case .eyeSlash:
            return "􀋯"
        case .eyeSlashFill:
            return "􀋰"
        case .eyeSlashCircle:
            return "􀜁"
        case .eyeSlashCircleFill:
            return "􀜂"
        case .eyeTrianglebadgeExclamationMark:
            return "􁂔"
        case .eyeTrianglebadgeExclamationMarkFill:
            return "􁂕"
        case .ear:
            return "􀜣"
        case .earBadgeCheckmark:
            return "􀦿"
        case .earTrianglebadgeExclamationMark:
            return "􀧁"
        case .earAndWaveform:
            return "􀵣"
        case .earFill:
            return "􀞇"
        case .hearingDeviceEar:
            return "􀪓"
        case .hearingDeviceEarFill:
            return "􁉗"
        case .hearingDeviceAndSignalMeter:
            return "􁎏"
        case .hearingDeviceAndSignalMeterFill:
            return "􁎐"
        case .handTap:
            return "􀬁"
        case .handTapFill:
            return "􀬂"
        case .handPointUp:
            return "􀤹"
        case .handPointUpFill:
            return "􀤺"
        case .handPointUpBraille:
            return "􀦂"
        case .handPointUpBrailleFill:
            return "􀦃"
        case .waveformAndMagnifyingGlass:
            return "􀻾"
        case .dotArrowtrianglesUpRightDownLeftCircle:
            return "􀝯"
        case .textFormatSizeSmaller:
            return "􀵷"
        case .textFormatSizeLarger:
            return "􀵿"
        case .textFormatSize:
            return "􀅐"
        case .characterDuployan:
            return "􁓖"
        case .aMagnify:
            return "􀤍"
        case .arrowUpAndDownAndArrowLeftAndRight:
            return "􀧐"
        case .arrowUpLeftAndDownRightAndArrowUpRightAndDownLeft:
            return "􀬑"
        }
    }
}
