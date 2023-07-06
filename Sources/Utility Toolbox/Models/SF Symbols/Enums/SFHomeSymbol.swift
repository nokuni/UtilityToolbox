//
//  SFHomeSymbol.swift
//  
//
//  Created by Yann Christophe Maertens on 06/07/2023.
//

import Foundation

public enum SFHomeSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􁏚
    case figureWalkArrival = "figure.walk.arrival"
    /// 􁏛
    case figureWalkDeparture = "figure.walk.departure"
    /// 􁐑
    case figureWalkMotion = "figure.walk.motion"
    /// 􁷚
    case figureWalkMotionTriangleBadgeExclamationMark = "figure.walk.motion.trianglebadge.exclamationmark"
    case homekit = "homekit"
    /// 􀎞
    case house = "house"
    /// 􀎟
    case houseFill = "house.fill"
    /// 􀥆
    case houseCircle = "house.circle"
    /// 􀥇
    case houseCircleFill = "house.circle.fill"
    /// 􀛭
    case lightBulb = "lightbulb"
    /// 􀛮
    case lightBulbFill = "lightbulb.fill"
    /// 􁇖
    case lightBulbCircle = "lightbulb.circle"
    /// 􁇗
    case lightBulbCircleFill = "lightbulb.circle.fill"
    /// 􀞃
    case lightBulbSlash = "lightbulb.slash"
    /// 􀞄
    case lightBulbSlashFill = "lightbulb.slash.fill"
    /// 􁷖
    case lightBulbMin = "lightbulb.min"
    /// 􁷗
    case lightBulbMinFill = "lightbulb.min.fill"
    /// 􁷘
    case lightBulbMax = "lightbulb.max"
    /// 􁷙
    case lightBulbMaxFill = "lightbulb.max.fill"
    /// 􁹄
    case lightBulbMinBadgeExclamationMark = "lightbulb.min.badge.exclamationmark"
    /// 􁹅
    case lightBulbMinBadgeExclamationMarkFill = "lightbulb.min.badge.exclamationmark.fill"
    /// 􁓼
    case lightBulb2 = "lightbulb.2"
    /// 􁓽
    case lightBulb2Fill = "lightbulb.2.fill"
    /// 􁎦
    case lightBulbLED = "lightbulb.led"
    /// 􁌝
    case lightBulbLEDFill = "lightbulb.led.fill"
    /// 􁏁
    case lightBulbLEDWide = "lightbulb.led.wide"
    /// 􁏂
    case lightBulbLEDWideFill = "lightbulb.led.wide.fill"
    /// 􁔄
    case fanOscillation = "fan.oscillation"
    /// 􁔅
    case fanOscillationFill = "fan.oscillation.fill"
    /// 􁁋
    case fan = "fan"
    /// 􁁌
    case fanFill = "fan.fill"
    /// 􁝚
    case fanSlash = "fan.slash"
    /// 􁝛
    case fanSlashFill = "fan.slash.fill"
    /// 􁌙
    case fanDesk = "fan.desk"
    /// 􁒚
    case fanDeskFill = "fan.desk.fill"
    /// 􁌚
    case fanFloor = "fan.floor"
    /// 􁒛
    case fanFloorFill = "fan.floor.fill"
    /// 􁌛
    case fanCeiling = "fan.ceiling"
    /// 􁎹
    case fanCeilingFill = "fan.ceiling.fill"
    /// 􁌜
    case fanAndLightCeiling = "fan.and.light.ceiling"
    /// 􁎺
    case fanAndLightCeilingFill = "fan.and.light.ceiling.fill"
    /// 􁎶
    case lampDesk = "lamp.desk"
    /// 􁌞
    case lampDeskFill = "lamp.desk.fill"
    /// 􁏀
    case lampTable = "lamp.table"
    /// 􁌟
    case lampTableFill = "lamp.table.fill"
    /// 􁎿
    case lampFloor = "lamp.floor"
    /// 􁌠
    case lampFloorFill = "lamp.floor.fill"
    /// 􁌡
    case lampCeiling = "lamp.ceiling"
    /// 􁎻
    case lampCeilingFill = "lamp.ceiling.fill"
    /// 􁒨
    case lampCeilingInverse = "lamp.ceiling.inverse"
    /// 􁎾
    case lightRecessed = "light.recessed"
    /// 􁌢
    case lightRecessedFill = "light.recessed.fill"
    /// 􁒩
    case lightRecessedInverse = "light.recessed.inverse"
    /// 􁏘
    case lightRecessed3 = "light.recessed.3"
    /// 􁏙
    case lightRecessed3Fill = "light.recessed.3.fill"
    /// 􁒫
    case lightRecessed3Inverse = "light.recessed.3.inverse"
    /// 􁎽
    case lightPanel = "light.panel"
    /// 􁌣
    case lightPanelFill = "light.panel.fill"
    /// 􁎼
    case lightCylindricalCeiling = "light.cylindrical.ceiling"
    /// 􁌤
    case lightCylindricalCeilingFill = "light.cylindrical.ceiling.fill"
    /// 􁒪
    case lightCylindricalCeilingInverse = "light.cylindrical.ceiling.fill.inverse"
    /// 􁌥
    case lightStrip2 = "light.strip.2"
    /// 􁏒
    case lightStrip2Fill = "light.strip.2.fill"
    /// 􁒜
    case lightRibbon = "light.ribbon"
    /// 􁒝
    case lightRibbonFill = "light.ribbon.fill"
    /// 􁌦
    case chandelier = "chandelier"
    /// 􁏓
    case chandelierFill = "chandelier.fill"
    /// 􁏮
    case lightswitchOn = "lightswitch.on"
    /// 􁏻
    case lightswitchOnFill = "lightswitch.on.fill"
    /// 􁎑
    case lightswitchOnSquare = "lightswitch.on.square"
    /// 􁌧
    case lightswitchOnSquareFill = "lightswitch.on.square.fill"
    /// 􁏯
    case lightswitchOff = "lightswitch.off"
    /// 􁏼
    case lightswitchOffFill = "lightswitch.off.fill"
    /// 􁎒
    case lightswitchOffSquare = "lightswitch.off.square"
    /// 􁌨
    case lightswitchOffSquareFill = "lightswitch.off.square.fill"
    /// 􁏰
    case buttonProgrammable = "button.programmable"
    /// 􁏤
    case buttonProgrammableSquare = "button.programmable.square"
    /// 􁏥
    case buttonProgrammableSquareFill = "button.programmable.square.fill"
    /// 􁕳
    case switchProgrammable = "switch.programmable"
    /// 􁘀
    case switchProgrammableFill = "switch.programmable.fill"
    /// 􁕴
    case switchProgrammableSquare = "switch.programmable.square"
    /// 􁕵
    case switchProgrammableSquareFill = "switch.programmable.square.fill"
    /// 􁌽
    case powerOutletTypeA = "poweroutlet.type.a"
    /// 􁍀
    case powerOutletTypeAFill = "poweroutlet.type.a.fill"
    /// 􀽤
    case powerOutletTypeASquare = "poweroutlet.type.a.square"
    /// 􁌩
    case powerOutletTypeASquareFill = "poweroutlet.type.a.square.fill"
    /// 􁌾
    case powerOutletTypeB = "poweroutlet.type.b"
    /// 􁍁
    case powerOutletTypeBFill = "poweroutlet.type.b.fill"
    /// 􀽥
    case powerOutletTypeBSquare = "poweroutlet.type.b.square"
    /// 􁌼
    case powerOutletTypeBSquareFill = "poweroutlet.type.b.square.fill"
    /// 􁍆
    case powerOutletTypeC = "poweroutlet.type.c"
    /// 􁍇
    case powerOutletTypeCFill = "poweroutlet.type.c.fill"
    /// 􀽦
    case powerOutletTypeCSquare = "poweroutlet.type.c.square"
    /// 􁌫
    case powerOutletTypeCSquareFill = "poweroutlet.type.c.square.fill"
    /// 􁍈
    case powerOutletTypeD = "poweroutlet.type.d"
    /// 􁍉
    case powerOutletTypeDFill = "poweroutlet.type.d.fill"
    /// 􀽧
    case powerOutletTypeDSquare = "poweroutlet.type.d.square"
    /// 􁍊
    case powerOutletTypeDSquareFill = "poweroutlet.type.d.square.fill"
    /// 􁍋
    case powerOutletTypeE = "poweroutlet.type.e"
    /// 􁍌
    case powerOutletTypeEFill = "poweroutlet.type.e.fill"
    /// 􀽨
    case powerOutletTypeESquare = "poweroutlet.type.e.square"
    /// 􁍍
    case powerOutletTypeESquareFill = "poweroutlet.type.e.square.fill"
    /// 􁍎
    case powerOutletTypeF = "poweroutlet.type.f"
    /// 􁍏
    case powerOutletTypeFFill = "poweroutlet.type.f.fill"
    /// 􀽩
    case powerOutletTypeFSquare = "poweroutlet.type.f.square"
    /// 􁍐
    case powerOutletTypeFSquareFill = "poweroutlet.type.f.square.fill"
    /// 􁍑
    case powerOutletTypeG = "poweroutlet.type.g"
    /// 􁍒
    case powerOutletTypeGFill = "poweroutlet.type.g.fill"
    /// 􀽪
    case powerOutletTypeGSquare = "poweroutlet.type.g.square"
    /// 􁌯
    case powerOutletTypeGSquareFill = "poweroutlet.type.g.square.fill"
    /// 􁍓
    case powerOutletTypeH = "poweroutlet.type.h"
    /// 􁍔
    case powerOutletTypeHFill = "poweroutlet.type.h.fill"
    /// 􀽫
    case powerOutletTypeHSquare = "poweroutlet.type.h.square"
    /// 􁍕
    case powerOutletTypeHSquareFill = "poweroutlet.type.h.square.fill"
    /// 􁍖
    case powerOutletTypeI = "poweroutlet.type.i"
    /// 􁍗
    case powerOutletTypeIFill = "poweroutlet.type.i.fill"
    /// 􀽬
    case powerOutletTypeISquare = "poweroutlet.type.i.square"
    /// 􁍘
    case powerOutletTypeISquareFill = "poweroutlet.type.i.square.fill"
    /// 􁍙
    case powerOutletTypeJ = "poweroutlet.type.j"
    /// 􁍚
    case powerOutletTypeJFill = "poweroutlet.type.j.fill"
    /// 􀽭
    case powerOutletTypeJSquare = "poweroutlet.type.j.square"
    /// 􁌱
    case powerOutletTypeJSquareFill = "poweroutlet.type.j.square.fill"
    /// 􁍛
    case powerOutletTypeK = "poweroutlet.type.k"
    /// 􁍜
    case powerOutletTypeKFill = "poweroutlet.type.k.fill"
    /// 􀽮
    case powerOutletTypeKSquare = "poweroutlet.type.k.square"
    /// 􁌮
    case powerOutletTypeKSquareFill = "poweroutlet.type.k.square.fill"
    /// 􁍝
    case powerOutletTypeL = "poweroutlet.type.l"
    /// 􁍞
    case powerOutletTypeLFill = "poweroutlet.type.l.fill"
    /// 􀽯
    case powerOutletTypeLSquare = "poweroutlet.type.l.square"
    /// 􁍟
    case powerOutletTypeLSquareFill = "poweroutlet.type.l.square.fill"
    /// 􁌪
    case powerOutletTypeM = "poweroutlet.type.m"
    /// 􁌬
    case powerOutletTypeMFill = "poweroutlet.type.m.fill"
    /// 􁁻
    case powerOutletTypeMSquare = "poweroutlet.type.m.square"
    /// 􁌳
    case powerOutletTypeMSquareFill = "poweroutlet.type.m.square.fill"
    /// 􁌭
    case powerOutletTypeN = "poweroutlet.type.n"
    /// 􁌰
    case powerOutletTypeNFill = "poweroutlet.type.n.fill"
    /// 􁁼
    case powerOutletTypeNSquare = "poweroutlet.type.n.square"
    /// 􁍠
    case powerOutletTypeNSquareFill = "poweroutlet.type.n.square.fill"
    /// 􁍡
    case powerOutletTypeO = "poweroutlet.type.o"
    /// 􁍢
    case powerOutletTypeOFill = "poweroutlet.type.o.fill"
    /// 􁁽
    case powerOutletTypeOSquare = "poweroutlet.type.o.square"
    /// 􁍣
    case powerOutletTypeOSquareFill = "poweroutlet.type.o.square.fill"
    /// 􁌲
    case poweroutletStrip = "poweroutlet.strip"
    /// 􁓜
    case poweroutletStripFill = "poweroutlet.strip.fill"
    /// 􁜮
    case lightBeaconMin = "light.beacon.min"
    /// 􁜯
    case lightBeaconMinFill = "light.beacon.min.fill"
    /// 􁒰
    case lightBeaconMax = "light.beacon.max"
    /// 􁒱
    case lightBeaconMaxFill = "light.beacon.max.fill"
    /// 􁒲
    case webCamera = "web.camera"
    /// 􁒳
    case webCameraFill = "web.camera.fill"
    /// 􁓟
    case videoDoorbell = "video.doorbell"
    /// 􁓠
    case videoDoorbellFill = "video.doorbell.fill"
    /// 􁒴
    case entryLeverKeypad = "entry.lever.keypad"
    /// 􁒵
    case entryLeverKeypadFill = "entry.lever.keypad.fill"
    /// 􁙏
    case entryLeverKeypadTriangleBadgeExclamationMark = "entry.lever.keypad.trianglebadge.exclamationmark"
    /// 􁙐
    case entryLeverKeypadTriangleBadgeExclamationMarkFill = "entry.lever.keypad.trianglebadge.exclamationmark.fill"
    /// 􁏜
    case doorLeftHandOpen = "door.left.hand.open"
    /// 􁏝
    case doorLeftHandClosed = "door.left.hand.closed"
    /// 􁏨
    case doorRightHandOpen = "door.right.hand.open"
    /// 􁏩
    case doorRightHandClosed = "door.right.hand.closed"
    /// 􁏞
    case doorSlidingLeftHandOpen = "door.sliding.left.hand.open"
    /// 􁏟
    case doorSlidingLeftHandClosed = "door.sliding.left.hand.closed"
    /// 􁏪
    case doorSlidingRightHandOpen = "door.sliding.right.hand.open"
    /// 􁏫
    case doorSlidingRightHandClosed = "door.sliding.right.hand.closed"
    /// 􁏠
    case doorGarageOpen = "door.garage.open"
    /// 􁏡
    case doorGarageClosed = "door.garage.closed"
    /// 􁘠
    case doorGarageOpenTriangleBadgeExclamationMark = "door.garage.open.trianglebadge.exclamationmark"
    /// 􁘡
    case doorGarageClosedTriangleBadgeExclamationMark = "door.garage.closed.trianglebadge.exclamationmark"
    /// 􁏬
    case doorGarageDoubleBayOpen = "door.garage.double.bay.open"
    /// 􁏭
    case doorGarageDoubleBayClosed = "door.garage.double.bay.closed"
    /// 􁘢
    case doorGarageDoubleBayOpenTriangleBadgeExclamationMark = "door.garage.double.bay.open.trianglebadge.exclamationmark"
    /// 􁘣
    case doorGarageDoubleBayClosedTriangleBadgeExclamationMark = "door.garage.double.bay.closed.trianglebadge.exclamationmark"
    /// 􁏦
    case doorFrenchOpen = "door.french.open"
    /// 􁏧
    case doorFrenchClosed = "door.french.closed"
    /// 􁓡
    case pedestrianGateClosed = "pedestrian.gate.closed"
    /// 􁓢
    case pedestrianGateOpen = "pedestrian.gate.open"
    /// 􁑫
    case windowVerticalOpen = "window.vertical.open"
    /// 􁑬
    case windowVerticalClosed = "window.vertical.closed"
    /// 􁑭
    case windowHorizontal = "window.horizontal.open"
    /// 􁑮
    case windowHorizontalClosed = "window.horizontal.closed"
    /// 􁒁
    case windowCeiling = "window.ceiling"
    /// 􁒂
    case windowCeilingClosed = "window.ceiling.closed"
    /// 􁑿
    case windowCasement = "window.casement"
    /// 􁒀
    case windowCasementClosed = "window.casement.closed"
    /// 􁑽
    case windowAwning = "window.awning"
    /// 􁑾
    case windowAwningClosed = "window.awning.closed"
    /// 􁑳
    case blindsVerticalOpen = "blinds.vertical.open"
    /// 􁑴
    case blindsVerticalClosed = "blinds.vertical.closed"
    /// 􁑵
    case blindsHorizontalOpen = "blinds.horizontal.open"
    /// 􁑶
    case blindsHorizontalClosed = "blinds.horizontal.closed"
    /// 􁏢
    case windowShadeOpen = "window.shade.open"
    /// 􁏣
    case windowShadeClosed = "window.shade.closed"
    /// 􁑹
    case rollerShadeOpen = "roller.shade.open"
    /// 􁑺
    case rollerShadeClosed = "roller.shade.closed"
    /// 􁑻
    case romanShadeOpen = "roman.shade.open"
    /// 􁑼
    case romanShadeClosed = "roman.shade.closed"
    /// 􁑷
    case curtainsOpen = "curtains.open"
    /// 􁑸
    case curtainsClosed = "curtains.closed"
    /// 􁓥
    case airPurifier = "air.purifier"
    /// 􁓦
    case airPurifierFill = "air.purifier.fill"
    /// 􁓧
    case dehumidifier = "dehumidifier"
    /// 􁓨
    case dehumidifierFill = "dehumidifier.fill"
    /// 􁘘
    case humidifier = "humidifier"
    /// 􁘙
    case humidifierFill = "humidifier.fill"
    /// 􁔆
    case humidifierAndDroplets = "humidifier.and.droplets"
    /// 􁔇
    case humidifierAndDropletsFill = "humidifier.and.droplets.fill"
    /// 􁓩
    case heaterVertical = "heater.vertical"
    /// 􁓪
    case heaterVerticalFill = "heater.vertical.fill"
    /// 􁓫
    case airConditionerVertical = "air.conditioner.vertical"
    /// 􁓬
    case airConditionerVerticalFill = "air.conditioner.vertical.fill"
    /// 􁓭
    case airConditionerHorizontal = "air.conditioner.horizontal"
    /// 􁓮
    case airConditionerHorizontalFill = "air.conditioner.horizontal.fill"
    /// 􁔌
    case sprinkler = "sprinkler"
    /// 􁔍
    case sprinklerFill = "sprinkler.fill"
    /// 􁒼
    case sprinklerAndDroplets = "sprinkler.and.droplets"
    /// 􁒽
    case sprinklerAndDropletsFill = "sprinkler.and.droplets.fill"
    /// 􁒾
    case spigot = "spigot"
    /// 􁒿
    case spigotFill = "spigot.fill"
    /// 􁓀
    case dropKeypadRectangle = "drop.keypad.rectangle"
    /// 􁓁
    case dropKeypadRectangleFill = "drop.keypad.rectangle.fill"
    /// 􁓆
    case showerSideJet = "shower.sidejet"
    /// 􁓇
    case showerSideJetFill = "shower.sidejet.fill"
    /// 􁓂
    case shower = "shower"
    /// 􁓃
    case showerFill = "shower.fill"
    /// 􁓍
    case showerHandheld = "shower.handheld"
    /// 􁓎
    case showerHandheldFill = "shower.handheld.fill"
    /// 􁐼
    case bathtub = "bathtub"
    /// 􁐽
    case bathtubFill = "bathtub.fill"
    /// 􁒺
    case contactSensor = "contact.sensor"
    /// 􁒻
    case contactSensorFill = "contact.sensor.fill"
    /// 􁔉
    case sensor = "sensor"
    /// 􁔊
    case sensorFill = "sensor.fill"
    /// 􁒶
    case carbonMonoxideCloud = "carbon.monoxide.cloud"
    /// 􁒷
    case carbonMonoxideCloudFill = "carbon.monoxide.cloud.fill"
    /// 􁒸
    case carbonDioxideCloud = "carbon.dioxide.cloud"
    /// 􁒹
    case carbonDioxideCloudFill = "carbon.dioxide.cloud.fill"
    /// 􁓝
    case pipeAndDrop = "pipe.and.drop"
    /// 􁓞
    case pipeAndDropFill = "pipe.and.drop.fill"
    /// 􁒬
    case hifiReceiver = "hifireceiver"
    /// 􁒭
    case hifiReceiverFill = "hifireceiver.fill"
    /// 􁒮
    case videoProjector = "videoprojector"
    /// 􁒯
    case videoProjectorFill = "videoprojector.fill"
    /// 􁓣
    case wifiRouter = "wifi.router"
    /// 􁓤
    case wifiRouterFill = "wifi.router.fill"
    /// 􁓵
    case partyPopper = "party.popper"
    /// 􁓶
    case partyPopperFill = "party.popper.fill"
    /// 􁔎
    case balloon = "balloon"
    /// 􁔏
    case balloonFill = "balloon.fill"
    /// 􁓷
    case balloon2 = "balloon.2"
    /// 􁓸
    case balloon2Fill = "balloon.2.fill"
    /// 􁐅
    case fryingPan = "frying.pan"
    /// 􁐆
    case fryingPanFill = "frying.pan.fill"
    /// 􁐇
    case popcorn = "popcorn"
    /// 􁐈
    case popcornFill = "popcorn.fill"
    /// 􁚱
    case popcornCircle = "popcorn.circle"
    /// 􁚲
    case popcornCircleFill = "popcorn.circle.fill"
    /// 􀙩
    case bedDouble = "bed.double"
    /// 􀙪
    case bedDoubleFill = "bed.double.fill"
    /// 􁁏
    case bedDoubleCircle = "bed.double.circle"
    /// 􁁐
    case bedDoubleCircleFill = "bed.double.circle.fill"
    /// 􁐲
    case sofa = "sofa"
    /// 􁐳
    case sofaFill = "sofa.fill"
    /// 􁐴
    case chairLounge = "chair.lounge"
    /// 􁐵
    case chairLoungeFill = "chair.lounge.fill"
    /// 􁐶
    case chair = "chair"
    /// 􁐷
    case chairFill = "chair.fill"
    /// 􁐰
    case tableFurniture = "table.furniture"
    /// 􁐱
    case tableFurnitureFill = "table.furniture.fill"
    /// 􁐮
    case cabinet = "cabinet"
    /// 􁐯
    case cabinetFill = "cabinet.fill"
    /// 􁐸
    case fireplace = "fireplace"
    /// 􁐹
    case fireplaceFill = "fireplace.fill"
    /// 􁐠
    case washer = "washer"
    /// 􁐡
    case washerFill = "washer.fill"
    /// 􁖒
    case dryer = "dryer"
    /// 􁖓
    case dryerFill = "dryer.fill"
    /// 􁐢
    case dishwasher = "dishwasher"
    /// 􁐣
    case dishwasherFill = "dishwasher.fill"
    /// 􁐤
    case oven = "oven"
    /// 􁐥
    case ovenFill = "oven.fill"
    /// 􁐦
    case stove = "stove"
    /// 􁐧
    case stoveFill = "stove.fill"
    /// 􁕠
    case cooktop = "cooktop"
    /// 􁕡
    case cooktopFill = "cooktop.fill"
    /// 􁐨
    case microwave = "microwave"
    /// 􁐩
    case microwaveFill = "microwave.fill"
    /// 􁐞
    case refrigerator = "refrigerator"
    /// 􁐟
    case refrigeratorFill = "refrigerator.fill"
    /// 􁐪
    case sink = "sink"
    /// 􁐫
    case sinkFill = "sink.fill"
    /// 􁐾
    case toilet = "toilet"
    /// 􁐿
    case toiletFill = "toilet.fill"
    /// 􁞀
    case toiletCircle = "toilet.circle"
    /// 􁞁
    case toiletCircleFill = "toilet.circle.fill"
    /// 􁕋
    case stairs = "stairs"
    /// 􀟻
    case squareSplitBottomRightQuarter = "square.split.bottomrightquarter"
    /// 􀟼
    case squareSplitBottomRightQuarterFill = "square.split.bottomrightquarter.fill"
    /// 􁙍
    case lockTriangleBadgeExclamationMark = "lock.trianglebadge.exclamationmark"
    /// 􁙎
    case lockTriangleBadgeExclamationMarkFill = "lock.trianglebadge.exclamationmark.fill"
    /// 􁜗
    case lockOpenTriangleBadgeExclamationMark = "lock.open.trianglebadge.exclamationmark"
    /// 􁜘
    case lockOpenTriangleBadgeExclamationMarkFill = "lock.open.trianglebadge.exclamationmark.fill"
    /// 􁓺
    case avRemote = "av.remote"
    /// 􁓻
    case avRemoteFill = "av.remote.fill"
}
