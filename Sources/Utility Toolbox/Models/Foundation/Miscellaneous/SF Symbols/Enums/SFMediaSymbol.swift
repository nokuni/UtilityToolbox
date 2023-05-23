//
//  SFMediaSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/05/23.
//

import Foundation

public enum SFMediaSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀊃
    case play = "play"
    /// 􀊄
    case playFill = "play.fill"
    /// 􀊕
    case playCircle = "play.circle"
    /// 􀊖
    case playCircleFill = "play.circle.fill"
    /// 􀽍
    case playSquare = "play.square"
    /// 􀽎
    case playSquareFill = "play.square.fill"
    /// 􀊙
    case playRectangle = "play.rectangle"
    /// 􀊚
    case playRectangleFill = "play.rectangle.fill"
    /// 􁟼
    case playSquareStack = "play.square.stack"
    /// 􁟽
    case playSquareStackFill = "play.square.stack.fill"
    /// 􀪅
    case playSlash = "play.slash"
    /// 􀪆
    case playSlashFill = "play.slash.fill"
    /// 􀊅
    case pause = "pause"
    /// 􀊆
    case pauseFill = "pause.fill"
    /// 􀊗
    case pauseCircle = "pause.circle"
    /// 􀊘
    case pauseCircleFill = "pause.circle.fill"
    /// 􀊛
    case pauseRectangle = "pause.rectangle"
    /// 􀊜
    case pauseRectangleFill = "pause.rectangle.fill"
    /// 􀛶
    case stop = "stop"
    /// 􀛷
    case stopFill = "stop.fill"
    /// 􀜪
    case stopCircle = "stop.circle"
    /// 􀜫
    case stopCircleFill = "stop.circle.fill"
    /// 􀢙
    case recordCircle = "record.circle"
    /// 􀢚
    case recordCircleFill = "record.circle.fill"
    /// 􀊇
    case playpause = "playpause"
    /// 􀊈
    case playpauseFill = "playpause.fill"
    /// 􁚞
    case playpauseCircle = "playpause.circle"
    /// 􁚟
    case playpauseCircleFill = "playpause.circle.fill"
    /// 􀊉
    case backward = "backward"
    /// 􀊊
    case backwardFill = "backward.fill"
    /// 􀺃
    case backwardCircle = "backward.circle"
    /// 􀺄
    case backwardCircleFill = "backward.circle.fill"
    /// 􀊋
    case forward = "forward"
    /// 􀊌
    case forwardFill = "forward.fill"
    /// 􀺅
    case forwardCircle = "forward.circle"
    /// 􀺆
    case forwardCircleFill = "forward.circle.fill"
    /// 􀊍
    case backwardEnd = "backward.end"
    /// 􀊎
    case backwardEndFill = "backward.end.fill"
    /// 􁋮
    case backwardEndCircle = "backward.end.circle"
    /// 􁋯
    case backwardEndCircleFill = "backward.end.circle.fill"
    /// 􀊏
    case forwardEnd = "forward.end"
    /// 􀊐
    case forwardEndFill = "forward.end.fill"
    /// 􁋰
    case forwardEndCircle = "forward.end.circle"
    /// 􁋱
    case forwardEndCircleFill = "forward.end.circle.fill"
    /// 􀊑
    case backwardEndAlt = "backward.end.alt"
    /// 􀊒
    case backwardEndAltFill = "backward.end.alt.fill"
    /// 􀊓
    case forwardEndAlt = "forward.end.alt"
    /// 􀊔
    case forwardEndAltFill = "forward.end.alt.fill"
    /// 􀩨
    case backwardFrame = "backward.frame"
    /// 􀩩
    case backwardFrameFill = "backward.frame.fill"
    /// 􀩪
    case forwardFrame = "forward.frame"
    /// 􀩫
    case forwardFrameFill = "forward.frame.fill"
    /// 􀊝
    case shuffle = "shuffle"
    /// 􀵉
    case shuffleCircle = "shuffle.circle"
    /// 􀵊
    case shuffleCircleFill = "shuffle.circle.fill"
    /// 􀊞
    case _repeat = "repeat"
    /// 􀵋
    case repeatCircle = "repeat.circle"
    /// 􀵌
    case repeatCircleFill = "repeat.circle.fill"
    /// 􀊟
    case repeat1 = "repeat.1"
    /// 􀵍
    case repeat1Circle = "repeat.1.circle"
    /// 􀵎
    case repeat1CircleFill = "repeat.1.circle.fill"
    /// 􀯠
    case infinity = "infinity"
    /// 􀵏
    case infinityCircle = "infinity.circle"
    /// 􀵐
    case infinityCircleFill = "infinity.circle.fill"
    /// 􀣁
    case arrowRectanglePath = "arrow.rectanglepath"
    /// 􀍿
    case goForward = "goforward"
    /// 􀎀
    case goBackward = "gobackward"
    /// 􀶰
    case goForward5 = "goforward.5"
    /// 􀶱
    case goBackward5 = "gobackward.5"
    /// 􀎁
    case goForward10 = "goforward.10"
    /// 􀎂
    case goBackward10 = "gobackward.10"
    /// 􀎃
    case goForward15 = "goforward.15"
    /// 􀎄
    case goBackward15 = "gobackward.15"
    /// 􀎅
    case goForward30 = "goforward.30"
    /// 􀎆
    case goBackward30 = "gobackward.30"
    /// 􀎇
    case goForward45 = "goforward.45"
    /// 􀎈
    case goBackward45 = "gobackward.45"
    /// 􀎉
    case goForward60 = "goforward.60"
    /// 􀎊
    case goBackward60 = "gobackward.60"
    /// 􀘤
    case goForward75 = "goforward.75"
    /// 􀘥
    case goBackward75 = "gobackward.75"
    /// 􀘦
    case goForward90 = "goforward.90"
    /// 􀘧
    case goBackward90 = "gobackward.90"
    /// 􀘨
    case goForwardPlus = "goforward.plus"
    /// 􀘩
    case goBackwardMinus = "gobackward.minus"
    /// 􀋽
    case textInsert = "text.insert"
    /// 􀋾
    case textAppend = "text.append"
    /// 􁘿
    case textLineFirstAndArrowTriangleForward = "text.line.first.and.arrowtriangle.forward"
    /// 􁙀
    case textLineLastAndArrowTriangleForward = "text.line.last.and.arrowtriangle.forward"
    
    var symbol: String {
        switch self {
        case .play:
            return "􀊃"
        case .playFill:
            return "􀊄"
        case .playCircle:
            return "􀊕"
        case .playCircleFill:
            return "􀊖"
        case .playSquare:
            return "􀽍"
        case .playSquareFill:
            return "􀽎"
        case .playRectangle:
            return "􀊙"
        case .playRectangleFill:
            return "􀊚"
        case .playSquareStack:
            return "􁟼"
        case .playSquareStackFill:
            return "􁟽"
        case .playSlash:
            return "􀪅"
        case .playSlashFill:
            return "􀪆"
        case .pause:
            return "􀊅"
        case .pauseFill:
            return "􀊆"
        case .pauseCircle:
            return "􀊗"
        case .pauseCircleFill:
            return "􀊘"
        case .pauseRectangle:
            return "􀊛"
        case .pauseRectangleFill:
            return "􀊜"
        case .stop:
            return "􀛶"
        case .stopFill:
            return "􀛷"
        case .stopCircle:
            return "􀜪"
        case .stopCircleFill:
            return "􀜫"
        case .recordCircle:
            return "􀢙"
        case .recordCircleFill:
            return "􀢚"
        case .playpause:
            return "􀊇"
        case .playpauseFill:
            return "􀊈"
        case .playpauseCircle:
            return "􁚞"
        case .playpauseCircleFill:
            return "􁚟"
        case .backward:
            return "􀊉"
        case .backwardFill:
            return "􀊊"
        case .backwardCircle:
            return "􀺃"
        case .backwardCircleFill:
            return "􀺄"
        case .forward:
            return "􀊋"
        case .forwardFill:
            return "􀊌"
        case .forwardCircle:
            return "􀺅"
        case .forwardCircleFill:
            return "􀺆"
        case .backwardEnd:
            return "􀊍"
        case .backwardEndFill:
            return "􀊎"
        case .backwardEndCircle:
            return "􁋮"
        case .backwardEndCircleFill:
            return "􁋯"
        case .forwardEnd:
            return "􀊏"
        case .forwardEndFill:
            return "􀊐"
        case .forwardEndCircle:
            return "􁋰"
        case .forwardEndCircleFill:
            return "􁋱"
        case .backwardEndAlt:
            return "􀊑"
        case .backwardEndAltFill:
            return "􀊒"
        case .forwardEndAlt:
            return "􀊓"
        case .forwardEndAltFill:
            return "􀊔"
        case .backwardFrame:
            return "􀩨"
        case .backwardFrameFill:
            return "􀩩"
        case .forwardFrame:
            return "􀩪"
        case .forwardFrameFill:
            return "􀩫"
        case .shuffle:
            return "􀊝"
        case .shuffleCircle:
            return "􀵉"
        case .shuffleCircleFill:
            return "􀵊"
        case ._repeat:
            return "􀊞"
        case .repeatCircle:
            return "􀵋"
        case .repeatCircleFill:
            return "􀵌"
        case .repeat1:
            return "􀊟"
        case .repeat1Circle:
            return "􀵍"
        case .repeat1CircleFill:
            return "􀵎"
        case .infinity:
            return "􀯠"
        case .infinityCircle:
            return "􀵏"
        case .infinityCircleFill:
            return "􀵐"
        case .arrowRectanglePath:
            return "􀣁"
        case .goForward:
            return "􀍿"
        case .goBackward:
            return "􀎀"
        case .goForward5:
            return "􀶰"
        case .goBackward5:
            return "􀶱"
        case .goForward10:
            return "􀎁"
        case .goBackward10:
            return "􀎂"
        case .goForward15:
            return "􀎃"
        case .goBackward15:
            return "􀎄"
        case .goForward30:
            return "􀎅"
        case .goBackward30:
            return "􀎆"
        case .goForward45:
            return "􀎇"
        case .goBackward45:
            return "􀎈"
        case .goForward60:
            return "􀎉"
        case .goBackward60:
            return "􀎊"
        case .goForward75:
            return "􀘤"
        case .goBackward75:
            return "􀘥"
        case .goForward90:
            return "􀘦"
        case .goBackward90:
            return "􀘧"
        case .goForwardPlus:
            return "􀘨"
        case .goBackwardMinus:
            return "􀘩"
        case .textInsert:
            return "􀋽"
        case .textAppend:
            return "􀋾"
        case .textLineFirstAndArrowTriangleForward:
            return "􁘿"
        case .textLineLastAndArrowTriangleForward:
            return "􁙀"
        }
    }
}
