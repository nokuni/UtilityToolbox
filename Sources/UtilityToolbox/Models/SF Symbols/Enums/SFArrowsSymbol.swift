//
//  SFArrowsSymbol.swift
//
//
//  Created by Maertens Yann-Christophe on 19/05/23.
//

import Foundation

public enum SFArrowsSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􁉄
    case arrowshapeLeft = "arrowshape.left"
    /// 􁉅
    case arrowshapeLeftFill = "arrowshape.left.fill"
    /// 􁉂
    case arrowshapeRight = "arrowshape.right"
    /// 􁉃
    case arrowshapeRightFill = "arrowshape.right.fill"
    /// 􁉈
    case arrowshapeBackward = "arrowshape.backward"
    /// 􁉉
    case arrowshapeBackwardFill = "arrowshape.backward.fill"
    /// 􁉆
    case arrowshapeForward = "arrowshape.forward"
    /// 􁉇
    case arrowshapeForwardFill = "arrowshape.forward.fill"
    /// 􀉌
    case arrowshapeTurnUpLeft = "arrowshape.turn.up.left"
    /// 􀉍
    case arrowshapeTurnUpLeftFill = "arrowshape.turn.up.left.fill"
    /// 􀉎
    case arrowshapeTurnUpLeftCircle = "arrowshape.turn.up.left.circle"
    /// 􀉏
    case arrowshapeTurnUpLeftCircleFill = "arrowshape.turn.up.left.circle.fill"
    /// 􀰚
    case arrowshapeTurnUpBackward = "arrowshape.turn.up.backward"
    /// 􀰛
    case arrowshapeTurnUpBackwardFill = "arrowshape.turn.up.backward.fill"
    /// 􀰜
    case arrowshapeTurnUpBackwardCircle = "arrowshape.turn.up.backward.circle"
    /// 􀰝
    case arrowshapeTurnUpBackwardCircleFill = "arrowshape.turn.up.backward.circle.fill"
    /// 􁎱
    case arrowshapeTurnUpBackwardBadgeClock = "arrowshape.turn.up.backward.badge.clock"
    /// 􁖾
    case arrowshapeTurnUpBackwardBadgeClockFill = "arrowshape.turn.up.backward.badge.clock.fill"
    /// 􀉐
    case arrowshapeTurnUpRight = "arrowshape.turn.up.right"
    /// 􀉑
    case arrowshapeTurnUpRightFill = "arrowshape.turn.up.right.fill"
    /// 􀉒
    case arrowshapeTurnUpRightCircle = "arrowshape.turn.up.right.circle"
    /// 􀉓
    case arrowshapeTurnUpRightCircleFill = "arrowshape.turn.up.right.circle.fill"
    /// 􀰞
    case arrowshapeTurnUpForward = "arrowshape.turn.up.forward"
    /// 􀰟
    case arrowshapeTurnUpForwardFill = "arrowshape.turn.up.forward.fill"
    /// 􀰠
    case arrowshapeTurnUpForwardCircle = "arrowshape.turn.up.forward.circle"
    /// 􀰡
    case arrowshapeTurnUpForwardCircleFill = "arrowshape.turn.up.forward.circle.fill"
    /// 􀉔
    case arrowshapeTurnUpLeft2 = "arrowshape.turn.up.left.2"
    /// 􀉕
    case arrowshapeTurnUpLeft2Fill = "arrowshape.turn.up.left.2.fill"
    /// 􀉖
    case arrowshapeTurnUpLeft2Circle = "arrowshape.turn.up.left.2.circle"
    /// 􀉗
    case arrowshapeTurnUpLeft2CircleFill = "arrowshape.turn.up.left.2.circle.fill"
    /// 􀰢
    case arrowshapeTurnUpBackward2 = "arrowshape.turn.up.backward.2"
    /// 􀰣
    case arrowshapeTurnUpBackward2Fill = "arrowshape.turn.up.backward.2.fill"
    /// 􀰤
    case arrowshapeTurnUpBackward2Circle = "arrowshape.turn.up.backward.2.circle"
    /// 􀰥
    case arrowshapeTurnUpBackward2CircleFill = "arrowshape.turn.up.backward.2.circle.fill"
    /// 􀉘
    case arrowshapeZigzagRight = "arrowshape.zigzag.right"
    /// 􀒐
    case arrowshapeZigzagRightFill = "arrowshape.zigzag.right.fill"
    /// 􀰦
    case arrowshapeZigzagForward = "arrowshape.zigzag.forward"
    /// 􀰧
    case arrowshapeZigzagForwardFill = "arrowshape.zigzag.forward.fill"
    /// 􀉙
    case arrowshapeBounceRight = "arrowshape.bounce.right"
    /// 􀒑
    case arrowshapeBounceRightFill = "arrowshape.bounce.right.fill"
    /// 􀰨
    case arrowshapeBounceForward = "arrowshape.bounce.forward"
    /// 􀰩
    case arrowshapeBounceForwardFill = "arrowshape.bounce.forward.fill"
    /// 􀯴
    case arrowDownApp = "arrow.down.app"
    /// 􀯵
    case arrowDownAppFill = "arrow.down.app.fill"
    /// 􀮵
    case arrowUpForwardApp = "arrow.up.forward.app"
    /// 􀮶
    case arrowUpForwardAppFill = "arrow.up.forward.app.fill"
    /// 􀲕
    case arrowUpHeart = "arrow.up.heart"
    /// 􀲖
    case arrowUpHeartFill = "arrow.up.heart.fill"
    /// 􀲗
    case arrowDownHeart = "arrow.down.heart"
    /// 􀲘
    case arrowDownHeartFill = "arrow.down.heart.fill"
    /// 􀧡
    case arrowClockwiseHeart = "arrow.clockwise.heart"
    /// 􀧢
    case arrowClockwiseHeartFill = "arrow.clockwise.heart.fill"
    /// 􀋑
    case location = "location"
    /// 􀋒
    case locationFill = "location.fill"
    /// 􀋕
    case locationCircle = "location.circle"
    /// 􀋖
    case locationCircleFill = "location.circle.fill"
    /// 􀼻
    case locationSquare = "location.square"
    /// 􀼼
    case locationSquareFill = "location.square.fill"
    /// 􀘬
    case locationSlash = "location.slash"
    /// 􀘭
    case locationSlashFill = "location.slash.fill"
    /// 􁙇
    case locationSlashCircle = "location.slash.circle"
    /// 􁙈
    case locationSlashCircleFill = "location.slash.circle.fill"
    /// 􀋓
    case locationNorth = "location.north"
    /// 􀋔
    case locationNorthFill = "location.north.fill"
    /// 􀷌
    case locationNorthCircle = "location.north.circle"
    /// 􀷍
    case locationNorthCircleFill = "location.north.circle.fill"
    /// 􀋗
    case locationNorthLine = "location.north.line"
    /// 􀋘
    case locationNorthLinefill = "location.north.line.fill"
    /// 􀙜
    case leafArrowTriangleCirclePath = "leaf.arrow.triangle.circlepath"
    /// 􀠉
    case arrowTriangleLeftAndLineVerticalAndArrowTriangleRight = "arrowtriangle.left.and.line.vertical.and.arrowtriangle.right"
    /// 􀟦
    case arrowTriangleLeftAndLineVerticalAndArrowTriangleRightFill = "arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill"
    /// 􀠊
    case arrowTriangleRightAndLineVerticalAndArrowTriangleLeft = "arrowtriangle.right.and.line.vertical.and.arrowtriangle.left"
    /// 􀟧
    case arrowTriangleRightAndLineVerticalAndArrowTriangleLeftFill = "arrowtriangle.right.and.line.vertical.and.arrowtriangle.left.fill"
    /// 􀆉
    case chevronLeft = "chevron.left"
    /// 􀁲
    case chevronLeftCircle = "chevron.left.circle"
    /// 􀁳
    case chevronLeftCircleFill = "chevron.left.circle.fill"
    /// 􀄂
    case chevronLeftSquare = "chevron.left.square"
    /// 􀄃
    case chevronLeftSquareFill = "chevron.left.square.fill"
    /// 􀯶
    case chevronBackward = "chevron.backward"
    /// 􀯷
    case chevronBackwardCircle = "chevron.backward.circle"
    /// 􀯸
    case chevronBackwardCircleFill = "chevron.backward.circle.fill"
    /// 􀯹
    case chevronBackwardSquare = "chevron.backward.square"
    /// 􀯺
    case chevronBackwardSquareFill = "chevron.backward.square.fill"
    /// 􀆊
    case chevronRight = "chevron.right"
    /// 􀁴
    case chevronRightCircle = "chevron.right.circle"
    /// 􀁵
    case chevronRightCircleFill = "chevron.right.circle.fill"
    /// 􀄄
    case chevronRightSquare = "chevron.right.square"
    /// 􀄅
    case chevronRightSquareFill = "chevron.right.square.fill"
    /// 􀯻
    case chevronForward = "chevron.forward"
    /// 􀯼
    case chevronForwardCircle = "chevron.forward.circle"
    /// 􀯽
    case chevronForwardCircleFill = "chevron.forward.circle.fill"
    /// 􀯾
    case chevronForwardSquare = "chevron.forward.square"
    /// 􀯿
    case chevronForwardSquareFill = "chevron.forward.square.fill"
    /// 􀆋
    case chevronLeft2 = "chevron.left.2"
    /// 􀰪
    case chevronBackward2 = "chevron.backward.2"
    /// 􀆌
    case chevronRight2 = "chevron.right.2"
    /// 􀰫
    case chevronForward2 = "chevron.forward.2"
    /// 􀆇
    case chevronUp = "chevron.up"
    /// 􀁮
    case chevronUpCircle = "chevron.up.circle"
    /// 􀁯
    case chevronUpCircleFill = "chevron.up.circle.fill"
    /// 􀃾
    case chevronUpSquare = "chevron.up.square"
    /// 􀃿
    case chevronUpSquareFill = "chevron.up.square.fill"
    /// 􀆈
    case chevronDown = "chevron.down"
    /// 􀁰
    case chevronDownCircle = "chevron.down.circle"
    /// 􀁱
    case chevronDownCircleFill = "chevron.down.circle.fill"
    /// 􀄀
    case chevronDownSquare = "chevron.down.square"
    /// 􀄁
    case chevronDownSquareFill = "chevron.down.square.fill"
    /// 􀆏
    case chevronUpChevronDown = "chevron.up.chevron.down"
    /// 􀆐
    case chevronCompactUp = "chevron.compact.up"
    /// 􀆑
    case chevronCompactDown = "chevron.compact.down"
    /// 􀆒
    case chevronCompactLeft = "chevron.compact.left"
    /// 􀆓
    case chevronCompactRight = "chevron.compact.right"
    /// 􀄪
    case arrowLeft = "arrow.left"
    /// 􀁺
    case arrowLeftCircle = "arrow.left.circle"
    /// 􀁻
    case arrowLeftCircleFill = "arrow.left.circle.fill"
    /// 􀄊
    case arrowLeftSquare = "arrow.left.square"
    /// 􀄋
    case arrowLeftSquareFill = "arrow.left.square.fill"
    /// 􀰌
    case arrowBackward = "arrow.backward"
    /// 􀰍
    case arrowBackwardCircle = "arrow.backward.circle"
    /// 􀰎
    case arrowBackwardCircleFill = "arrow.backward.circle.fill"
    /// 􀰏
    case arrowBackwardSquare = "arrow.backward.square"
    /// 􀰐
    case arrowBackwardSquareFill = "arrow.backward.square.fill"
    /// 􀄫
    case arrowRight = "arrow.right"
    /// 􀁼
    case arrowRightCircle = "arrow.right.circle"
    /// 􀁽
    case arrowRightCircleFill = "arrow.right.circle.fill"
    /// 􀄌
    case arrowRightSquare = "arrow.right.square"
    /// 􀄍
    case arrowRightSquareFill = "arrow.right.square.fill"
    /// 􀰑
    case arrowForward = "arrow.forward"
    /// 􀰒
    case arrowForwardCircle = "arrow.forward.circle"
    /// 􀰓
    case arrowForwardCircleFill = "arrow.forward.circle.fill"
    /// 􀰔
    case arrowForwardSquare = "arrow.forward.square"
    /// 􀰕
    case arrowForwardSquareFill = "arrow.forward.square.fill"
    /// 􀄨
    case arrowUp = "arrow.up"
    /// 􀁶
    case arrowUpCircle = "arrow.up.circle"
    /// 􀁷
    case arrowUpCircleFill = "arrow.up.circle.fill"
    /// 􀄆
    case arrowUpSquare = "arrow.up.square"
    /// 􀄇
    case arrowUpSquareFill = "arrow.up.square.fill"
    /// 􁎳
    case arrowUpCircleBadgeClock = "arrow.up.circle.badge.clock"
    /// 􀄩
    case arrowDown = "arrow.down"
    /// 􀁸
    case arrowDownCircle = "arrow.down.circle"
    /// 􀁹
    case arrowDownCircleFill = "arrow.down.circle.fill"
    /// 􀄈
    case arrowDownSquare = "arrow.down.square"
    /// 􀄉
    case arrowDownSquareFill = "arrow.down.square.fill"
    /// 􀄮
    case arrowUpLeft = "arrow.up.left"
    /// 􀂂
    case arrowUpLeftcircle = "arrow.up.left.circle"
    /// 􀂃
    case arrowUpLeftCircleFill = "arrow.up.left.circle.fill"
    /// 􀄒
    case arrowUpLeftSquare = "arrow.up.left.square"
    /// 􀄓
    case arrowUpLeftSquareFill = "arrow.up.left.square.fill"
    /// 􀰹
    case arrowUpBackward = "arrow.up.backward"
    /// 􀰺
    case arrowUpBackwardCircle = "arrow.up.backward.circle"
    /// 􀰻
    case arrowUpBackwardCircleFill = "arrow.up.backward.circle.fill"
    /// 􀰼
    case arrowUpBackwardSquare = "arrow.up.backward.square"
    /// 􀰽
    case arrowUpBackwardSquareFill = "arrow.up.backward.square.fill"
    /// 􀄯
    case arrowUpRight = "arrow.up.right"
    /// 􀂄
    case arrowUpRightCircle = "arrow.up.right.circle"
    /// 􀂅
    case arrowUpRightCircleFill = "arrow.up.right.circle.fill"
    /// 􀄔
    case arrowUpRightSquare = "arrow.up.right.square"
    /// 􀄕
    case arrowUpRightSquareFill = "arrow.up.right.square.fill"
    /// 􀰾
    case arrowUpForward = "arrow.up.forward"
    /// 􀰿
    case arrowUpForwardCircle = "arrow.up.forward.circle"
    /// 􀱀
    case arrowUpForwardCircleFill = "arrow.up.forward.circle.fill"
    /// 􀱁
    case arrowUpForwardSquare = "arrow.up.forward.square"
    /// 􀱂
    case arrowUpForwardSquareFill = "arrow.up.forward.square.fill"
    /// 􀄰
    case arrowDownLeft = "arrow.down.left"
    /// 􀂆
    case arrowDownLeftCircle = "arrow.down.left.circle"
    /// 􀂇
    case arrowDownLeftCircleFill = "arrow.down.left.circle.fill"
    /// 􀄖
    case arrowDownLeftSquare = "arrow.down.left.square"
    /// 􀄗
    case arrowDownLeftSquareFill = "arrow.down.left.square.fill"
    /// 􀱃
    case arrowDownBackward = "arrow.down.backward"
    /// 􀱄
    case arrowDownBackwardCircle = "arrow.down.backward.circle"
    /// 􀱅
    case arrowDownBackwardCircleFill = "arrow.down.backward.circle.fill"
    /// 􀱆
    case arrowDownBackwardSquare = "arrow.down.backward.square"
    /// 􀱇
    case arrowDownBackwardSquareFill = "arrow.down.backward.square.fill"
    /// 􀄱
    case arrowDownRight = "arrow.down.right"
    /// 􀂈
    case arrowDownRightCircle = "arrow.down.right.circle"
    /// 􀂉
    case arrowDownRightCircleFill = "arrow.down.right.circle.fill"
    /// 􀄘
    case arrowDownRightSquare = "arrow.down.right.square"
    /// 􀄙
    case arrowDownRightSquareFill = "arrow.down.right.square.fill"
    /// 􀱈
    case arrowDownForward = "arrow.down.forward"
    /// 􀱉
    case arrowDownForwardCircle = "arrow.down.forward.circle"
    /// 􀱊
    case arrowDownForwardCircleFill = "arrow.down.forward.circle.fill"
    /// 􀱋
    case arrowDownForwardSquare = "arrow.down.forward.square"
    /// 􀱌
    case arrowDownForwardSquareFill = "arrow.down.forward.square.fill"
    /// 􀄭
    case arrowLeftArrowRight = "arrow.left.arrow.right"
    /// 􀂀
    case arrowLeftArrowRightCircle = "arrow.left.arrow.right.circle"
    /// 􀂁
    case arrowLeftArrowRightCircleFill = "arrow.left.arrow.right.circle.fill"
    /// 􀄐
    case arrowLeftArrowRightSquare = "arrow.left.arrow.right.square"
    /// 􀄑
    case arrowLeftArrowRightSquareFill = "arrow.left.arrow.right.square.fill"
    /// 􀄬
    case arrowUpArrowDown = "arrow.up.arrow.down"
    /// 􀁾
    case arrowUpArrowDownCircle = "arrow.up.arrow.down.circle"
    /// 􀁿
    case arrowUpArrowDownCircleFill = "arrow.up.arrow.down.circle.fill"
    /// 􀄎
    case arrowupArrowDownSquare = "arrow.up.arrow.down.square"
    /// 􀄏
    case arrowupArrowDownSquareFill = "arrow.up.arrow.down.square.fill"
    /// 􀄴
    case arrowTurnDownLeft = "arrow.turn.down.left"
    /// 􀄸
    case arrowTurnUpLeft = "arrow.turn.up.left"
    /// 􀄵
    case arrowTurnDownRight = "arrow.turn.down.right"
    /// 􀄹
    case arrowTurnUpRight = "arrow.turn.up.right"
    /// 􀄲
    case arrowTurnRightUp = "arrow.turn.right.up"
    /// 􀄶
    case arrowTurnLeftUp = "arrow.turn.left.up"
    /// 􀄳
    case arrowTurnRightDown = "arrow.turn.right.down"
    /// 􀄷
    case arrowTurnLeftDown = "arrow.turn.left.down"
    /// 􀄼
    case arrowUturnLeft = "arrow.uturn.left"
    /// 􀂎
    case arrowUturnLeftCircle = "arrow.uturn.left.circle"
    /// 􀂏
    case arrowUturnLeftCircleFill = "arrow.uturn.left.circle.fill"
    /// 􀞸
    case arrowUturnLeftCircleBadgeEllipsis = "arrow.uturn.left.circle.badge.ellipsis"
    /// 􀄞
    case arrowUturnLeftSquare = "arrow.uturn.left.square"
    /// 􀄟
    case arrowUturnLeftSquareFill = "arrow.uturn.left.square.fill"
    /// 􀱍
    case arrowUturnBackward = "case arrow.uturn.backward"
    /// 􀱎
    case arrowUturnBackwardCircle = "arrow.uturn.backward.circle"
    /// 􀱏
    case arrowUturnBackwardCircleFill = "arrow.uturn.backward.circle.fill"
    /// 􀱐
    case arrowUturnBackwardCircleBadgeEllipsis = "arrow.uturn.backward.circle.badge.ellipsis"
    /// 􀱑
    case arrowUturnbackwardSquare = "arrow.uturn.backward.square"
    /// 􀱒
    case arrowUturnBackwardSquareFill = "arrow.uturn.backward.square.fill"
    /// 􀄽
    case arrowUturnRight = "arrow.uturn.right"
    /// 􀂐
    case arrowUturnRightCircle = "arrow.uturn.right.circle"
    /// 􀂑
    case arrowUturnRightCircleFill = "arrow.uturn.right.circle.fill"
    /// 􀄠
    case arrowUturnRightSquare = "arrow.uturn.right.square"
    /// 􀄡
    case arrowUturnRightSquareFill = "arrow.uturn.right.square.fill"
    /// 􀱓
    case arrowUturnForward = "arrow.uturn.forward"
    /// 􀱔
    case arrowUturnForwardCircle = "arrow.uturn.forward.circle"
    /// 􀱕
    case arrowUturnForwardCircleFill = "arrow.uturn.forward.circle.fill"
    /// 􀱖
    case arrowUturnForwardSquare = "arrow.uturn.forward.square"
    /// 􀱗
    case arrowUturnForwardSquareFill = "arrow.uturn.forward.square.fill"
    /// 􀄺
    case arrowUturnUp = "arrow.uturn.up"
    /// 􀂊
    case arrowUturnUpCircle = "arrow.uturn.up.circle"
    /// 􀂋
    case arrowUturnUpCircleFill = "arrow.uturn.up.circle.fill"
    /// 􀄚
    case arrowUturnUpSquare = "arrow.uturn.up.square"
    /// 􀄛
    case arrowUturnUpSquareFill = "arrow.uturn.up.square.fill"
    /// 􀄻
    case arrowUturnDown = "arrow.uturn.down"
    /// 􀂌
    case arrowUturnDownCircle = "arrow.uturn.down.circle"
    /// 􀂍
    case arrowUturnDownCircleFill = "arrow.uturn.down.circle.fill"
    /// 􀄜
    case arrowUturnDownSquare = "arrow.uturn.down.square"
    /// 􀄝
    case arrowUturnDownSquareFill = "arrow.uturn.down.square.fill"
    /// 􀧐
    case arrowUpAndDownAndArrowLeftAndRight = "arrow.up.and.down.and.arrow.left.and.right"
    /// 􀬑
    case arrowUpLeftAndDownRightAndArrowUpRightAndDownLeft = "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left"
    /// 􀄾
    case arrowLeftAndRight = "arrow.left.and.right"
    /// 􀑾
    case arrowLeftAndRightCircle = "arrow.left.and.right.circle"
    /// 􀑿
    case arrowLeftAndRightCircleFill = "arrow.left.and.right.circle.fill"
    /// 􀒀
    case arrowLeftAndRightSquare = "arrow.left.and.right.square"
    /// 􀒁
    case arrowLeftAndRightSquareFill = "arrow.left.and.right.square.fill"
    /// 􀑹
    case arrowUpAndDown = "arrow.up.and.down"
    /// 􀑺
    case arrowUpAndDownCircle = "arrow.up.and.down.circle"
    /// 􀑻
    case arrowUpAndDownCircleFill = "arrow.up.and.down.circle.fill"
    /// 􀑼
    case arrowUpAndDownSquare = "arrow.up.and.down.square"
    /// 􀑽
    case arrowUpAndDownSquareFill = "arrow.up.and.down.square.fill"
    /// 􀄿
    case arrowUpToLine = "arrow.up.to.line"
    /// 􀅃
    case arrowUpToLineCompact = "arrow.up.to.line.compact"
    /// 􀓆
    case arrowUpToLineCircle = "arrow.up.to.line.circle"
    /// 􀓇
    case arrowUpToLineCircleFill = "arrow.up.to.line.circle.fill"
    /// 􀅀
    case arrowDownToLine = "arrow.down.to.line"
    /// 􀅄
    case arrowDownToLineCompact = "arrow.down.to.line.compact"
    /// 􀓈
    case arrowDownToLineCircle = "arrow.down.to.line.circle"
    /// 􀓉
    case arrowDownToLineCircleFill = "arrow.down.to.line.circle.fill"
    /// 􀅁
    case arrowLeftToLine = "arrow.left.to.line"
    /// 􀅅
    case arrowLeftToLineCompact = "arrow.left.to.line.compact"
    /// 􀓊
    case arrowLeftToLineCircle = "arrow.left.to.line.circle"
    /// 􀓋
    case arrowLeftToLineCircleFill = "arrow.left.to.line.circle.fill"
    /// 􁂊
    case arrowBackwardToLine = "arrow.backward.to.line"
    /// 􁂌
    case arrowBackwardToLineCircle = "arrow.backward.to.line.circle"
    /// 􁂍
    case arrowBackwardToLineCircleFill = "arrow.backward.to.line.circle.fill"
    /// 􀅂
    case arrowRightToLine = "arrow.right.to.line"
    /// 􀅆
    case arrowRightToLineCompact = "arrow.right.to.line.compact"
    /// 􀓌
    case arrowRightToLineCircle = "arrow.right.to.line.circle"
    /// 􀓍
    case arrowRightToLineCircleFill = "arrow.right.to.line.circle.fill"
    /// 􁂎
    case arrowForwardToLine = "arrow.forward.to.line"
    /// 􁂐
    case arrowForwardToLineCircle = "arrow.forward.to.line.circle"
    /// 􁂑
    case arrowForwardToLineCircleFill = "arrow.forward.to.line.circle.fill"
    /// 􀚋
    case arrowLeftAndLineVerticalAndArrowRight = "arrow.left.and.line.vertical.and.arrow.right"
    /// 􀚌
    case arrowRightAndLineVerticalAndArrowLeft = "arrow.right.and.line.vertical.and.arrow.left"
    /// 􀚍
    case arrowDownAndLineHorizontalAndArrowUp = "arrow.down.and.line.horizontal.and.arrow.up"
    /// 􀚎
    case arrowUpAndLineHorizontalAndArrowDown = "arrow.up.and.line.horizontal.and.arrow.down"
    /// 􀅈
    case arrowClockwise = "arrow.clockwise"
    /// 􀚁
    case arrowClockwiseCircle = "arrow.clockwise.circle"
    /// 􀚂
    case arrowClockwiseCircleFill = "arrow.clockwise.circle.fill"
    /// 􀅉
    case arrowCounterclockwise = "arrow.counterclockwise"
    /// 􀚃
    case arrowCounterclockwiseCircle = "arrow.counterclockwise.circle"
    /// 􀚄
    case arrowCounterclockwiseCircleFill = "arrow.counterclockwise.circle.fill"
    /// 􀅊
    case arrowUpLeftAndArrowDownRight = "arrow.up.left.and.arrow.down.right"
    /// 􀧛
    case arrowUpLeftAndArrowDownRightCircle = "arrow.up.left.and.arrow.down.right.circle"
    /// 􀧜
    case arrowUpLeftAndArrowDownRightCircleFill = "arrow.up.left.and.arrow.down.right.circle.fill"
    /// 􀱶
    case arrowUpBackwardAndArrowDownForward = "arrow.up.backward.and.arrow.down.forward"
    /// 􀱷
    case arrowUpBackwardAndArrowDownForwardCircle = "arrow.up.backward.and.arrow.down.forward.circle"
    /// 􀱸
    case arrowUpBackwardAndArrowDownForwardCircleFill = "arrow.up.backward.and.arrow.down.forward.circle.fill"
    /// 􀅋
    case arrowDownRightAndArrowUpLeft = "arrow.down.right.and.arrow.up.left"
    /// 􀫞
    case arrowDownRightAndArrowUpLeftCircle = "arrow.down.right.and.arrow.up.left.circle"
    /// 􀫟
    case arrowDownRightAndArrowUpLeftCircleFill = "arrow.down.right.and.arrow.up.left.circle.fill"
    /// 􀱻
    case arrowDownForwardAndArrowUpBackward = "arrow.down.forward.and.arrow.up.backward"
    /// 􀱼
    case arrowDownForwardAndArrowUpBackwardCircle = "arrow.down.forward.and.arrow.up.backward.circle"
    /// 􀱽
    case arrowDownForwardAndArrowUpBackwardCircleFill = "arrow.down.forward.and.arrow.up.backward.circle.fill"
    /// 􀅇
    case _return = "return"
    /// 􁂆
    case returnLeft = "return.left"
    /// 􁂇
    case returnRight = "return.right"
    /// 􀅌
    case arrow2SquarePath = "arrow.2.squarepath"
    /// 􀊯
    case arrowTriangle2CirclePath = "arrow.triangle.2.circlepath"
    /// 􀖊
    case arrowTriangle2CirclePathCircle = "arrow.triangle.2.circlepath.circle"
    /// 􀖋
    case arrowTriangle2CirclePathCircleFill = "arrow.triangle.2.circlepath.circle.fill"
    /// 􀢤
    case exclamationMarkArrowTriangle2CirclePath = "exclamationmark.arrow.triangle.2.circlepath"
    /// 􁐂
    case gearShapeArrowTriangle2CirclePath = "gearshape.arrow.triangle.2.circlepath"
    /// 􀤖
    case arrowTriangleCapsulePath = "arrow.triangle.capsulepath"
    /// 􀙛
    case arrow3TrianglePath = "arrow.3.trianglepath"
    /// 􀙞
    case arrowTriangleTurnUpRightDiamond = "arrow.triangle.turn.up.right.diamond"
    /// 􀙟
    case arrowTriangleTurnUpRightDiamondFill = "arrow.triangle.turn.up.right.diamond.fill"
    /// 􀟷
    case arrowTriangleTurnUpRightCircle = "arrow.triangle.turn.up.right.circle"
    /// 􀟸
    case arrowTriangleTurnUpRightCircleFill = "arrow.triangle.turn.up.right.circle.fill"
    /// 􀖄
    case arrowTriangleMerge = "arrow.triangle.merge"
    /// 􀖅
    case arrowTriangleSwap = "arrow.triangle.swap"
    /// 􀙠
    case arrowTriangleBranch = "arrow.triangle.branch"
    /// 􀙡
    case arrowTrianglePull = "arrow.triangle.pull"
    /// 􀓄
    case arrowtriangleLeft = "arrowtriangle.left"
    /// 􀄦
    case arrowtriangleLeftFill = "arrowtriangle.left.fill"
    /// 􀁪
    case arrowtriangleLeftCircle = "arrowtriangle.left.circle"
    /// 􀁫
    case arrowtriangleLeftCircleFill = "arrowtriangle.left.circle.fill"
    /// 􀃺
    case arrowtriangleLeftSquare = "arrowtriangle.left.square"
    /// 􀃻
    case arrowtriangleLeftSquareFill = "arrowtriangle.left.square.fill"
    /// 􀰀
    case arrowtriangleBackward = "arrowtriangle.backward"
    /// 􀰁
    case arrowtriangleBackwardFill = "arrowtriangle.backward.fill"
    /// 􀰂
    case arrowtriangleBackwardCircle = "arrowtriangle.backward.circle"
    /// 􀰃
    case arrowtriangleBackwardCircleFill = "arrowtriangle.backward.circle.fill"
    /// 􀰄
    case arrowtriangleBackwardSquare = "arrowtriangle.backward.square"
    /// 􀰅
    case arrowtriangleBackwardSquareFill = "arrowtriangle.backward.square.fill"
    /// 􀓅
    case arrowtriangleRight = "arrowtriangle.right"
    /// 􀄧
    case arrowtriangleRightFill = "arrowtriangle.right.fill"
    /// 􀁬
    case arrowtriangleRightCircle = "arrowtriangle.right.circle"
    /// 􀁭
    case arrowtriangleRightCircleFill = "arrowtriangle.right.circle.fill"
    /// 􀃼
    case arrowtriangleRightSquare = "arrowtriangle.right.square"
    /// 􀃽
    case arrowtriangleRightSquareFill = "arrowtriangle.right.square.fill"
    /// 􀰆
    case arrowtriangleForward = "arrowtriangle.forward"
    /// 􀰇
    case arrowtriangleForwardFill = "arrowtriangle.forward.fill"
    /// 􀰈
    case arrowtriangleForwardCircle = "arrowtriangle.forward.circle"
    /// 􀰉
    case arrowtriangleForwardCircleFill = "arrowtriangle.forward.circle.fill"
    /// 􀰊
    case arrowtriangleForwardSquare = "arrowtriangle.forward.square"
    /// 􀰋
    case arrowtriangleForwardSquareFill = "arrowtriangle.forward.square.fill"
    /// 􀓂
    case arrowtriangleUp = "arrowtriangle.up"
    /// 􀄤
    case arrowtriangleUpFill = "arrowtriangle.up.fill"
    /// 􀁦
    case arrowtriangleUpCircle = "arrowtriangle.up.circle"
    /// 􀁧
    case arrowtriangleUpCircleFill = "arrowtriangle.up.circle.fill"
    /// 􀃶
    case arrowtriangleUpSquare = "arrowtriangle.up.square"
    /// 􀃷
    case arrowtriangleUpSquareFill = "arrowtriangle.up.square.fill"
    /// 􀓃
    case arrowtriangleDown = "arrowtriangle.down"
    /// 􀄥
    case arrowtriangleDownFill = "arrowtriangle.down.fill"
    /// 􀁨
    case arrowtriangleDownCircle = "arrowtriangle.down.circle"
    /// 􀁩
    case arrowtriangleDownCircleFill = "arrowtriangle.down.circle.fill"
    /// 􀃸
    case arrowtriangleDownSquare = "arrowtriangle.down.square"
    /// 􀃹
    case arrowtriangleDownSquareFill = "arrowtriangle.down.square.fill"
    
    public var symbol: String {
        switch self {
        case .arrowshapeLeft: return "􁉄"
        case .arrowshapeLeftFill: return "􁉅"
        case .arrowshapeRight: return "􁉂"
        case .arrowshapeRightFill: return "􁉃"
        case .arrowshapeBackward: return "􁉈"
        case .arrowshapeBackwardFill: return "􁉉"
        case .arrowshapeForward: return "􁉆"
        case .arrowshapeForwardFill: return "􁉇"
        case .arrowshapeTurnUpLeft: return "􀉌"
        case .arrowshapeTurnUpLeftFill: return "􀉍"
        case .arrowshapeTurnUpLeftCircle: return "􀉎"
        case .arrowshapeTurnUpLeftCircleFill: return "􀉏"
        case .arrowshapeTurnUpBackward: return "􀰚"
        case .arrowshapeTurnUpBackwardFill: return "􀰛"
        case .arrowshapeTurnUpBackwardCircle: return "􀰜"
        case .arrowshapeTurnUpBackwardCircleFill: return "􀰝"
        case .arrowshapeTurnUpBackwardBadgeClock: return "􁎱"
        case .arrowshapeTurnUpBackwardBadgeClockFill: return "􁖾"
        case .arrowshapeTurnUpRight: return "􀉐"
        case .arrowshapeTurnUpRightFill: return "􀉑"
        case .arrowshapeTurnUpRightCircle: return "􀉒"
        case .arrowshapeTurnUpRightCircleFill: return "􀉓"
        case .arrowshapeTurnUpForward: return "􀰞"
        case .arrowshapeTurnUpForwardFill: return "􀰟"
        case .arrowshapeTurnUpForwardCircle: return "􀰠"
        case .arrowshapeTurnUpForwardCircleFill: return "􀰡"
        case .arrowshapeTurnUpLeft2: return "􀉔"
        case .arrowshapeTurnUpLeft2Fill: return "􀉕"
        case .arrowshapeTurnUpLeft2Circle: return "􀉖"
        case .arrowshapeTurnUpLeft2CircleFill: return "􀉗"
        case .arrowshapeTurnUpBackward2: return "􀰢"
        case .arrowshapeTurnUpBackward2Fill: return "􀰣"
        case .arrowshapeTurnUpBackward2Circle: return "􀰤"
        case .arrowshapeTurnUpBackward2CircleFill: return "􀰥"
        case .arrowshapeZigzagRight: return "􀉘"
        case .arrowshapeZigzagRightFill: return "􀒐"
        case .arrowshapeZigzagForward: return "􀰦"
        case .arrowshapeZigzagForwardFill: return "􀰧"
        case .arrowshapeBounceRight: return "􀉙"
        case .arrowshapeBounceRightFill: return "􀒑"
        case .arrowshapeBounceForward: return "􀰨"
        case .arrowshapeBounceForwardFill: return "􀰩"
        case .arrowDownApp: return "􀯴"
        case .arrowDownAppFill: return "􀯵"
        case .arrowUpForwardApp: return "􀮵"
        case .arrowUpForwardAppFill: return "􀮶"
        case .arrowUpHeart: return "􀲕"
        case .arrowUpHeartFill: return "􀲖"
        case .arrowDownHeart: return "􀲗"
        case .arrowDownHeartFill: return "􀲘"
        case .arrowClockwiseHeart: return "􀧡"
        case .arrowClockwiseHeartFill: return "􀧢"
        case .location: return "􀋑"
        case .locationFill: return "􀋒"
        case .locationCircle: return "􀋕"
        case .locationCircleFill: return "􀋖"
        case .locationSquare: return "􀼻"
        case .locationSquareFill: return "􀼼"
        case .locationSlash: return "􀘬"
        case .locationSlashFill: return "􀘭"
        case .locationSlashCircle: return "􁙇"
        case .locationSlashCircleFill: return "􁙈"
        case .locationNorth: return "􀋓"
        case .locationNorthFill: return "􀋔"
        case .locationNorthCircle: return "􀷌"
        case .locationNorthCircleFill: return "􀷍"
        case .locationNorthLine: return "􀋗"
        case .locationNorthLinefill: return "􀋘"
        case .leafArrowTriangleCirclePath: return "􀙜"
        case .arrowTriangleLeftAndLineVerticalAndArrowTriangleRight: return "􀠉"
        case .arrowTriangleLeftAndLineVerticalAndArrowTriangleRightFill: return "􀟦"
        case .arrowTriangleRightAndLineVerticalAndArrowTriangleLeft: return "􀠊"
        case .arrowTriangleRightAndLineVerticalAndArrowTriangleLeftFill: return "􀟧"
        case .chevronLeft: return "􀆉"
        case .chevronLeftCircle: return "􀁲"
        case .chevronLeftCircleFill: return "􀁳"
        case .chevronLeftSquare: return "􀄂"
        case .chevronLeftSquareFill: return "􀄃"
        case .chevronBackward: return "􀯶"
        case .chevronBackwardCircle: return "􀯷"
        case .chevronBackwardCircleFill: return "􀯸"
        case .chevronBackwardSquare: return "􀯹"
        case .chevronBackwardSquareFill: return "􀯺"
        case .chevronRight: return "􀆊"
        case .chevronRightCircle: return "􀁴"
        case .chevronRightCircleFill: return "􀁵"
        case .chevronRightSquare: return "􀄄"
        case .chevronRightSquareFill: return "􀄅"
        case .chevronForward: return "􀯻"
        case .chevronForwardCircle: return "􀯼"
        case .chevronForwardCircleFill: return "􀯽"
        case .chevronForwardSquare: return "􀯾"
        case .chevronForwardSquareFill: return "􀯿"
        case .chevronLeft2: return "􀆋"
        case .chevronBackward2: return "􀰪"
        case .chevronRight2: return "􀆌"
        case .chevronForward2: return "􀰫"
        case .chevronUp: return "􀆇"
        case .chevronUpCircle: return "􀁮"
        case .chevronUpCircleFill: return "􀁯"
        case .chevronUpSquare: return "􀃾"
        case .chevronUpSquareFill: return "􀃿"
        case .chevronDown: return "􀆈"
        case .chevronDownCircle: return "􀁰"
        case .chevronDownCircleFill: return "􀁱"
        case .chevronDownSquare: return "􀄀"
        case .chevronDownSquareFill: return "􀄁"
        case .chevronUpChevronDown: return "􀆏"
        case .chevronCompactUp: return "􀆐"
        case .chevronCompactDown: return "􀆑"
        case .chevronCompactLeft: return "􀆒"
        case .chevronCompactRight: return "􀆓"
        case .arrowLeft: return "􀄪"
        case .arrowLeftCircle: return "􀁺"
        case .arrowLeftCircleFill: return "􀁻"
        case .arrowLeftSquare: return "􀄊"
        case .arrowLeftSquareFill: return "􀄋"
        case .arrowBackward: return "􀰌"
        case .arrowBackwardCircle: return "􀰍"
        case .arrowBackwardCircleFill: return "􀰎"
        case .arrowBackwardSquare: return "􀰏"
        case .arrowBackwardSquareFill: return "􀰐"
        case .arrowRight: return "􀄫"
        case .arrowRightCircle: return "􀁼"
        case .arrowRightCircleFill: return "􀁽"
        case .arrowRightSquare: return "􀄌"
        case .arrowRightSquareFill: return "􀄍"
        case .arrowForward: return "􀰑"
        case .arrowForwardCircle: return "􀰒"
        case .arrowForwardCircleFill: return "􀰓"
        case .arrowForwardSquare: return "􀰔"
        case .arrowForwardSquareFill: return "􀰕"
        case .arrowUp: return "􀄨"
        case .arrowUpCircle: return "􀁶"
        case .arrowUpCircleFill: return "􀁷"
        case .arrowUpSquare: return "􀄆"
        case .arrowUpSquareFill: return "􀄇"
        case .arrowUpCircleBadgeClock: return "􁎳"
        case .arrowDown: return "􀄩"
        case .arrowDownCircle: return "􀁸"
        case .arrowDownCircleFill: return "􀁹"
        case .arrowDownSquare: return "􀄈"
        case .arrowDownSquareFill: return "􀄉"
        case .arrowUpLeft: return "􀄮"
        case .arrowUpLeftcircle: return "􀂂"
        case .arrowUpLeftCircleFill: return "􀂃"
        case .arrowUpLeftSquare: return "􀄒"
        case .arrowUpLeftSquareFill: return "􀄓"
        case .arrowUpBackward: return "􀰹"
        case .arrowUpBackwardCircle: return "􀰺"
        case .arrowUpBackwardCircleFill: return "􀰻"
        case .arrowUpBackwardSquare: return "􀰼"
        case .arrowUpBackwardSquareFill: return "􀰽"
        case .arrowUpRight: return "􀄯"
        case .arrowUpRightCircle: return "􀂄"
        case .arrowUpRightCircleFill: return "􀂅"
        case .arrowUpRightSquare: return "􀄔"
        case .arrowUpRightSquareFill: return "􀄕"
        case .arrowUpForward: return "􀰾"
        case .arrowUpForwardCircle: return "􀰿"
        case .arrowUpForwardCircleFill: return "􀱀"
        case .arrowUpForwardSquare: return "􀱁"
        case .arrowUpForwardSquareFill: return "􀱂"
        case .arrowDownLeft: return "􀄰"
        case .arrowDownLeftCircle: return "􀂆"
        case .arrowDownLeftCircleFill: return "􀂇"
        case .arrowDownLeftSquare: return "􀄖"
        case .arrowDownLeftSquareFill: return "􀄗"
        case .arrowDownBackward: return "􀱃"
        case .arrowDownBackwardCircle: return "􀱄"
        case .arrowDownBackwardCircleFill: return "􀱅"
        case .arrowDownBackwardSquare: return "􀱆"
        case .arrowDownBackwardSquareFill: return "􀱇"
        case .arrowDownRight: return "􀄱"
        case .arrowDownRightCircle: return "􀂈"
        case .arrowDownRightCircleFill: return "􀂉"
        case .arrowDownRightSquare: return "􀄘"
        case .arrowDownRightSquareFill: return "􀄙"
        case .arrowDownForward: return "􀱈"
        case .arrowDownForwardCircle: return "􀱉"
        case .arrowDownForwardCircleFill: return "􀱊"
        case .arrowDownForwardSquare: return "􀱋"
        case .arrowDownForwardSquareFill: return "􀱌"
        case .arrowLeftArrowRight: return "􀄭"
        case .arrowLeftArrowRightCircle: return "􀂀"
        case .arrowLeftArrowRightCircleFill: return "􀂁"
        case .arrowLeftArrowRightSquare: return "􀄐"
        case .arrowLeftArrowRightSquareFill: return "􀄑"
        case .arrowUpArrowDown: return "􀄬"
        case .arrowUpArrowDownCircle: return "􀁾"
        case .arrowUpArrowDownCircleFill: return "􀁿"
        case .arrowupArrowDownSquare: return "􀄎"
        case .arrowupArrowDownSquareFill: return "􀄏"
        case .arrowTurnDownLeft: return "􀄴"
        case .arrowTurnUpLeft: return "􀄸"
        case .arrowTurnDownRight: return "􀄵"
        case .arrowTurnUpRight: return "􀄹"
        case .arrowTurnRightUp: return "􀄲"
        case .arrowTurnLeftUp: return "􀄶"
        case .arrowTurnRightDown: return "􀄳"
        case .arrowTurnLeftDown: return "􀄷"
        case .arrowUturnLeft: return "􀄼"
        case .arrowUturnLeftCircle: return "􀂎"
        case .arrowUturnLeftCircleFill: return "􀂏"
        case .arrowUturnLeftCircleBadgeEllipsis: return "􀞸"
        case .arrowUturnLeftSquare: return "􀄞"
        case .arrowUturnLeftSquareFill: return "􀄟"
        case .arrowUturnBackward: return "􀱍"
        case .arrowUturnBackwardCircle: return "􀱎"
        case .arrowUturnBackwardCircleFill: return "􀱏"
        case .arrowUturnBackwardCircleBadgeEllipsis: return "􀱐"
        case .arrowUturnbackwardSquare: return "􀱑"
        case .arrowUturnBackwardSquareFill: return "􀱒"
        case .arrowUturnRight: return "􀄽"
        case .arrowUturnRightCircle: return "􀂐"
        case .arrowUturnRightCircleFill: return "􀂑"
        case .arrowUturnRightSquare: return "􀄠"
        case .arrowUturnRightSquareFill: return "􀄡"
        case .arrowUturnForward: return "􀱓"
        case .arrowUturnForwardCircle: return "􀱔"
        case .arrowUturnForwardCircleFill: return "􀱕"
        case .arrowUturnForwardSquare: return "􀱖"
        case .arrowUturnForwardSquareFill: return "􀱗"
        case .arrowUturnUp: return "􀄺"
        case .arrowUturnUpCircle: return "􀂊"
        case .arrowUturnUpCircleFill: return "􀂋"
        case .arrowUturnUpSquare: return "􀄚"
        case .arrowUturnUpSquareFill: return "􀄛"
        case .arrowUturnDown: return "􀄻"
        case .arrowUturnDownCircle: return "􀂌"
        case .arrowUturnDownCircleFill: return "􀂍"
        case .arrowUturnDownSquare: return "􀄜"
        case .arrowUturnDownSquareFill: return "􀄝"
        case .arrowUpAndDownAndArrowLeftAndRight: return "􀧐"
        case .arrowUpLeftAndDownRightAndArrowUpRightAndDownLeft: return "􀬑"
        case .arrowLeftAndRight: return "􀄾"
        case .arrowLeftAndRightCircle: return "􀑾"
        case .arrowLeftAndRightCircleFill: return "􀑿"
        case .arrowLeftAndRightSquare: return "􀒀"
        case .arrowLeftAndRightSquareFill: return "􀒁"
        case .arrowUpAndDown: return "􀑹"
        case .arrowUpAndDownCircle: return "􀑺"
        case .arrowUpAndDownCircleFill: return "􀑻"
        case .arrowUpAndDownSquare: return "􀑼"
        case .arrowUpAndDownSquareFill: return "􀑽"
        case .arrowUpToLine: return "􀄿"
        case .arrowUpToLineCompact: return "􀅃"
        case .arrowUpToLineCircle: return "􀓆"
        case .arrowUpToLineCircleFill: return "􀓇"
        case .arrowDownToLine: return "􀅀"
        case .arrowDownToLineCompact: return "􀅄"
        case .arrowDownToLineCircle: return "􀓈"
        case .arrowDownToLineCircleFill: return "􀓉"
        case .arrowLeftToLine: return "􀅁"
        case .arrowLeftToLineCompact: return "􀅅"
        case .arrowLeftToLineCircle: return "􀓊"
        case .arrowLeftToLineCircleFill: return "􀓋"
        case .arrowBackwardToLine: return "􁂊"
        case .arrowBackwardToLineCircle: return "􁂌"
        case .arrowBackwardToLineCircleFill: return "􁂍"
        case .arrowRightToLine: return "􀅂"
        case .arrowRightToLineCompact: return "􀅆"
        case .arrowRightToLineCircle: return "􀓌"
        case .arrowRightToLineCircleFill: return "􀓍"
        case .arrowForwardToLine: return "􁂎"
        case .arrowForwardToLineCircle: return "􁂐"
        case .arrowForwardToLineCircleFill: return "􁂑"
        case .arrowLeftAndLineVerticalAndArrowRight: return "􀚋"
        case .arrowRightAndLineVerticalAndArrowLeft: return "􀚌"
        case .arrowDownAndLineHorizontalAndArrowUp: return "􀚍"
        case .arrowUpAndLineHorizontalAndArrowDown: return "􀚎"
        case .arrowClockwise: return "􀅈"
        case .arrowClockwiseCircle: return "􀚁"
        case .arrowClockwiseCircleFill: return "􀚂"
        case .arrowCounterclockwise: return "􀅉"
        case .arrowCounterclockwiseCircle: return "􀚃"
        case .arrowCounterclockwiseCircleFill: return "􀚄"
        case .arrowUpLeftAndArrowDownRight: return "􀅊"
        case .arrowUpLeftAndArrowDownRightCircle: return "􀧛"
        case .arrowUpLeftAndArrowDownRightCircleFill: return "􀧜"
        case .arrowUpBackwardAndArrowDownForward: return "􀱶"
        case .arrowUpBackwardAndArrowDownForwardCircle: return "􀱷"
        case .arrowUpBackwardAndArrowDownForwardCircleFill: return "􀱸"
        case .arrowDownRightAndArrowUpLeft: return "􀅋"
        case .arrowDownRightAndArrowUpLeftCircle: return "􀫞"
        case .arrowDownRightAndArrowUpLeftCircleFill: return "􀫟"
        case .arrowDownForwardAndArrowUpBackward: return "􀱻"
        case .arrowDownForwardAndArrowUpBackwardCircle: return "􀱼"
        case .arrowDownForwardAndArrowUpBackwardCircleFill: return "􀱽"
        case ._return: return "􀅇"
        case .returnLeft: return "􁂆"
        case .returnRight: return "􁂇"
        case .arrow2SquarePath: return "􀅌"
        case .arrowTriangle2CirclePath: return "􀊯"
        case .arrowTriangle2CirclePathCircle: return "􀖊"
        case .arrowTriangle2CirclePathCircleFill: return "􀖋"
        case .exclamationMarkArrowTriangle2CirclePath: return "􀢤"
        case .gearShapeArrowTriangle2CirclePath: return "􁐂"
        case .arrowTriangleCapsulePath: return "􀤖"
        case .arrow3TrianglePath: return "􀙛"
        case .arrowTriangleTurnUpRightDiamond: return "􀙞"
        case .arrowTriangleTurnUpRightDiamondFill: return "􀙟"
        case .arrowTriangleTurnUpRightCircle: return "􀟷"
        case .arrowTriangleTurnUpRightCircleFill: return "􀟸"
        case .arrowTriangleMerge: return "􀖄"
        case .arrowTriangleSwap: return "􀖅"
        case .arrowTriangleBranch: return "􀙠"
        case .arrowTrianglePull: return "􀙡"
        case .arrowtriangleLeft: return "􀓄"
        case .arrowtriangleLeftFill: return "􀄦"
        case .arrowtriangleLeftCircle: return "􀁪"
        case .arrowtriangleLeftCircleFill: return "􀁫"
        case .arrowtriangleLeftSquare: return "􀃺"
        case .arrowtriangleLeftSquareFill: return "􀃻"
        case .arrowtriangleBackward: return "􀰀"
        case .arrowtriangleBackwardFill: return "􀰁"
        case .arrowtriangleBackwardCircle: return "􀰂"
        case .arrowtriangleBackwardCircleFill: return "􀰃"
        case .arrowtriangleBackwardSquare: return "􀰄"
        case .arrowtriangleBackwardSquareFill: return "􀰅"
        case .arrowtriangleRight: return "􀓅"
        case .arrowtriangleRightFill: return "􀄧"
        case .arrowtriangleRightCircle: return "􀁬"
        case .arrowtriangleRightCircleFill: return "􀁭"
        case .arrowtriangleRightSquare: return "􀃼"
        case .arrowtriangleRightSquareFill: return "􀃽"
        case .arrowtriangleForward: return "􀰆"
        case .arrowtriangleForwardFill: return "􀰇"
        case .arrowtriangleForwardCircle: return "􀰈"
        case .arrowtriangleForwardCircleFill: return "􀰉"
        case .arrowtriangleForwardSquare: return "􀰊"
        case .arrowtriangleForwardSquareFill: return "􀰋"
        case .arrowtriangleUp: return "􀓂"
        case .arrowtriangleUpFill: return "􀄤"
        case .arrowtriangleUpCircle: return "􀁦"
        case .arrowtriangleUpCircleFill: return "􀁧"
        case .arrowtriangleUpSquare: return "􀃶"
        case .arrowtriangleUpSquareFill: return "􀃷"
        case .arrowtriangleDown: return "􀓃"
        case .arrowtriangleDownFill: return "􀄥"
        case .arrowtriangleDownCircle: return "􀁨"
        case .arrowtriangleDownCircleFill: return "􀁩"
        case .arrowtriangleDownSquare: return "􀃸"
        case .arrowtriangleDownSquareFill: return "􀃹"
        }
    }
}
