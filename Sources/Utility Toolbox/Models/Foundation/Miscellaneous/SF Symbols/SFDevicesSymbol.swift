//
//  SFDevicesSymbol.swift
//  
//
//  Created by Yann Christophe MAERTENS on 16/05/2023.
//

import Foundation

public enum SFDevicesSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀇳
    case keyboard = "keyboard"
    /// 􀺑
    case keyboardFill = "keyboard.fill"
    /// 􀫒
    case keyboardBadgeEllipsis = "keyboard.badge.ellipsis"
    /// 􁚏
    case keyboardBadgeEllipsisFill = "keyboard.badge.ellipsis.fill"
    /// 􁔕
    case keyboardBadgeEye = "keyboard.badge.eye"
    /// 􁚐
    case keyboardBadgeEyeFill = "keyboard.badge.eye.fill"
    /// 􀓖
    case keyboardChevronCompactDown = "keyboard.chevron.compact.down"
    /// 􁚑
    case keyboardChevronCompactDownFill = "keyboard.chevron.compact.down.fill"
    /// 􀣭
    case keyboardChevronCompactLeft = "keyboard.chevron.compact.left"
    /// 􁚒
    case keyboardChevronCompactLeftFill = "keyboard.chevron.compact.left.fill"
    /// 􀞹
    case keyboardOneHandedLeft = "keyboard.onehanded.left"
    /// 􁚓
    case keyboardOneHandedLeftFill = "keyboard.onehanded.left.fill"
    /// 􀞺
    case keyboardOneHandedRight = "keyboard.onehanded.right"
    /// 􁚔
    case keyboardOneHandedRightFill = "keyboard.onehanded.right.fill"
    /// 􀎚
    case printer = "printer"
    /// 􀎛
    case printerFill = "printer.fill"
    /// 􀪾
    case printerFilledAndPaper = "printer.filled.and.paper"
    /// 􀪞
    case printerDotMatrix = "printer.dotmatrix"
    /// 􀪟
    case printerDotMatrixFill = "printer.dotmatrix.fill"
    /// 􀪿
    case printerDotMatrixFilledAndPaper = "printer.dotmatrix.filled.and.paper"
    /// 􀪊
    case scanner = "scanner"
    /// 􀪋
    case scannerFill = "scanner.fill"
    /// 􀪌
    case faxMachine = "faxmachine"
    /// 􀪍
    case faxMachineFill = "faxmachine.fill"
    /// 􁄼 This symbol may not be modified and may only be used to refer to Apple's AirTag.
    case airTagRadioWavesForward = "airtag.radiowaves.forward"
    /// 􁄽 This symbol may not be modified and may only be used to refer to Apple's AirTag.
    case airTagRadioWavesForwardFill = "airtag.radiowaves.forward.fill"
    /// 􁄾 This symbol may not be modified and may only be used to refer to Apple's AirTag.
    case airTag = "airtag"
    /// 􁄿 This symbol may not be modified and may only be used to refer to Apple's AirTag.
    case airTagFill = "airtag.fill"
    /// 􀢹
    case display = "display"
    /// 􁏴
    case playDisplay = "play.display"
    /// 􀼑
    case lockDisplay = "lock.display"
    /// 􀼜
    case lockOpenDisplay = "lock.open.display"
    /// 􀶽
    case displayAndArrowDown = "display.and.arrow.down"
    /// 􀨦
    case displayTriangleBadgeExclamationMark = "display.trianglebadge.exclamationmark"
    /// 􀨧
    case display2 = "display.2"
    /// 􀙗
    case desktopComputer = "desktopcomputer"
    /// 􁏳
    case playDesktopComputer = "play.desktopcomputer"
    /// 􀼒
    case lockDesktopComputer = "lock.desktopcomputer"
    /// 􀼝
    case lockOpenDesktopComputer = "lock.open.desktopcomputer"
    /// 􀶾
    case desktopComputerAndArrowDown = "desktopcomputer.and.arrow.down"
    /// 􁃃
    case desktopComputerTriangleBadgeExclamationMark = "desktopcomputer.trianglebadge.exclamationmark"
    /// 􀥺
    case pc = "pc"
    /// 􀪲 This symbol may not be modified and may only be used to refer to Apple's Mac Pro.
    case macProGen1 = "macpro.gen1"
    /// 􀼢 This symbol may not be modified and may only be used to refer to Apple's Mac Pro.
    case macProGen1Fill = "macpro.gen1.fill"
    /// 􀦱 This symbol may not be modified and may only be used to refer to Apple's Mac Pro.
    case macProGen2 = "macpro.gen2"
    /// 􀦮 This symbol may not be modified and may only be used to refer to Apple's Mac Pro.
    case macProGen2Fill = "macpro.gen2.fill"
    /// 􀪱 This symbol may not be modified and may only be used to refer to Apple's Mac Pro.
    case macProGen3 = "macpro.gen3"
    /// 􀼣 This symbol may not be modified and may only be used to refer to Apple's Mac Pro.
    case macProGen3Fill = "macpro.gen3.fill"
    /// 􀨳 This symbol may not be modified and may only be used to refer to Apple's Mac Pro.
    case macProGen3Server = "macpro.gen3.server"
    /// 􀪬
    case serverRack = "server.rack"
    /// 􀧘 This symbol may not be modified and may only be used to refer to Apple's Xserve.
    case xServe = "xserve"
    /// 􀟛
    case laptopComputer = "laptopcomputer"
    /// 􁊭
    case laptopComputerSlash = "laptopcomputer.slash"
    /// 􁏵
    case playLaptopComputer = "play.laptopcomputer"
    /// 􀼓
    case lockLaptopComputer = "lock.laptopcomputer"
    /// 􀼞
    case lockOpenLaptopComputer = "lock.open.laptopcomputer"
    /// 􀶿
    case laptopComputerAndArrowDown = "laptopcomputer.and.arrow.down"
    /// 􁃂
    case laptopComputerTriangleBadgeExclamationMark = "laptopcomputer.trianglebadge.exclamationmark"
    /// 􀬩 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case macbookAndIphone = "macbook.and.iphone"
    /// 􁘞 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case macbookAndIpad = "macbook.and.ipad"
    /// 􀪯 This symbol may not be modified and may only be used to refer to Apple's Mac mini.
    case macmini = "macmini"
    /// 􀪰 This symbol may not be modified and may only be used to refer to Apple's Mac mini.
    case macminiFill = "macmini.fill"
    /// 􁏍 This symbol may not be modified and may only be used to refer to Apple's Mac Studio.
    case macstudio = "macstudio"
    /// 􁏎 This symbol may not be modified and may only be used to refer to Apple's Mac Studio.
    case macstudioFill = "macstudio.fill"
    /// 􀦯 This symbol may not be modified and may only be used to refer to Apple's AirPort Express.
    case airPortExpress = "airport.express"
    /// 􀑝 This symbol may not be modified and may only be used to refer to Apple's AirPort Extreme.
    case airPortExtreme = "airport.extreme"
    /// 􀦰 This symbol may not be modified and may only be used to refer to Apple's AirPort Extreme.
    case airPortExtremeTower = "airport.extreme.tower"
    /// 􀢺 This symbol may not be modified and may only be used to refer to Apple's iPod.
    case ipod = "ipod"
    /// 􀫨 This symbol may not be modified and may only be used to refer to Apple's iPod shuffle.
    case iPodShuffleGen1 = "ipodshuffle.gen1"
    /// 􀫩 This symbol may not be modified and may only be used to refer to Apple's iPod shuffle.
    case iPodShuffleGen2 = "ipodshuffle.gen2"
    /// 􀫪 This symbol may not be modified and may only be used to refer to Apple's iPod shuffle.
    case iPodShuffleGen3 = "ipodshuffle.gen3"
    /// 􀫫 This symbol may not be modified and may only be used to refer to Apple's iPod shuffle.
    case iPodShuffleGen4 = "ipodshuffle.gen4"
    /// 􀫧 This symbol may not be modified and may only be used to refer to Apple's iPod touch.
    case iPodTouch = "ipodtouch"
    /// 􁂲 This symbol may not be modified and may only be used to refer to Apple's iPod touch.
    case iPodTouchSlash = "ipodtouch.slash"
    /// 􀴐 This symbol may not be modified and may only be used to refer to Apple's iPod touch.
    case iPodTouchLandscape = "ipodtouch.landscape"
    /// 􀪴
    case flipPhone = "flipphone"
    /// 􀪳
    case candyBarPhone = "candybarphone"
    /// 􀟝 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1 = "iphone.gen1"
    /// 􁄥 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1Circle = "iphone.gen1.circle"
    /// 􁄦 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1CircleFill = "iphone.gen1.circle.fill"
    /// 􀴎 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1Landscape = "iphone.gen1.landscape"
    /// 􀡆 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1RadioWavesLeftAndRight = "iphone.gen1.radiowaves.left.and.right"
    /// 􁅚 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1RadioWavesLeftAndRightCircle = "iphone.gen1.radiowaves.left.and.right.circle"
    /// 􁅛 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1RadioWavesLeftAndRightCircleFill = "iphone.gen1.radiowaves.left.and.right.circle.fill"
    /// 􀨴 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1Slash = "iphone.gen1.slash"
    /// 􁄧 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1SlashCircle = "iphone.gen1.slash.circle"
    /// 􁄨 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1SlashFill = "iphone.gen1.slash.circle.fill"
    /// 􀐶 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen1BadgePlay = "iphone.gen1.badge.play"
    /// 􁟜 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2 = "iphone.gen2"
    /// 􁟝 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2Circle = "iphone.gen2.circle"
    /// 􁟞 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2CircleFill = "iphone.gen2.circle.fill"
    /// 􁟟 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2Landscape = "iphone.gen2.landscape"
    /// 􁟠 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2RadioWavesLeftAndRight = "iphone.gen2.radiowaves.left.and.right"
    /// 􁟡 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2RadioWavesLeftAndRightCircle = "iphone.gen2.radiowaves.left.and.right.circle"
    /// 􁟢 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2RadioWavesLeftAndRightCircleFill = "iphone.gen2.radiowaves.left.and.right.circle.fill"
    /// 􁟣 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2Slash = "iphone.gen2.slash"
    /// 􁟤 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2SlashCircle = "iphone.gen2.slash.circle"
    /// 􁟥 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2SlashCircleFill = "iphone.gen2.slash.circle.fill"
    /// 􁟦 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen2BadgePlay = "iphone.gen2.badge.play"
    /// 􁊮 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3 = "iphone.gen3"
    /// 􁊯 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3Circle = "iphone.gen3.circle"
    /// 􁊰 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3CircleFill = "iphone.gen3.circle.fill"
    /// 􁊱 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3Landscape = "iphone.gen3.landscape"
    /// 􁊲 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3RadioWavesLeftAndRight = "iphone.gen3.radiowaves.left.and.right"
    /// 􁊳 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3RadioWavesLeftAndRightCircle = "iphone.gen3.radiowaves.left.and.right.circle"
    /// 􁊴 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3RadioWavesLeftAndRightCircleFill = "iphone.gen3.radiowaves.left.and.right.circle.fill"
    /// 􁊵 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3Slash = "iphone.gen3.slash"
    /// 􁊶 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3SlashCircle = "iphone.gen3.slash.circle"
    /// 􁊷 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3SlashCircleFill = "iphone.gen3.slash.circle.fill"
    /// 􁊸 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneGen3BadgePlay = "iphone.gen3.badge.play"
}
