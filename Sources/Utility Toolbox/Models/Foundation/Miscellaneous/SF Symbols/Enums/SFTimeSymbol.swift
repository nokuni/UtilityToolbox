//
//  SFTimeSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 15/05/23.
//

import Foundation

public enum SFTimeSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀐫
    case clock = "clock"
    /// 􀐬
    case clockFill = "clock.fill"
    /// 􁆸
    case clockCircle = "clock.circle"
    /// 􁆹
    case clockCircleFill = "clock.circle.fill"
    /// 􁙜
    case clockBadge = "clock.badge"
    /// 􁙝
    case clockBadgeFill = "clock.badge.fill"
    /// 􀹴
    case clockBadgeCheckMark = "clock.badge.checkmark"
    /// 􀹵
    case clockBadgeCheckMarkFill = "clock.badge.checkmark.fill"
    /// 􁜒
    case clockBadgeXMark = "clock.badge.xmark"
    /// 􁜓
    case clockBadgeXMarkFill = "clock.badge.xmark.fill"
    /// 􁜱
    case clockBadgeQuestionMark = "clock.badge.questionmark"
    /// 􁜲
    case clockBadgeQuestionMarkFill = "clock.badge.questionmark.fill"
    /// 􀹶
    case clockBadgeExclamationMark = "clock.badge.exclamationmark"
    /// 􀹷
    case clockBadgeExclamationMarkFill = "clock.badge.exclamationmark.fill"
    /// 􀡑
    case deskclock = "deskclock"
    /// 􀡒
    case deskclockFill = "deskclock.fill"
    /// 􀐭
    case alarm = "alarm"
    /// 􀐮
    case alarmFill = "alarmFill"
    /// 􁗀
    case alarmWavesLeftAndRight = "alarm.waves.left.and.right"
    /// 􁗁
    case alarmWavesLeftAndRightFill = "alarm.waves.left.and.right.fill"
    /// 􀐯
    case stopwatch = "stopwatch"
    /// 􀐰
    case stopwatchFill = "stopwatch.fill"
    /// 􀐱
    case timer = "timer"
    /// 􁙅
    case timerCircle = "timer.circle"
    /// 􁙆
    case timerCircleFill = "timer.circle.fill"
    /// 􀭄
    case timerSquare = "timer.square"
    /// 􀣔
    case clockArrowCirclePath = "clock.arrow.circlepath"
    /// 􀯛
    case clockArrow2CirclePath = "clock.arrow.2.circlepath"
    /// 􀖇
    case hourglass = "hourglass"
    /// 􁇛
    case hourglassCircle = "hourglass.circle"
    /// 􁇜
    case hourglassCircleFill = "hourglass.circle.fill"
    /// 􀣬
    case hourglassBadgePlus = "hourglass.badge.plus"
    /// 􀖈
    case hourglassBottomHalfFilled = "hourglass.bottomhalf.filled"
    /// 􀖉
    case hourglassTopHalfFilled = "hourglass.tophalf.filled"
    
    var symbol: String {
        switch self {
        case .clock: return "􀐫"
        case .clockFill: return "􀐬"
        case .clockCircle: return "􁆸"
        case .clockCircleFill: return "􁆹"
        case .clockBadge: return "􁙜"
        case .clockBadgeFill: return "􁙝"
        case .clockBadgeCheckMark: return "􀹴"
        case .clockBadgeCheckMarkFill: return "􀹵"
        case .clockBadgeXMark: return "􁜒"
        case .clockBadgeXMarkFill: return "􁜓"
        case .clockBadgeQuestionMark: return "􁜱"
        case .clockBadgeQuestionMarkFill: return "􁜲"
        case .clockBadgeExclamationMark: return "􀹶"
        case .clockBadgeExclamationMarkFill: return "􀹷"
        case .deskclock: return "􀡑"
        case .deskclockFill: return "􀡒"
        case .alarm: return "􀐭"
        case .alarmFill: return "􀐮"
        case .alarmWavesLeftAndRight: return "􁗀"
        case .alarmWavesLeftAndRightFill: return "􁗁"
        case .stopwatch: return "􀐯"
        case .stopwatchFill: return "􀐰"
        case .timer: return "􀐱"
        case .timerCircle: return "􁙅"
        case .timerCircleFill: return "􁙆"
        case .timerSquare: return "􀭄"
        case .clockArrowCirclePath: return "􀣔"
        case .clockArrow2CirclePath: return "􀯛"
        case .hourglass: return "􀖇"
        case .hourglassCircle: return "􁇛"
        case .hourglassCircleFill: return "􁇜"
        case .hourglassBadgePlus: return "􀣬"
        case .hourglassBottomHalfFilled: return "􀖈"
        case .hourglassTopHalfFilled: return "􀖉"
        }
    }
}
