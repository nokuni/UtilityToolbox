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
    /// 􀟜 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhone = "iphone"
    /// 􁄩 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneCircle = "iphone.circle"
    /// 􁄪 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneCircleFill = "iphone.circle.fill"
    /// 􀴏 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneLandscape = "iphone.landscape"
    /// 􀡇 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneRadioWavesLeftAndRight = "iphone.radiowaves.left.and.right"
    /// 􁅜 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneRadioWavesLeftAndRightCircle = "iphone.radiowaves.left.and.right.circle"
    /// 􁅝 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneRadioWavesLeftAndRightCircleFill = "iphone.radiowaves.left.and.right.circle.fill"
    /// 􀨵 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneSlash = "iphone.slash"
    /// 􁄫 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneSlashCircle = "iphone.slash.circle"
    /// 􁄬 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneSlashCircleFill = "iphone.slash.circle.fill"
    /// 􀴑 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iPhoneBadgePlay = "iphone.badge.play"
    /// 􀼔
    case lockIphone = "lock.iphone"
    /// 􀼟
    case lockOpenIphone = "lock.open.iphone"
    /// 􀶼
    case iphoneAndArrowForward = "iphone.and.arrow.forward"
    /// 􀬫
    case arrowTurnUpForwardIphone = "arrow.turn.up.forward.iphone"
    /// 􀬬
    case arrowTurnUpForwardIphoneFill = "arrow.turn.up.forward.iphone.fill"
    /// 􀾖
    case iphoneRearCamera = "iphone.rear.camera"
    /// 􀟞 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case appsIphone = "apps.iphone"
    /// 􀯖 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case appsIphoneBadgePlus = "apps.iphone.badge.plus"
    /// 􀮔 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case appsIphoneLandscape = "apps.iphone.landscape"
    /// 􁊿
    case platterFilledTopIphone = "platter.filled.top.iphone"
    /// 􁋀
    case platterFilledBottomIphone = "platter.filled.bottom.iphone"
    /// 􁋁
    case platterFilledTopAndArrowUpIphone = "platter.filled.top.and.arrow.up.iphone"
    /// 􁋂
    case platterFilledBottomAndArrowDownIphone = "platter.filled.bottom.and.arrow.down.iphone"
    /// 􀾩
    case platter2FilledIphone = "platter.2.filled.iphone"
    /// 􀾪
    case platter2FilledIphoneLandscape = "platter.2.filled.iphone.landscape"
    /// 􀺏 This symbol may not be modified and may only be used to refer to Apple's iPhone Smart Battery Case.
    case iPhoneSmartBatteryCaseGen2 = "iphone.smartbatterycase.gen2"
    /// 􀺐 This symbol may not be modified and may only be used to refer to Apple's iPhone Smart Battery Case.
    case iPhoneSmartBatteryCaseGen1 = "iphone.smartbatterycase.gen1"
    /// 􀟟 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen1 = "ipad.gen1"
    /// 􀴒 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen1BadgePlay = "ipad.gen1.badge.play"
    /// 􀥓 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen1Landscape = "ipad.gen1.landscape"
    /// 􀵑 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen1LandscapeBadgePlay = "ipad.gen1.landscape.badge.play"
    /// 􁟧 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen2 = "ipad.gen2"
    /// 􁟨 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen2BadgePlay = "ipad.gen2.badge.play"
    /// 􁟩 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen2Landscape = "ipad.gen2.landscape"
    /// 􁟪 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadGen2LandscapeBadgePlay = "ipad.gen2.landscape.badge.play"
    /// 􀟠 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPad = "ipad"
    /// 􀴓 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case ipadBadgePlay = "ipad.badge.play"
    /// 􀥔 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadLandscape = "ipad.landscape"
    /// 􀵒 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case iPadLandscapeBadgePlay = "ipad.landscape.badge.play"
    /// 􁄟 This symbol may not be modified and may only be used to refer to Apple's iPad and iPhone.
    case iPadAndIphone = "ipad.and.iphone"
    /// 􁋟 This symbol may not be modified and may only be used to refer to Apple's iPad and iPhone.
    case iPadAndIphoneSlash = "ipad.and.iphone.slash"
    /// 􀼕
    case lockIpad = "lock.ipad"
    /// 􀼠
    case lockOpenIpad = "lock.open.ipad"
    /// 􀷀
    case iPadAndArrowForward = "ipad.and.arrow.forward"
    /// 􁀲
    case iPadRearCamera = "ipad.rear.camera"
    /// 􀮕 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case appsIpad = "apps.ipad"
    /// 􀮖 This symbol may not be modified and may only be used to refer to Apple's iPad.
    case appsIpadLandscape = "apps.ipad.landscape"
    /// 􁁍
    case platter2FilledIpad = "platter.2.filled.ipad"
    /// 􁁎
    case platter2FilledIpadLandscape = "platter.2.filled.ipad.landscape"
    /// 􀺮 This symbol may not be modified and may only be used to refer to Apple Pencil.
    case applePencil = "applepencil"
    /// 􀺰 This symbol may not be modified and may only be used to refer to Apple's Magic Mouse.
    case magicMouse = "magicmouse"
    /// 􀺱 This symbol may not be modified and may only be used to refer to Apple's Magic Mouse.
    case magicMouseFill = "magicmouse.fill"
    /// 􀺣
    case computerMouse = "computermouse"
    /// 􀺤
    case computerMouseFill = "computerMouse.fill"
    /// 􀟤 This symbol may not be modified and may only be used to refer to Apple Watch.
    case appleWatch = "applewatch"
    /// 􀫋 This symbol may not be modified and may only be used to refer to Apple Watch.
    case appleWatchWatchFace = "applewatch.watchface"
    /// 􀵄 This symbol may not be modified and may only be used to refer to Apple Watch.
    case exclamationMarkAppleWatch = "exclamationmark.applewatch"
    /// 􀵅 This symbol may not be modified and may only be used to refer to Apple Watch.
    case lockAppleWatch = "lock.applewatch"
    /// 􀼡 This symbol may not be modified and may only be used to refer to Apple Watch.
    case lockOpenAppleWatch = "lock.open.applewatch"
    /// 􀢷 This symbol may not be modified and may only be used to refer to Apple Watch.
    case appleWatchRadioWavesLeftAndRight = "applewatch.radiowaves.left.and.right"
    /// 􀨶 This symbol may not be modified and may only be used to refer to Apple Watch.
    case appleWatchSlash = "applewatch.slash"
    /// 􀸎 This symbol may not be modified and may only be used to refer to Apple Watch.
    case appleWatchSideRight = "applewatch.side.right"
    /// 􀺗 This symbol may not be modified and may only be used to refer to Apple Watch.
    case watchFaceAppleWatchCase = "watchface.applewatch.case"
    /// 􀴪 This symbol may not be modified and may only be used to refer to Apple Watch.
    case appleWatchCaseInsetFilled = "applewatch.case.inset.filled"
    /// 􁃄 This symbol may not be modified and may only be used to refer to Apple Watch.
    case platterFilledTopAppleWatchCase = "platter.filled.top.applewatch.case"
    /// 􁃅 This symbol may not be modified and may only be used to refer to Apple Watch.
    case platterFilledBottomAppleWatchCase = "platter.filled.bottom.applewatch.case"
    /// 􁃆 This symbol may not be modified and may only be used to refer to Apple Watch.
    case platterTopAppleWatchCase = "platter.top.applewatch.case"
    /// 􁃇 This symbol may not be modified and may only be used to refer to Apple Watch.
    case platterBottomAppleWatchCase = "platter.bottom.applewatch.case"
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
    /// 􀻱 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalCrownHorizontalArrowClockwise = "digitalcrown.horizontal.arrow.clockwise"
    /// 􀻲 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalCrownHorizontalArrowClockwiseFill = "digitalcrown.horizontal.arrow.clockwise.fill"
    /// 􀻳 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalCrownHorizontalArrowCounterclockwise = "digitalcrown.horizontal.arrow.counterclockwise"
    /// 􀻴 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalCrownHorizontalArrowCounterclockwiseFill = "digitalcrown.horizontal.arrow.counterclockwise.fill"
    /// 􀴣 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalCrownHorizontalPress = "digitalcrown.horizontal.press"
    /// 􀴤 This symbol may not be modified and may only be used to refer to Apple's Digital Crown.
    case digitalCrownHorizontalPressFill = "digitalcrown.horizontal.press.fill"
    /// 􀺹 This symbol may not be modified and may only be used to refer to Apple's AirPods Max.
    case airPodsMax = "airpodsmax"
    /// 􀺭 This symbol may not be modified and may only be used to refer to Beats headphones.
    case beatsHeadphones = "beats.headphones"
    /// 􀑈
    case headphones = "headphones"
    /// 􀒾
    case headphonesCircle = "headphones.circle"
    /// 􀒿
    case headphonesCircleFill = "headphones.circle.fill"
    /// 􀸸
    case earbuds = "earbuds"
    /// 􀹥
    case earbudsCase = "earbuds.case"
    /// 􀹦
    case earbudsCaseFill = "earbuds.case.fill"
    /// 􀠦 This symbol may not be modified and may only be used to refer to Apple's EarPods.
    case earpods = "earpods"
    /// 􀟥 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airpods = "airpods"
    /// 􀲋 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airpodRight = "airpod.right"
    /// 􀲌 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airpodLeft = "airpod.left"
    /// 􀹧 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodsChargingCase = "airpods.chargingcase"
    /// 􀹨 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodsChargingCaseFill = "airpods.chargingcase.fill"
    /// 􀹩 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodsChargingCaseWireless = "airpods.chargingcase.wireless"
    /// 􀹪 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodsChargingCaseWirelessFill = "airpods.chargingcase.wireless.fill"
    /// 􀪷 This symbol may not be modified and may only be used to refer to Apple's AirPods Pro.
    case airPodsPro = "airpodspro"
    /// 􀲍 This symbol may not be modified and may only be used to refer to Apple's AirPods Pro.
    case airPodProRight = "airpodpro.right"
    /// 􀲎 This symbol may not be modified and may only be used to refer to Apple's AirPods Pro.
    case airPodProLeft = "airpodpro.left"
    /// 􀹫  This symbol may not be modified and may only be used to refer to Apple's AirPods Pro.
    case airPodsProChargingCaseWireless = "airpodspro.chargingcase.wireless"
    /// 􀹬  This symbol may not be modified and may only be used to refer to Apple's AirPods Pro.
    case airPodsProChargingCaseWirelessFill = "airpodspro.chargingcase.wireless.fill"
    /// 􁄡 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodsGen3 = "airpods.gen3"
    /// 􁄢 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodGen3Right = "airpod.gen3.right"
    /// 􁄣 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodGen3Left = "airpod.gen3.left"
    /// 􁅐 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodsGen3ChargingCaseWireless = "airpods.gen3.chargingcase.wireless"
    /// 􁅑 This symbol may not be modified and may only be used to refer to Apple's AirPods.
    case airPodsGen3ChargingCaseWirelessFill = "airpods.gen3.chargingcase.wireless.fill"
    /// 􀺒 This symbol may not be modified and may only be used to refer to Beats earphones.
    case beatsEarphones = "beats.earphones"
    /// 􀹭 This symbol may not be modified and may only be used to refer to Beats Powerbeats Pro.
    case beatsPowerbeatsPro = "beats.powerbeatspro"
    /// 􀹮 This symbol may not be modified and may only be used to refer to Beats Powerbeats Pro.
    case beatsPowerbeatsProRight = "beats.powerbeatspro.right"
    /// 􀹯 This symbol may not be modified and may only be used to refer to Beats Powerbeats Pro.
    case beatsPowerbeatsProLeft = "beats.powerbeatspro.left"
    /// 􀻔 This symbol may not be modified and may only be used to refer to Beats Powerbeats.
    case beatsPowerbeats = "beats.powerbeats"
    /// 􀺯 This symbol may not be modified and may only be used to refer to Beats Powerbeats3.
    case beatsPowerbeats3 = "beats.powerbeats3"
    /// 􀾢 This symbol may not be modified and may only be used to refer to Beats Studio Buds.
    case beatsStudioBuds = "beats.studiobuds"
    /// 􀾣 This symbol may not be modified and may only be used to refer to Beats Studio Buds.
    case beatsStudioBudLeft = "beats.studiobud.left"
    /// 􀾤 This symbol may not be modified and may only be used to refer to Beats Studio Buds.
    case beatsStudioBudRight = "beats.studiobud.right"
    /// 􀾥 This symbol may not be modified and may only be used to refer to Beats Studio Buds case.
    case beatsStudioBudsChargingCase = "beats.studiobuds.chargingcase"
    /// 􀾦 This symbol may not be modified and may only be used to refer to Beats Studio Buds case.
    case beatsStudioBudsChargingCaseFill = "beats.studiobuds.chargingcase.fill"
    /// 􁅞 This symbol may not be modified and may only be used to refer to Beats Fit Pro.
    case beatsFitPro = "beats.fit.pro"
    /// 􁅟 This symbol may not be modified and may only be used to refer to Beats Fit Pro.
    case beatsFitProLeft = "beats.fit.pro.left"
    /// 􁅠 This symbol may not be modified and may only be used to refer to Beats Fit Pro.
    case beatsFitProRight = "beats.fit.pro.right"
    /// 􁅡 This symbol may not be modified and may only be used to refer to Beats Fit Pro case.
    case beatsFitProChargingCase = "beats.fit.pro.chargingcase"
    /// 􁅢 This symbol may not be modified and may only be used to refer to Beats Fit Pro case.
    case beatsFitProChargingCaseFill = "beats.fit.pro.chargingcase.fill"
    /// 􀹰 This symbol may not be modified and may only be used to refer to Beats Powerbeats Pro case.
    case beatsPowerbeatsProChargingCase = "beats.powerbeatspro.chargingcase"
    /// 􀹱 This symbol may not be modified and may only be used to refer to Beats Powerbeats Pro case.
    case beatsPowerbeatsProChargingCaseFill = "beats.powerbeatspro.chargingcase.fill"
    /// 􀷧 This symbol may not be modified and may only be used to refer to Apple's HomePod mini.
    case homePodMini = "homepodmini"
    /// 􀷨 This symbol may not be modified and may only be used to refer to Apple's HomePod mini.
    case homePodMiniFill = "homepodmini.fill"
    /// 􀷩 This symbol may not be modified and may only be used to refer to Apple's HomePod mini.
    case homePodMini2 = "homepodmini2"
    /// 􀷪 This symbol may not be modified and may only be used to refer to Apple's HomePod mini.
    case homePodMini2Fill = "homepodmini2.fill"
    /// 􀷫 This symbol may not be modified and may only be used to refer to Apple's HomePod and HomePod mini.
    case homePodAndHomePodMini = "homepod.and.homepodmini"
    /// 􀷬 This symbol may not be modified and may only be used to refer to Apple's HomePod and HomePod mini.
    case homePodAndHomePodMiniFill = "homepod.and.homepodmini.fill"
    /// 􀷭 This symbol may not be modified and may only be used to refer to Apple's HomePod mini.
    case hifiSpeakerAndHomePodMini = "hifispeaker.and.homepodmini"
    /// 􀷮 This symbol may not be modified and may only be used to refer to Apple's HomePod mini.
    case hifiSpeakerAndHomePodMiniFill = "hifispeaker.and.homepodmini.fill"
    /// 􀟢 This symbol may not be modified and may only be used to refer to Apple's HomePod.
    case homePod = "homepod"
    /// 􀟣 This symbol may not be modified and may only be used to refer to Apple's HomePod.
    case homePodFill = "homepod.fill"
    /// 􀮍 This symbol may not be modified and may only be used to refer to Apple's HomePod.
    case homePod2 = "homepod.2"
    /// 􀟳 This symbol may not be modified and may only be used to refer to Apple's HomePod.
    case homePod2Fill = "homepod.2.fill"
    /// 􀮎 This symbol may not be modified and may only be used to refer to Apple's HomePod.
    case hifiSpeakerAndHomePod = "hifispeaker.and.homepod"
    /// 􀟴 This symbol may not be modified and may only be used to refer to Apple's HomePod.
    case hifiSpeakerAndHomePodFill = "hifispeaker.and.homepod.fill"
    /// 􀝎
    case hifiSpeaker = "hifispeaker"
    /// 􀝏
    case hifiSpeakerFill = "hifispeaker.fill"
    /// 􀟵
    case hifiSpeaker2 = "hifispeaker.2"
    /// 􀟶
    case hifiSpeaker2Fill = "hifispeaker.2.fill"
    /// 􀨫 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTV = "appletv"
    /// 􀡴 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVFill = "appletv.fill"
    /// 􀺌 This symbol may not be modified and may only be used to refer to Apple's HomePod and Apple TV.
    case homePodAndAppleTV = "homepod.and.appletv"
    /// 􀺍 This symbol may not be modified and may only be used to refer to Apple's HomePod and Apple TV.
    case homePodAndAppleTVFill = "homepod.and.appletv.fill"
    /// 􀻹 This symbol may not be modified and may only be used to refer to Apple's HomePod mini and Apple TV.
    case homePodMiniAndAppleTV = "homepodmini.and.appletv"
    /// 􀻺 This symbol may not be modified and may only be used to refer to Apple's HomePod mini and Apple TV.
    case homePodMiniAndAppleTVFill = "homepodmini.and.appletv.fill"
    /// 􀻻 This symbol may not be modified and may only be used to refer to Apple TV.
    case hifiSpeakerAndAppleTV = "hifispeaker.and.appletv"
    /// 􀻼 This symbol may not be modified and may only be used to refer to Apple TV.
    case hifiSpeakerAndAppleTVFill = "hifispeaker.and.appletv.fill"
    /// 􀼩 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen1 = "appletvremote.gen1"
    /// 􀼪 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen1Fill = "appletvremote.gen1.fill"
    /// 􀼫 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen2 = "appletvremote.gen2"
    /// 􀼬 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen2Fill = "appletvremote.gen2.fill"
    /// 􀝩 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen3 = "appletvremote.gen3"
    /// 􀝪 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen3Fill = "appletvremote.gen3.fill"
    /// 􀼧 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen4 = "appletvremote.gen4"
    /// 􀼨 This symbol may not be modified and may only be used to refer to Apple TV.
    case appleTVRemoteGen4Fill = "appletvremote.gen4.fill"
    /// 􁓺
    case avRemote = "av.remote"
    /// 􁓻
    case avRemoteFill = "av.remote.fill"
    /// 􀺓 This symbol may not be modified and may only be used to refer to Apple's MagSafe Battery Pack.
    case magsafeBatteryPack = "magsafe.batterypack"
    /// 􀺔 This symbol may not be modified and may only be used to refer to Apple's MagSafe Battery Pack.
    case magsafeBatteryPackFill = "magsafe.batterypack.fill"
    /// 􀺥
    case mediaStick = "mediaStick"
    /// 􀺦
    case cableConnector = "cable.connector"
    /// 􀴞
    case cableConnectorHorizontal = "cable.connector.horizontal"
    /// 􀎲
    case tv = "tv"
    /// 􀒶
    case tvFill = "tv.fill"
    /// 􀷘
    case tvInsetFilled = "tv.inset.filled"
    /// 􀎳
    case tvCircle = "tv.circle"
    /// 􀎴
    case tvCircleFill = "tv.circle.fill"
    /// 􁅋
    case sparklesTV = "sparkles.tv"
    /// 􁅌
    case sparklesTVFill = "sparkles.tv.fill"
    /// 􀦽
    case _4kTV = "4k.tv"
    /// 􀦾
    case _4kTVFill = "4k.tv.fill"
    /// 􀎵
    case musicNoteTV = "music.note.tv"
    /// 􀒷
    case musicNoteTVFill = "music.note.tv.fill"
    /// 􀵨
    case playTV = "play.tv"
    /// 􀵩
    case playTVFill = "play.tv.fill"
    /// 􀵪
    case photoTV = "photo.tv"
    /// 􀫑
    case tvAndHifiSpeakerFill = "tv.and.hifispeaker.fill"
    /// 􀲰
    case tvAndMediaBox = "tv.and.mediabox"
    /// 􁝡
    case tvAndMediaBoxFill = "tv.and.mediabox.fill"
    /// 􀙘
    case car = "car"
    /// 􀙙
    case carFill = "car.fill"
    /// 􀭯
    case carCircle = "car.circle"
    /// 􀭰
    case carCircleFill = "car.circle.fill"
    /// 􁢱
    case carFrontWavesUp = "car.front.waves.up"
    /// 􁢲
    case carFrontWavesUpFill = "car.front.waves.up.fill"
    /// 􀽛
    case carRear = "car.rear"
    /// 􀽜
    case carRearFill = "car.rear.fill"
    /// 􀡞
    case boltCar = "bolt.car"
    /// 􀝃
    case boltCarFill = "bolt.car.fill"
    /// 􁄲
    case boltCarCircle = "bolt.car.circle"
    /// 􁄳
    case boltCarCircleFill = "bolt.car.circle.fill"
    /// 􀝄
    case car2 = "car.2"
    /// 􀝅
    case car2Fill = "car.2.fill"
    /// 􀪓
    case hearingDeviceEar = "hearingdevice.ear"
    /// 􁉗
    case hearingDeviceEarFill = "hearingdevice.ear.fill"
    /// 􁎏
    case hearingDeviceAndSignalMeter = "hearingdevice.and.signal.meter"
    /// 􁎐
    case hearingDeviceAndSignalMeterFill = "hearingdevice.and.signal.meter.fill"
    /// 􀛸
    case gameController = "gamecontroller"
    /// 􀛹
    case gameControllerFill = "gamecontroller.fill"

    var symbol: String {
        switch self {
        case .keyboard:
            return "􀇳"
        case .keyboardFill:
            return "􀺑"
        case .keyboardBadgeEllipsis:
            return "􀫒"
        case .keyboardBadgeEllipsisFill:
            return "􁚏"
        case .keyboardBadgeEye:
            return "􁔕"
        case .keyboardBadgeEyeFill:
            return "􁚐"
        case .keyboardChevronCompactDown:
            return "􀓖"
        case .keyboardChevronCompactDownFill:
            return "􁚑"
        case .keyboardChevronCompactLeft:
            return "􀣭"
        case .keyboardChevronCompactLeftFill:
            return "􁚒"
        case .keyboardOneHandedLeft:
            return "􀞹"
        case .keyboardOneHandedLeftFill:
            return "􁚓"
        case .keyboardOneHandedRight:
            return "􀞺"
        case .keyboardOneHandedRightFill:
            return "􁚔"
        case .printer:
            return "􀎚"
        case .printerFill:
            return "􀎛"
        case .printerFilledAndPaper:
            return "􀪾"
        case .printerDotMatrix:
            return "􀪞"
        case .printerDotMatrixFill:
            return "􀪟"
        case .printerDotMatrixFilledAndPaper:
            return "􀪿"
        case .scanner:
            return "􀪊"
        case .scannerFill:
            return "􀪋"
        case .faxMachine:
            return "􀪌"
        case .faxMachineFill:
            return "􀪍"
        case .airTagRadioWavesForward:
            return "􁄼"
        case .airTagRadioWavesForwardFill:
            return "􁄽"
        case .airTag:
            return "􁄾"
        case .airTagFill:
            return "􁄿"
        case .display:
            return "􀢹"
        case .playDisplay:
            return "􁏴"
        case .lockDisplay:
            return "􀼑"
        case .lockOpenDisplay:
            return "􀼜"
        case .displayAndArrowDown:
            return "􀶽"
        case .displayTriangleBadgeExclamationMark:
            return "􀨦"
        case .display2:
            return "􀨧"
        case .desktopComputer:
            return "􀙗"
        case .playDesktopComputer:
            return "􁏳"
        case .lockDesktopComputer:
            return "􀼒"
        case .lockOpenDesktopComputer:
            return "􀼝"
        case .desktopComputerAndArrowDown:
            return "􀶾"
        case .desktopComputerTriangleBadgeExclamationMark:
            return "􁃃"
        case .pc:
            return "􀥺"
        case .macProGen1:
            return "􀪲"
        case .macProGen1Fill:
            return "􀼢"
        case .macProGen2:
            return "􀦱"
        case .macProGen2Fill:
            return "􀦮"
        case .macProGen3:
            return "􀪱"
        case .macProGen3Fill:
            return "􀼣"
        case .macProGen3Server:
            return "􀨳"
        case .serverRack:
            return "􀪬"
        case .xServe:
            return "􀧘"
        case .laptopComputer:
            return "􀟛"
        case .laptopComputerSlash:
            return "􁊭"
        case .playLaptopComputer:
            return "􁏵"
        case .lockLaptopComputer:
            return "􀼓"
        case .lockOpenLaptopComputer:
            return "􀼞"
        case .laptopComputerAndArrowDown:
            return "􀶿"
        case .laptopComputerTriangleBadgeExclamationMark:
            return "􁃂"
        case .macbookAndIphone:
            return "􀬩"
        case .macbookAndIpad:
            return "􁘞"
        case .macmini:
            return "􀪯"
        case .macminiFill:
            return "􀪰"
        case .macstudio:
            return "􁏍"
        case .macstudioFill:
            return "􁏎"
        case .airPortExpress:
            return "􀦯"
        case .airPortExtreme:
            return "􀑝"
        case .airPortExtremeTower:
            return "􀦰"
        case .ipod:
            return "􀢺"
        case .iPodShuffleGen1:
            return "􀫨"
        case .iPodShuffleGen2:
            return "􀫩"
        case .iPodShuffleGen3:
            return "􀫪"
        case .iPodShuffleGen4:
            return "􀫫"
        case .iPodTouch:
            return "􀫧"
        case .iPodTouchSlash:
            return "􁂲"
        case .iPodTouchLandscape:
            return "􀴐"
        case .flipPhone:
            return "􀪴"
        case .candyBarPhone:
            return "􀪳"
        case .iPhoneGen1:
            return "􀟝"
        case .iPhoneGen1Circle:
            return "􁄥"
        case .iPhoneGen1CircleFill:
            return "􁄦"
        case .iPhoneGen1Landscape:
            return "􀴎"
        case .iPhoneGen1RadioWavesLeftAndRight:
            return "􀡆"
        case .iPhoneGen1RadioWavesLeftAndRightCircle:
            return "􁅚"
        case .iPhoneGen1RadioWavesLeftAndRightCircleFill:
            return "􁅛"
        case .iPhoneGen1Slash:
            return "􀨴"
        case .iPhoneGen1SlashCircle:
            return "􁄧"
        case .iPhoneGen1SlashFill:
            return "􁄨"
        case .iPhoneGen1BadgePlay:
            return "􀐶"
        case .iPhoneGen2:
            return "􁟜"
        case .iPhoneGen2Circle:
            return "􁟝"
        case .iPhoneGen2CircleFill:
            return "􁟞"
        case .iPhoneGen2Landscape:
            return "􁟟"
        case .iPhoneGen2RadioWavesLeftAndRight:
            return "􁟠"
        case .iPhoneGen2RadioWavesLeftAndRightCircle:
            return "􁟡"
        case .iPhoneGen2RadioWavesLeftAndRightCircleFill:
            return "􁟢"
        case .iPhoneGen2Slash:
            return "􁟣"
        case .iPhoneGen2SlashCircle:
            return "􁟤"
        case .iPhoneGen2SlashCircleFill:
            return "􁟥"
        case .iPhoneGen2BadgePlay:
            return "􁟦"
        case .iPhoneGen3:
            return "􁊮"
        case .iPhoneGen3Circle:
            return "􁊯"
        case .iPhoneGen3CircleFill:
            return "􁊰"
        case .iPhoneGen3Landscape:
            return "􁊱"
        case .iPhoneGen3RadioWavesLeftAndRight:
            return "􁊲"
        case .iPhoneGen3RadioWavesLeftAndRightCircle:
            return "􁊳"
        case .iPhoneGen3RadioWavesLeftAndRightCircleFill:
            return "􁊴"
        case .iPhoneGen3Slash:
            return "􁊵"
        case .iPhoneGen3SlashCircle:
            return "􁊶"
        case .iPhoneGen3SlashCircleFill:
            return "􁊷"
        case .iPhoneGen3BadgePlay:
            return "􁊸"
        case .iPhone:
            return "􀟜"
        case .iPhoneCircle:
            return "􁄩"
        case .iPhoneCircleFill:
            return "􁄪"
        case .iPhoneLandscape:
            return "􀴏"
        case .iPhoneRadioWavesLeftAndRight:
            return "􀡇"
        case .iPhoneRadioWavesLeftAndRightCircle:
            return "􁅜"
        case .iPhoneRadioWavesLeftAndRightCircleFill:
            return "􁅝"
        case .iPhoneSlash:
            return "􀨵"
        case .iPhoneSlashCircle:
            return "􁄫"
        case .iPhoneSlashCircleFill:
            return "􁄬"
        case .iPhoneBadgePlay:
            return "􀴑"
        case .lockIphone:
            return "􀼔"
        case .lockOpenIphone:
            return "􀼟"
        case .iphoneAndArrowForward:
            return "􀶼"
        case .arrowTurnUpForwardIphone:
            return "􀬫"
        case .arrowTurnUpForwardIphoneFill:
            return "􀬬"
        case .iphoneRearCamera:
            return "􀾖"
        case .appsIphone:
            return "􀟞"
        case .appsIphoneBadgePlus:
            return "􀯖"
        case .appsIphoneLandscape:
            return "􀮔"
        case .platterFilledTopIphone:
            return "􁊿"
        case .platterFilledBottomIphone:
            return "􁋀"
        case .platterFilledTopAndArrowUpIphone:
            return "􁋁"
        case .platterFilledBottomAndArrowDownIphone:
            return "􁋂"
        case .platter2FilledIphone:
            return "􀾩"
        case .platter2FilledIphoneLandscape:
            return "􀾪"
        case .iPhoneSmartBatteryCaseGen2:
            return "􀺏"
        case .iPhoneSmartBatteryCaseGen1:
            return "􀺐"
        case .iPadGen1:
            return "􀟟"
        case .iPadGen1BadgePlay:
            return "􀴒"
        case .iPadGen1Landscape:
            return "􀥓"
        case .iPadGen1LandscapeBadgePlay:
            return "􀵑"
        case .iPadGen2:
            return "􁟧"
        case .iPadGen2BadgePlay:
            return "􁟨"
        case .iPadGen2Landscape:
            return "􁟩"
        case .iPadGen2LandscapeBadgePlay:
            return "􁟪"
        case .iPad:
            return "􀟠"
        case .ipadBadgePlay:
            return "􀴓"
        case .iPadLandscape:
            return "􀥔"
        case .iPadLandscapeBadgePlay:
            return "􀵒"
        case .iPadAndIphone:
            return "􁄟"
        case .iPadAndIphoneSlash:
            return "􁋟"
        case .lockIpad:
            return "􀼕"
        case .lockOpenIpad:
            return "􀼠"
        case .iPadAndArrowForward:
            return "􀷀"
        case .iPadRearCamera:
            return "􁀲"
        case .appsIpad:
            return "􀮕"
        case .appsIpadLandscape:
            return "􀮖"
        case .platter2FilledIpad:
            return "􁁍"
        case .platter2FilledIpadLandscape:
            return "􁁎"
        case .applePencil:
            return "􀺮"
        case .magicMouse:
            return "􀺰"
        case .magicMouseFill:
            return "􀺱"
        case .computerMouse:
            return "􀺣"
        case .computerMouseFill:
            return "􀺤"
        case .appleWatch:
            return "􀟤"
        case .appleWatchWatchFace:
            return "􀫋"
        case .exclamationMarkAppleWatch:
            return "􀵄"
        case .lockAppleWatch:
            return "􀵅"
        case .lockOpenAppleWatch:
            return "􀼡"
        case .appleWatchRadioWavesLeftAndRight:
            return "􀢷"
        case .appleWatchSlash:
            return "􀨶"
        case .appleWatchSideRight:
            return "􀸎"
        case .watchFaceAppleWatchCase:
            return "􀺗"
        case .appleWatchCaseInsetFilled:
            return "􀴪"
        case .platterFilledTopAppleWatchCase:
            return "􁃄"
        case .platterFilledBottomAppleWatchCase:
            return "􁃅"
        case .platterTopAppleWatchCase:
            return "􁃆"
        case .platterBottomAppleWatchCase:
            return "􁃇"
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
        case .digitalCrownHorizontalArrowClockwise:
            return "􀻱"
        case .digitalCrownHorizontalArrowClockwiseFill:
            return "􀻲"
        case .digitalCrownHorizontalArrowCounterclockwise:
            return "􀻳"
        case .digitalCrownHorizontalArrowCounterclockwiseFill:
            return "􀻴"
        case .digitalCrownHorizontalPress:
            return "􀴣"
        case .digitalCrownHorizontalPressFill:
            return "􀴤"
        case .airPodsMax:
            return "􀺹"
        case .beatsHeadphones:
            return "􀺭"
        case .headphones:
            return "􀑈"
        case .headphonesCircle:
            return "􀒾"
        case .headphonesCircleFill:
            return "􀒿"
        case .earbuds:
            return "􀸸"
        case .earbudsCase:
            return "􀹥"
        case .earbudsCaseFill:
            return "􀹦"
        case .earpods:
            return "􀠦"
        case .airpods:
            return "􀟥"
        case .airpodRight:
            return "􀲋"
        case .airpodLeft:
            return "􀲌"
        case .airPodsChargingCase:
            return "􀹧"
        case .airPodsChargingCaseFill:
            return "􀹨"
        case .airPodsChargingCaseWireless:
            return "􀹩"
        case .airPodsChargingCaseWirelessFill:
            return "􀹪"
        case .airPodsPro:
            return "􀪷"
        case .airPodProRight:
            return "􀲍"
        case .airPodProLeft:
            return "􀲎"
        case .airPodsProChargingCaseWireless:
            return "􀹫"
        case .airPodsProChargingCaseWirelessFill:
            return "􀹬"
        case .airPodsGen3:
            return "􁄡"
        case .airPodGen3Right:
            return "􁄢"
        case .airPodGen3Left:
            return "􁄣"
        case .airPodsGen3ChargingCaseWireless:
            return "􁅐"
        case .airPodsGen3ChargingCaseWirelessFill:
            return "􁅑"
        case .beatsEarphones:
            return "􀺒"
        case .beatsPowerbeatsPro:
            return "􀹭"
        case .beatsPowerbeatsProRight:
            return "􀹮"
        case .beatsPowerbeatsProLeft:
            return "􀹯"
        case .beatsPowerbeats:
            return "􀻔"
        case .beatsPowerbeats3:
            return "􀺯"
        case .beatsStudioBuds:
            return "􀾢"
        case .beatsStudioBudLeft:
            return "􀾣"
        case .beatsStudioBudRight:
            return "􀾤"
        case .beatsStudioBudsChargingCase:
            return "􀾥"
        case .beatsStudioBudsChargingCaseFill:
            return "􀾦"
        case .beatsFitPro:
            return "􁅞"
        case .beatsFitProLeft:
            return "􁅟"
        case .beatsFitProRight:
            return "􁅠"
        case .beatsFitProChargingCase:
            return "􁅡"
        case .beatsFitProChargingCaseFill:
            return "􁅢"
        case .beatsPowerbeatsProChargingCase:
            return "􀹰"
        case .beatsPowerbeatsProChargingCaseFill:
            return "􀹱"
        case .homePodMini:
            return "􀷧"
        case .homePodMiniFill:
            return "􀷨"
        case .homePodMini2:
            return "􀷩"
        case .homePodMini2Fill:
            return "􀷪"
        case .homePodAndHomePodMini:
            return "􀷫"
        case .homePodAndHomePodMiniFill:
            return "􀷬"
        case .hifiSpeakerAndHomePodMini:
            return "􀷭"
        case .hifiSpeakerAndHomePodMiniFill:
            return "􀷮"
        case .homePod:
            return "􀟢"
        case .homePodFill:
            return "􀟣"
        case .homePod2:
            return "􀮍"
        case .homePod2Fill:
            return "􀟳"
        case .hifiSpeakerAndHomePod:
            return "􀮎"
        case .hifiSpeakerAndHomePodFill:
            return "􀟴"
        case .hifiSpeaker:
            return "􀝎"
        case .hifiSpeakerFill:
            return "􀝏"
        case .hifiSpeaker2:
            return "􀟵"
        case .hifiSpeaker2Fill:
            return "􀟶"
        case .appleTV:
            return "􀨫"
        case .appleTVFill:
            return "􀡴"
        case .homePodAndAppleTV:
            return "􀺌"
        case .homePodAndAppleTVFill:
            return "􀺍"
        case .homePodMiniAndAppleTV:
            return "􀻹"
        case .homePodMiniAndAppleTVFill:
            return "􀻺"
        case .hifiSpeakerAndAppleTV:
            return "􀻻"
        case .hifiSpeakerAndAppleTVFill:
            return "􀻼"
        case .appleTVRemoteGen1:
            return "􀼩"
        case .appleTVRemoteGen1Fill:
            return "􀼪"
        case .appleTVRemoteGen2:
            return "􀼫"
        case .appleTVRemoteGen2Fill:
            return "􀼬"
        case .appleTVRemoteGen3:
            return "􀝩"
        case .appleTVRemoteGen3Fill:
            return "􀝪"
        case .appleTVRemoteGen4:
            return "􀼧"
        case .appleTVRemoteGen4Fill:
            return "􀼨"
        case .avRemote:
            return "􁓺"
        case .avRemoteFill:
            return "􁓻"
        case .magsafeBatteryPack:
            return "􀺓"
        case .magsafeBatteryPackFill:
            return "􀺔"
        case .mediaStick:
            return "􀺥"
        case .cableConnector:
            return "􀺦"
        case .cableConnectorHorizontal:
            return "􀴞"
        case .tv:
            return "􀎲"
        case .tvFill:
            return "􀒶"
        case .tvInsetFilled:
            return "􀷘"
        case .tvCircle:
            return "􀎳"
        case .tvCircleFill:
            return "􀎴"
        case .sparklesTV:
            return "􁅋"
        case .sparklesTVFill:
            return "􁅌"
        case ._4kTV:
            return "􀦽"
        case ._4kTVFill:
            return "􀦾"
        case .musicNoteTV:
            return "􀎵"
        case .musicNoteTVFill:
            return "􀒷"
        case .playTV:
            return "􀵨"
        case .playTVFill:
            return "􀵩"
        case .photoTV:
            return "􀵪"
        case .tvAndHifiSpeakerFill:
            return "􀫑"
        case .tvAndMediaBox:
            return "􀲰"
        case .tvAndMediaBoxFill:
            return "􁝡"
        case .car:
            return "􀙘"
        case .carFill:
            return "􀙙"
        case .carCircle:
            return "􀭯"
        case .carCircleFill:
            return "􀭰"
        case .carFrontWavesUp:
            return "􁢱"
        case .carFrontWavesUpFill:
            return "􁢲"
        case .carRear:
            return "􀽛"
        case .carRearFill:
            return "􀽜"
        case .boltCar:
            return "􀡞"
        case .boltCarFill:
            return "􀝃"
        case .boltCarCircle:
            return "􁄲"
        case .boltCarCircleFill:
            return "􁄳"
        case .car2:
            return "􀝄"
        case .car2Fill:
            return "􀝅"
        case .hearingDeviceEar:
            return "􀪓"
        case .hearingDeviceEarFill:
            return "􁉗"
        case .hearingDeviceAndSignalMeter:
            return "􁎏"
        case .hearingDeviceAndSignalMeterFill:
            return "􁎐"
        case .gameController:
            return "􀛸"
        case .gameControllerFill:
            return "􀛹"
        }
    }
}
