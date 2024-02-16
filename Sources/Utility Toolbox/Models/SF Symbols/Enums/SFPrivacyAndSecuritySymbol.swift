//
//  SFPrivacyAndSecuritySymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 15/05/23.
//

import Foundation

public enum SFPrivacyAndSecuritySymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀢍
    case lockDoc = "lock.doc"
    /// 􀢎
    case lockDocFill = "lock.doc.fill"
    /// 􁅏
    case networkBadgeShieldHalfFilled = "network.badge.shield.half.filled"
    /// 􀴨
    case handRaisedSquareOnSquare = "hand.raised.square.on.square"
    /// 􀴩
    case handRaisedSquareOnSquareFill = "hand.raised.square.on.square.fill"
    /// 􀇾
    case exclamationMarkTriangle = "exclamationmark.triangle"
    /// 􀇿
    case exclamationMarkTriangleFill = "exclamationmark.triangle.fill"
    /// 􀟆
    case seal = "seal"
    /// 􀟇
    case sealFill = "seal.fill"
    /// 􀇺
    case checkMarkSeal = "checkmark.seal"
    /// 􀇻
    case checkMarkSealFill = "checkmark.seal.fill"
    /// 􀇼
    case xMarkSeal = "xmark.seal"
    /// 􀇽
    case xMarkSealFill = "xmark.seal.fill"
    /// 􀙦
    case shield = "shield"
    /// 􀙧
    case shieldFill = "shield.fill"
    /// 􀙨
    case shieldLeftHalfFilled = "shield.lefthalf.filled"
    /// 􀿮
    case shieldRightHalfFilled = "shield.righthalf.filled"
    /// 􀞡
    case shieldSlash = "shield.slash"
    /// 􀞢
    case shieldSlashFill = "shield.slash.fill"
    /// 􀲊
    case shieldLeftHalfFilledSlash = "shield.lefthalf.filled.slash"
    /// 􁙾
    case firewall = "firewall"
    /// 􁙿
    case firewallFill = "firewall.fill"
    /// 􀢓 This symbol may not be modified and may only be used to refer to Apple's iCloud service.
    case checkMarkICloud = "checkmark.icloud"
    /// 􀢔 This symbol may not be modified and may only be used to refer to Apple's iCloud service.
    case checkMarkICloudFill = "checkmark.icloud.fill"
    /// 􀙵 This symbol may not be modified and may only be used to refer to Apple's iCloud service.
    case lockICloud = "lock.icloud"
    /// 􀙶 This symbol may not be modified and may only be used to refer to Apple's iCloud service.
    case lockICloudFill = "lock.icloud.fill"
    /// 􀢕 This symbol may not be modified and may only be used to refer to Apple's iCloud service.
    case keyICloud = "key.icloud"
    /// 􀢖 This symbol may not be modified and may only be used to refer to Apple's iCloud service.
    case keyICloudFill = "key.icloud.fill"
    /// 􁐕 This symbol may not be modified and may only be used to refer to Apple's Messages app.
    case checkMarkMessage = "checkmark.message"
    /// 􁐖 This symbol may not be modified and may only be used to refer to Apple's Messages app.
    case checkMarkMessageFill = "checkmark.message.fill"
    /// 􀌬
    case exclamationMarkBubble = "exclamationmark.bubble"
    /// 􀌭
    case exclamationMarkBubbleFill = "exclamationmark.bubble.fill"
    /// 􁆶
    case exclamationMarkBubbleCircle = "exclamationmark.bubble.circle"
    /// 􁆷
    case exclamationMarkBubbleCircleFill = "exclamationmark.bubble.circle.fill"
    /// 􁃒
    case bubbleLeftAndExclamationMarkBubbleRight = "bubble.left.and.exclamationmark.bubble.right"
    /// 􁃓
    case bubbleLeftAndExclamationMarkBubbleRightFill = "bubble.left.and.exclamationmark.bubble.right.fill"
    /// 􀫙
    case envelopeBadgeShieldHalfFilled = "envelope.badge.shield.half.filled"
    /// 􀫚
    case envelopeBadgeShieldHalfFilledFill = "envelope.badge.shield.half.filled.fill"
    /// 􀍼
    case noSign = "nosign"
    /// 􁝊
    case noSignApp = "nosign.app"
    /// 􁝋
    case noSignAppFill = "nosign.app.fill"
    /// 􀎠
    case lock = "lock"
    /// 􀎡
    case lockFill = "lock.fill"
    /// 􀒲
    case lockCircle = "lock.circle"
    /// 􀒳
    case lockCircleFill = "lock.circle.fill"
    /// 􀢵
    case lockSquare = "lock.square"
    /// 􀢶
    case lockSquareFill = "lock.square.fill"
    /// 􀡜
    case lockSquareStack = "lock.square.stack"
    /// 􀡝
    case lockSquareStackFill = "lock.square.stack.fill"
    /// 􀢈
    case lockRectangle = "lock.rectangle"
    /// 􀢉
    case lockRectangleFill = "lock.rectangle.fill"
    /// 􀢱
    case lockRectangleStack = "lock.rectangle.stack"
    /// 􀢲
    case lockRectangleStackFill = "lock.rectangle.stack.fill"
    /// 􀢳
    case lockRectangleOnRectangle = "lock.rectangle.on.rectangle"
    /// 􀢴
    case lockRectangleOnRectangleFill = "lock.rectangle.on.rectangle.fill"
    /// 􀞙
    case lockShield = "lock.shield"
    /// 􀞚
    case lockShieldFill = "lock.shield.fill"
    /// 􀎢
    case lockSlash = "lock.slash"
    /// 􀎣
    case lockSlashFill = "lock.slash.fill"
    /// 􁙍
    case lockTriangleBadgeExclamationMark = "lock.trianglebadge.exclamationmark"
    /// 􁙎
    case lockTriangleBadgeExclamationMarkFill = "lock.trianglebadge.exclamationmark.fill"
    /// 􁙥
    case exclamationMarkLock = "exclamationmark.lock"
    /// 􁙦
    case exclamationMarkLockFill = "exclamationmark.lock.fill"
    /// 􀎤
    case lockOpen = "lock.open"
    /// 􀎥
    case lockOpenFill = "lock.open.fill"
    /// 􁜗
    case lockOpenTriangleBadgeExclamationMark = "lock.open.trianglebadge.exclamationmark"
    /// 􁜘
    case lockOpenTriangleBadgeExclamationMarkFill = "lock.open.trianglebadge.exclamationmark.fill"
    /// 􀑙
    case lockRotation = "lock.rotation"
    /// 􀑚
    case lockOpenRotation = "lock.open.rotation"
    /// 􀟕
    case key = "key"
    /// 􀟖
    case keyFill = "key.fill"
    /// 􁠯
    case keyRadioWavesForward = "key.radiowaves.forward"
    /// 􁠰
    case keyRadioWavesForwardFill = "key.radiowaves.forward.fill"
    /// 􁠱
    case keyHorizontal = "key.horizontal"
    /// 􁠲
    case keyHorizontalFill = "key.horizontal.fill"
    /// 􁠳
    case questionMarkKeyFilled = "questionmark.key.filled"
    /// 􀎽 This symbol may not be modified and may only be used to refer to Apple's Face ID feature.
    case faceID = "faceid"
    /// 􀼑
    case lockDisplay = "lock.display"
    /// 􀼜
    case lockOpenDisplay = "lock.open.display"
    /// 􀼒
    case lockDesktopComputer = "lock.desktopcomputer"
    /// 􀼝
    case lockOpenDesktopComputer = "lock.open.desktopcomputer"
    /// 􀼓
    case lockLaptopComputer = "lock.laptopcomputer"
    /// 􀼞
    case lockOpenLaptopComputer = "lock.open.laptopcomputer"
    /// 􀼔
    case lockIphone = "lock.iphone"
    /// 􀼟
    case lockOpenIphone = "lock.open.iphone"
    /// 􀼕
    case lockIpad = "lock.ipad"
    /// 􀼠
    case lockOpenIpad = "lock.open.ipad"
    /// 􀵅 This symbol may not be modified and may only be used to refer to Apple Watch.
    case lockAppleWatch = "lock.applewatch"
    /// 􀼡 This symbol may not be modified and may only be used to refer to Apple Watch.
    case lockOpenAppleWatch = "lock.open.applewatch"
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
    /// 􀉻
    case handRaised = "hand.raised"
    /// 􀉼
    case handRaisedFill = "hand.raised.fill"
    /// 􀷊
    case handRaisedCircle = "hand.raised.circle"
    /// 􀷋
    case handRaisedCircleFill = "hand.raised.circle.fill"
    /// 􀽓
    case handRaisedSquare = "hand.raised.square"
    /// 􀽔
    case handRaisedSquareFill = "hand.raised.square.fill"
    /// 􁝌
    case handRaisedApp = "hand.raised.app"
    /// 􁝍
    case handRaisedAppFill = "hand.raised.app.fill"
    /// 􀉽
    case handRaisedSlash = "hand.raised.slash"
    /// 􀉾
    case handRaisedSlashFill = "hand.raised.slash.fill"
    /// 􁎕
    case keyViewFinder = "key.viewfinder"
    /// 􀟒 This symbol may not be modified and may only be used to refer to Apple's Touch ID feature.
    case touchID = "touchid"
    /// 􀞟
    case exclamationMarkShield = "exclamationmark.shield"
    /// 􀞠
    case exclamationMarkShieldFill = "exclamationmark.shield.fill"
    /// 􀞝
    case xMarkShield = "xmark.shield"
    /// 􀞞
    case xMarkShieldFill = "xmark.shield.fill"
    /// 􀆅
    case checkMark = "checkmark"
    /// 􀁢
    case checkMarkCircle = "checkmark.circle"
    /// 􀁣
    case checkMarkCircleFill = "checkmark.circle.fill"
    /// 􁜞
    case checkMarkCircleBadgeQuestionMark = "checkmark.circle.badge.questionmark"
    /// 􁜟
    case checkMarkCircleBadgeQuestionMarkFill = "checkmark.circle.badge.questionmark.fill"
    /// 􁜢
    case checkMarkCircleBadgeXMark = "checkmark.circle.badge.xmark"
    /// 􁜣
    case checkMarkCircleBadgeXMarkFill = "checkmark.circle.badge.xmark.fill"
    /// 􁃎
    case checkMarkCircleTriangleBadgeExclamationMark = "checkmark.circle.trianglebadge.exclamationmark"
    /// 􀃲
    case checkMarkSquare = "checkmark.square"
    /// 􀃳
    case checkMarkSquareFill = "checkmark.square.fill"
    /// 􀏋
    case checkMarkRectangle = "checkmark.rectangle"
    /// 􀏌
    case checkMarkRectangleFill = "checkmark.rectangle.fill"
    /// 􀡮
    case checkMarkRectanglePortrait = "checkmark.rectangle.portrait"
    /// 􀡯
    case checkMarkRectanglePortraitFill = "checkmark.rectangle.portrait.fill"
    /// 􁁚
    case checkMarkDiamond = "checkmark.diamond"
    /// 􁁛
    case checkMarkDiamondFill = "checkmark.diamond.fill"
    /// 􀞛
    case checkMarkShield = "checkmark.shield"
    /// 􀞜
    case checkMarkShieldFill = "checkmark.shield.fill"
    
    public var symbol: String {
        switch self {
        case .lockDoc: return "􀢍"
        case .lockDocFill: return "􀢎"
        case .networkBadgeShieldHalfFilled: return "􁅏"
        case .handRaisedSquareOnSquare: return "􀴨"
        case .handRaisedSquareOnSquareFill: return "􀴩"
        case .exclamationMarkTriangle: return "􀇾"
        case .exclamationMarkTriangleFill: return "􀇿"
        case .seal: return "􀟆"
        case .sealFill: return "􀟇"
        case .checkMarkSeal: return "􀇺"
        case .checkMarkSealFill: return "􀇻"
        case .xMarkSeal: return "􀇼"
        case .xMarkSealFill: return "􀇽"
        case .shield: return "􀙦"
        case .shieldFill: return "􀙧"
        case .shieldLeftHalfFilled: return "􀙨"
        case .shieldRightHalfFilled: return "􀿮"
        case .shieldSlash: return "􀞡"
        case .shieldSlashFill: return "􀞢"
        case .shieldLeftHalfFilledSlash: return "􀲊"
        case .firewall: return "􁙾"
        case .firewallFill: return "􁙿"
        case .checkMarkICloud: return "􀢓"
        case .checkMarkICloudFill: return "􀢔"
        case .lockICloud: return "􀙵"
        case .lockICloudFill: return "􀙶"
        case .keyICloud: return "􀢕"
        case .keyICloudFill: return "􀢖"
        case .checkMarkMessage: return "􁐕"
        case .checkMarkMessageFill: return "􁐖"
        case .exclamationMarkBubble: return "􀌬"
        case .exclamationMarkBubbleFill: return "􀌭"
        case .exclamationMarkBubbleCircle: return "􁆶"
        case .exclamationMarkBubbleCircleFill: return "􁆷"
        case .bubbleLeftAndExclamationMarkBubbleRight: return "􁃒"
        case .bubbleLeftAndExclamationMarkBubbleRightFill: return "􁃓"
        case .envelopeBadgeShieldHalfFilled: return "􀫙"
        case .envelopeBadgeShieldHalfFilledFill: return "􀫚"
        case .noSign: return "􀍼"
        case .noSignApp: return "􁝊"
        case .noSignAppFill: return "􁝋"
        case .lock: return "􀎠"
        case .lockFill: return "􀎡"
        case .lockCircle: return "􀒲"
        case .lockCircleFill: return "􀒳"
        case .lockSquare: return "􀢵"
        case .lockSquareFill: return "􀢶"
        case .lockSquareStack: return "􀡜"
        case .lockSquareStackFill: return "􀡝"
        case .lockRectangle: return "􀢈"
        case .lockRectangleFill: return "􀢉"
        case .lockRectangleStack: return "􀢱"
        case .lockRectangleStackFill: return "􀢲"
        case .lockRectangleOnRectangle: return "􀢳"
        case .lockRectangleOnRectangleFill: return "􀢴"
        case .lockShield: return "􀞙"
        case .lockShieldFill: return "􀞚"
        case .lockSlash: return "􀎢"
        case .lockSlashFill: return "􀎣"
        case .lockTriangleBadgeExclamationMark: return "􁙍"
        case .lockTriangleBadgeExclamationMarkFill: return "􁙎"
        case .exclamationMarkLock: return "􁙥"
        case .exclamationMarkLockFill: return "􁙦"
        case .lockOpen: return "􀎤"
        case .lockOpenFill: return "􀎥"
        case .lockOpenTriangleBadgeExclamationMark: return "􁜗"
        case .lockOpenTriangleBadgeExclamationMarkFill: return "􁜘"
        case .lockRotation: return "􀑙"
        case .lockOpenRotation: return "􀑚"
        case .key: return "􀟕"
        case .keyFill: return "􀟖"
        case .keyRadioWavesForward: return "􁠯"
        case .keyRadioWavesForwardFill: return "􁠰"
        case .keyHorizontal: return "􁠱"
        case .keyHorizontalFill: return "􁠲"
        case .questionMarkKeyFilled: return "􁠳"
        case .faceID: return "􀎽"
        case .lockDisplay: return "􀼑"
        case .lockOpenDisplay: return "􀼜"
        case .lockDesktopComputer: return "􀼒"
        case .lockOpenDesktopComputer: return "􀼝"
        case .lockLaptopComputer: return "􀼓"
        case .lockOpenLaptopComputer: return "􀼞"
        case .lockIphone: return "􀼔"
        case .lockOpenIphone: return "􀼟"
        case .lockIpad: return "􀼕"
        case .lockOpenIpad: return "􀼠"
        case .lockAppleWatch: return "􀵅"
        case .lockOpenAppleWatch: return "􀼡"
        case .eye: return "􀋭"
        case .eyeFill: return "􀋮"
        case .eyeCircle: return "􀛿"
        case .eyeCircleFill: return "􀜀"
        case .eyeSquare: return "􀽇"
        case .eyeSquareFill: return "􀽈"
        case .eyeSlash: return "􀋯"
        case .eyeSlashFill: return "􀋰"
        case .eyeSlashCircle: return "􀜁"
        case .eyeSlashCircleFill: return "􀜂"
        case .eyeTrianglebadgeExclamationMark: return "􁂔"
        case .eyeTrianglebadgeExclamationMarkFill: return "􁂕"
        case .handRaised: return "􀉻"
        case .handRaisedFill: return "􀉼"
        case .handRaisedCircle: return "􀷊"
        case .handRaisedCircleFill: return "􀷋"
        case .handRaisedSquare: return "􀽓"
        case .handRaisedSquareFill: return "􀽔"
        case .handRaisedApp: return "􁝌"
        case .handRaisedAppFill: return "􁝍"
        case .handRaisedSlash: return "􀉽"
        case .handRaisedSlashFill: return "􀉾"
        case .keyViewFinder: return "􁎕"
        case .touchID: return "􀟒"
        case .exclamationMarkShield: return "􀞟"
        case .exclamationMarkShieldFill: return "􀞠"
        case .xMarkShield: return "􀞝"
        case .xMarkShieldFill: return "􀞞"
        case .checkMark: return "􀆅"
        case .checkMarkCircle: return "􀁢"
        case .checkMarkCircleFill: return "􀁣"
        case .checkMarkCircleBadgeQuestionMark: return "􁜞"
        case .checkMarkCircleBadgeQuestionMarkFill: return "􁜟"
        case .checkMarkCircleBadgeXMark: return "􁜢"
        case .checkMarkCircleBadgeXMarkFill: return "􁜣"
        case .checkMarkCircleTriangleBadgeExclamationMark: return "􁃎"
        case .checkMarkSquare: return "􀃲"
        case .checkMarkSquareFill: return "􀃳"
        case .checkMarkRectangle: return "􀏋"
        case .checkMarkRectangleFill: return "􀏌"
        case .checkMarkRectanglePortrait: return "􀡮"
        case .checkMarkRectanglePortraitFill: return "􀡯"
        case .checkMarkDiamond: return "􁁚"
        case .checkMarkDiamondFill: return "􁁛"
        case .checkMarkShield: return "􀞛"
        case .checkMarkShieldFill: return "􀞜"
        }
    }
}
