//
//  SFGamingSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 11/03/23.
//

import Foundation

public enum SFGamingSymbol: String, CaseIterable, SFSymbolProtocol {
    case circleSquare = "circle.square"
    case circleSquareFill = "circle.square.fill"
    case rectangleOnRectangle = "rectangle.on.rectangle"
    case rectangleFillOnRectangleFill = "rectangle.fill.on.rectangle.fill"
    case rectangleOnRectangleCircle = "rectangle.on.rectangle.circle"
    case rectangleOnRectangleCircleFill = "rectangle.on.rectangle.circle.fill"
    case rectangleOnRectangleSquare = "rectangle.on.rectangle.square"
    case rectangleOnRectangleSquareFill = "rectangle.on.rectangle.square.fill"
    case flagCheckered = "flag.checkered"
    case flagCheckeredCircle = "flag.checkered.circle"
    case flagCheckeredCircleFill = "flag.checkered.circle.fill"
    case flag2Crossed = "flag.2.crossed"
    case flag2CrossedFill = "flag.2.crossed.fill"
    case flag2CrossedCircle = "flag.2.crossed.circle"
    case flag2CrossedCircleFill = "flag.2.crossed.circle.fill"
    case flagFilledAndFlagCrossed = "flag.filled.and.flag.crossed"
    case flagAndFlagFilledCrossed = "flag.and.flag.filled.crossed"
    case flagCheckeredTwoCrossed = "flag.checkered.2.crossed"
    case house = "house"
    case houseFill = "house.fill"
    case houseCircle = "house.circle"
    case houseCircleFill = "house.circle.fill"
    case gamecontroller = "gamecontroller"
    case gamecontrollerFill = "gamecontroller.fill"
    case lJoystick = "l.joystick"
    case lJoystickFill = "l.joystick.fill"
    case rJoystick = "r.joystick"
    case rJoystickFill = "r.joystick.fill"
    case lJoystickPressDown = "l.joystick.press.down"
    case lJoystickPressDownFill = "l.joystick.press.down.fill"
    case rJoystickPressDown = "r.joystick.press.down"
    case rJoystickPressDownFill = "r.joystick.press.down.fill"
    case lJoystickTiltLeft = "l.joystick.tilt.left"
    case lJoystickTiltLeftFill = "l.joystick.tilt.left.fill"
    case lJoystickTiltRight = "l.joystick.tilt.right"
    case lJoystickTiltRightFill = "l.joystick.tilt.right.fill"
    case lJoystickTiltUp = "l.joystick.tilt.up"
    case lJoystickTiltUpFill = "l.joystick.tilt.up.fill"
    case lJoystickTiltDown = "l.joystick.tilt.down"
    case lJoystickTiltDownFill = "l.joystick.tilt.down.fill"
    case rJoystickTiltLeft = "r.joystick.tilt.left"
    case rJoystickTiltLeftFill = "r.joystick.tilt.left.fill"
    case rJoystickTiltRight = "r.joystick.tilt.right"
    case rJoystickTiltRightFill = "r.joystick.tilt.right.fill"
    case rJoystickTiltUp = "r.joystick.tilt.up"
    case rJoystickTiltUpFill = "r.joystick.tilt.up.fill"
    case rJoystickTiltDown = "r.joystick.tilt.down"
    case rJoystickTiltDownFill = "r.joystick.tilt.down.fill"
    case circleGridCross = "circle.grid.cross"
    case circleGridCrossFill = "circle.grid.cross.fill"
    case circleGridCrossLeftFilled = "circle.grid.cross.left.filled"
    case circleGridCrossUpFilled = "circle.grid.cross.up.filled"
    case circleGridCrossRightFilled = "circle.grid.cross.right.filled"
    case circleGridCrossDownFilled = "circle.grid.cross.down.filled"
    case dpad = "dpad"
    case dpadFill = "dpad.fill"
    case dpadLeftFilled = "dpad.left.filled"
    case dpadUpFilled = "dpad.up.filled"
    case dpadRightFilled = "dpad.right.filled"
    case dpadDownFilled = "dpad.down.filled"
    case circleCircle = "circle.circle"
    case circleCircleFill = "circle.circle.fill"
    case squareCircle = "square.circle"
    case squareCircleFill = "square.circle.fill"
    case triangleCircle = "triangle.circle"
    case triangleCircleFill = "triangle.circle.fill"
    case rectangleRoundedtop = "rectangle.roundedtop"
    case rectangleRoundedtopFill = "rectangle.roundedtop.fill"
    case rectangleRoundedbottom = "rectangle.roundedbottom"
    case rectangleRoundedbottomFill = "rectangle.roundedbottom.fill"
    case lRectangleRoundedbottom = "l.rectangle.roundedbottom"
    case lRectangleRoundedbottomFill = "l.rectangle.roundedbottom.fill"
    case l1RectangleRoundedbottom = "l1.rectangle.roundedbottom"
    case l1RectangleRoundedbottomFill = "l1.rectangle.roundedbottom.fill"
    case l2RectangleRoundedtop = "l2.rectangle.roundedtop"
    case l2RectangleRoundedtopFill = "l2.rectangle.roundedtop.fill"
    case rRectangleRoundedbottom = "r.rectangle.roundedbottom"
    case rRectangleRoundedbottomFill = "r.rectangle.roundedbottom.fill"
    case r1RectangleRoundedbottom = "r1.rectangle.roundedbottom"
    case r1RectangleRoundedbottomFill = "r1.rectangle.roundedbottom.fill"
    case r2RectangleRoundedtop = "r2.rectangle.roundedtop"
    case r2RectangleRoundedtopFill = "r2.rectangle.roundedtop.fill"
    case lbRectangleRoundedbottom = "lb.rectangle.roundedbottom"
    case lbRectangleRoundedbottomFill = "lb.rectangle.roundedbottom.fill"
    case rbRectangleRoundedbottom = "rb.rectangle.roundedbottom"
    case rbRectangleRoundedbottomFill = "rb.rectangle.roundedbottom.fill"
    case ltRectangleRoundedtop = "lt.rectangle.roundedtop"
    case ltRectangleRoundedtopFill = "lt.rectangle.roundedtop.fill"
    case rtRectangleRoundedtop = "rt.rectangle.roundedtop"
    case rtRectangleRoundedtopFill = "rt.rectangle.roundedtop.fill"
    case zlRectangleRoundedtop = "zl.rectangle.roundedtop"
    case zlRectangleRoundedtopFill = "zl.rectangle.roundedtop.fill"
    case zrRectangleRoundedtop = "zr.rectangle.roundedtop"
    case zrRectangleRoundedtopFill = "zr.rectangle.roundedtop.fill"
    case playstationLogo = "playstation.logo"
    case xboxLogo = "xbox.logo"
    case line3HorizontalCircle = "line.3.horizontal.circle"
    case line3HorizontalCircleFill = "line.3.horizontal.circle.fill"
    case plus = "plus"
    case plusCircle = "plus.circle"
    case plusCircleFill = "plus.circle.fill"
    case minus = "minus"
    case minusCircle = "minus.circle"
    case minusCircleFill = "minus.circle.fill"
    case xmark = "xmark"
    case xmarkCircle = "xmark.circle"
    case xmarkCircleFill = "xmark.circle.fill"
    case arrowtriangleLeftCircle = "arrowtriangle.left.circle"
    case arrowtriangleLeftCircleFill = "arrowtriangle.left.circle.fill"
    case arrowtriangleRightCircle = "arrowtriangle.right.circle"
    case arrowtriangleRightCircleFill = "arrowtriangle.right.circle.fill"
    case arrowtriangleUpCircle = "arrowtriangle.up.circle"
    case arrowtriangleUpCircleFill = "arrowtriangle.up.circle.fill"
    case arrowtriangleDownCircle = "arrowtriangle.down.circle"
    case arrowtriangleDownCircleFill = "arrowtriangle.down.circle.fill"
    case aCircle = "a.circle"
    case aCircleFill = "a.circle.fill"
    case bCircle = "b.circle"
    case bCircleFill = "b.circle.fill"
    case lCircle = "l.circle"
    case lCircleFill = "l.circle.fill"
    case rCircle = "r.circle"
    case rCircleFill = "r.circle.fill"
    case xCircle = "x.circle"
    case xCircleFill = "x.circle.fill"
    case yCircle = "y.circle"
    case yCircleFill = "y.circle.fill"

    var symbol: String {
        switch self {
        case .circleSquare:
            return "􀧺"
        case .circleSquareFill:
            return "􀧻"
        case .rectangleOnRectangle:
            return "􀏧"
        case .rectangleFillOnRectangleFill:
            return "􀏨"
        case .rectangleOnRectangleCircle:
            return "􀤽"
        case .rectangleOnRectangleCircleFill:
            return "􀤾"
        case .rectangleOnRectangleSquare:
            return "􀽏"
        case .rectangleOnRectangleSquareFill:
            return "􀽐"
        case .flagCheckered:
            return "􁙌"
        case .flagCheckeredCircle:
            return "􁝼"
        case .flagCheckeredCircleFill:
            return "􁝽"
        case .flag2Crossed:
            return "􀶶"
        case .flag2CrossedFill:
            return "􀶷"
        case .flag2CrossedCircle:
            return "􁜅"
        case .flag2CrossedCircleFill:
            return "􁜆"
        case .flagFilledAndFlagCrossed:
            return "􀶸"
        case .flagAndFlagFilledCrossed:
            return "􁁜"
        case .flagCheckeredTwoCrossed:
            return "􁜔"
        case .house:
            return "􀎞"
        case .houseFill:
            return "􀎟"
        case .houseCircle:
            return "􀥆"
        case .houseCircleFill:
            return "􀥇"
        case .gamecontroller:
            return "􀛸"
        case .gamecontrollerFill:
            return "􀛹"
        case .lJoystick:
            return "􀦒"
        case .lJoystickFill:
            return "􀫁"
        case .rJoystick:
            return "􀦓"
        case .rJoystickFill:
            return "􀫂"
        case .lJoystickPressDown:
            return "􀦔"
        case .lJoystickPressDownFill:
            return "􀫃"
        case .rJoystickPressDown:
            return "􀦕"
        case .rJoystickPressDownFill:
            return "􀫄"
        case .lJoystickTiltLeft:
            return "􀿖"
        case .lJoystickTiltLeftFill:
            return "􀿗"
        case .lJoystickTiltRight:
            return "􀿘"
        case .lJoystickTiltRightFill:
            return "􀿙"
        case .lJoystickTiltUp:
            return "􀿚"
        case .lJoystickTiltUpFill:
            return "􀿛"
        case .lJoystickTiltDown:
            return "􀿜"
        case .lJoystickTiltDownFill:
            return "􀿝"
        case .rJoystickTiltLeft:
            return "􀿞"
        case .rJoystickTiltLeftFill:
            return "􀿟"
        case .rJoystickTiltRight:
            return "􀿠"
        case .rJoystickTiltRightFill:
            return "􀿡"
        case .rJoystickTiltUp:
            return "􀿢"
        case .rJoystickTiltUpFill:
            return "􀿣"
        case .rJoystickTiltDown:
            return "􀿤"
        case .rJoystickTiltDownFill:
            return "􀿥"
        case .circleGridCross:
            return "􀧸"
        case .circleGridCrossFill:
            return "􀧹"
        case .circleGridCrossLeftFilled:
            return "􀩄"
        case .circleGridCrossUpFilled:
            return "􀩅"
        case .circleGridCrossRightFilled:
            return "􀩆"
        case .circleGridCrossDownFilled:
            return "􀩇"
        case .dpad:
            return "􀨲"
        case .dpadFill:
            return "􀧼"
        case .dpadLeftFilled:
            return "􀧽"
        case .dpadUpFilled:
            return "􀧾"
        case .dpadRightFilled:
            return "􀧿"
        case .dpadDownFilled:
            return "􀨀"
        case .circleCircle:
            return "􀨁"
        case .circleCircleFill:
            return "􀨂"
        case .squareCircle:
            return "􀨃"
        case .squareCircleFill:
            return "􀨄"
        case .triangleCircle:
            return "􀨅"
        case .triangleCircleFill:
            return "􀨆"
        case .rectangleRoundedtop:
            return "􀩸"
        case .rectangleRoundedtopFill:
            return "􀩹"
        case .rectangleRoundedbottom:
            return "􀩺"
        case .rectangleRoundedbottomFill:
            return "􀩻"
        case .lRectangleRoundedbottom:
            return "􀨇"
        case .lRectangleRoundedbottomFill:
            return "􀨈"
        case .l1RectangleRoundedbottom:
            return "􀨉"
        case .l1RectangleRoundedbottomFill:
            return "􀨊"
        case .l2RectangleRoundedtop:
            return "􀨋"
        case .l2RectangleRoundedtopFill:
            return "􀨌"
        case .rRectangleRoundedbottom:
            return "􀨍"
        case .rRectangleRoundedbottomFill:
            return "􀨎"
        case .r1RectangleRoundedbottom:
            return "􀨏"
        case .r1RectangleRoundedbottomFill:
            return "􀨐"
        case .r2RectangleRoundedtop:
            return "􀨑"
        case .r2RectangleRoundedtopFill:
            return "􀨒"
        case .lbRectangleRoundedbottom:
            return "􀨓"
        case .lbRectangleRoundedbottomFill:
            return "􀨔"
        case .rbRectangleRoundedbottom:
            return "􀨕"
        case .rbRectangleRoundedbottomFill:
            return "􀨖"
        case .ltRectangleRoundedtop:
            return "􀨗"
        case .ltRectangleRoundedtopFill:
            return "􀨘"
        case .rtRectangleRoundedtop:
            return "􀨙"
        case .rtRectangleRoundedtopFill:
            return "􀨚"
        case .zlRectangleRoundedtop:
            return "􀨛"
        case .zlRectangleRoundedtopFill:
            return "􀨜"
        case .zrRectangleRoundedtop:
            return "􀨝"
        case .zrRectangleRoundedtopFill:
            return "􀨞"
        case .playstationLogo:
            return "􀾈"
        case .xboxLogo:
            return "􀾉"
        case .line3HorizontalCircle:
            return "􀧱"
        case .line3HorizontalCircleFill:
            return "􀧲"
        case .plus:
            return "􀅼"
        case .plusCircle:
            return "􀁌"
        case .plusCircleFill:
            return "􀁍"
        case .minus:
            return "􀅽"
        case .minusCircle:
            return "􀁎"
        case .minusCircleFill:
            return "􀁏"
        case .xmark:
            return "􀆄"
        case .xmarkCircle:
            return "􀁠"
        case .xmarkCircleFill:
            return "􀁡"
        case .arrowtriangleLeftCircle:
            return "􀁪"
        case .arrowtriangleLeftCircleFill:
            return "􀁫"
        case .arrowtriangleRightCircle:
            return "􀁬"
        case .arrowtriangleRightCircleFill:
            return "􀁭"
        case .arrowtriangleUpCircle:
            return "􀁦"
        case .arrowtriangleUpCircleFill:
            return "􀁧"
        case .arrowtriangleDownCircle:
            return "􀁨"
        case .arrowtriangleDownCircleFill:
            return "􀁩"
        case .aCircle:
            return "􀀄"
        case .aCircleFill:
            return "􀀅"
        case .bCircle:
            return "􀀆"
        case .bCircleFill:
            return "􀀇"
        case .lCircle:
            return "􀀚"
        case .lCircleFill:
            return "􀀛"
        case .rCircle:
            return "􀀦"
        case .rCircleFill:
            return "􀀧"
        case .xCircle:
            return "􀀲"
        case .xCircleFill:
            return "􀀳"
        case .yCircle:
            return "􀀴"
        case .yCircleFill:
            return "􀀵"
        }
    }
}
