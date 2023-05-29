//
//  SFNatureSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 25/05/23.
//

import Foundation

public enum SFNatureSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀵱
    case globeAmericas = "globe.americas"
    /// 􀵲
    case globeAmericasFill = "globe.americas.fill"
    /// 􀵳
    case globeEuropeAfrica = "globe.europe.africa"
    /// 􀵴
    case globeEuropeAfricaFill = "globe.europe.africa.fill"
    /// 􀵵
    case globeAsiaAustralia = "globe.asia.australia"
    /// 􀵶
    case globeAsiaAustraliaFill = "globe.asia.australia.fill"
    /// 􁇲
    case globeCentralSouthAsia = "globe.central.south.asia"
    /// 􁇳
    case globeCentralSouthAsiaFill = "globe.central.south.asia.fill"
    /// 􀆫
    case sunMin = "sun.min"
    /// 􀆬
    case sinMinFill = "sun.min.fill"
    /// 􀆭
    case sunMax = "sun.max"
    /// 􀆮
    case sunMaxFill = "sun.max.fill"
    /// 􀷎
    case sunMaxCircle = "sun.max.circle"
    /// 􀷏
    case sunMaxCircleFill = "sun.max.circle.fill"
    /// 􁜎
    case sunMaxTriangleBadgeExclamationMark = "sun.max.trianglebadge.exclamationmark"
    /// 􁜏
    case sunMaxTriangleBadgeExclamationMarkFill = "sun.max.trianglebadge.exclamationmark.fill"
    /// 􀆱
    case sunrise = "sunrise"
    /// 􀆲
    case sunriseFill = "sunrise.fill"
    /// 􁛁
    case sunriseCircle = "sunrise.circle"
    /// 􁛂
    case sunriseCircleFill = "sunrise.circle.fill"
    /// 􀆳
    case sunset = "sunset"
    /// 􀆴
    case sunsetFill = "sunset.fill"
    /// 􁛃
    case sunsetCircle = "sunset.circle"
    /// 􁛄
    case sunsetCircleFill = "sunset.circle.fill"
    /// 􀻞
    case sunAndHorizon = "sun.and.horizon"
    /// 􀻟
    case sunAndHorizonFill = "sun.and.horizon.fill"
    /// 􁛅
    case sunAndHorizonCircle = "sun.and.horizon.circle"
    /// 􁛆
    case sunAndHorizonCircleFill = "sun.and.horizon.circle.fill"
    /// 􀆵
    case sunDust = "sun.dust"
    /// 􀆶
    case sunDustFill = "sun.dust.fill"
    /// 􁛇
    case sunDustCircle = "sun.dust.circle"
    /// 􁛈
    case sunDustCircleFill = "sun.dust.circle.fill"
    /// 􀆷
    case sunHaze = "sun.haze"
    /// 􀆸
    case sunHazeFill = "sun.haze.fill"
    /// 􁛉
    case sunHazeCircle = "sun.haze.circle"
    /// 􁛊
    case sunHazeCircleFill = "sun.haze.circle.fill"
    /// 􀡈
    case moonPhaseNewMoon = "moonphase.new.moon"
    /// 􀡉
    case moonPhaseWaxingCrescent = "moonphase.waxing.crescent"
    /// 􀡊
    case moonPhaseFirstQuarter = "moonphase.first.quarter"
    /// 􀡋
    case moonPhaseWaxingGibbous = "moonphase.waxing.gibbous"
    /// 􀡌
    case moonPhaseFullMoon = "moonphase.full.moon"
    /// 􀡍
    case moonPhaseWaningGibbous = "moonphase.waning.gibbous"
    /// 􀡎
    case moonPhaseLastQuarter = "moonphase.last.quarter"
    /// 􀡏
    case moonPhaseWaningCrescent = "moonphase.waning.crescent"
    /// 􁐉
    case moonPhaseNewMoonInverse = "moonphase.new.moon.inverse"
    /// 􁐊
    case moonPhaseWaxingCrescentInverse = "moonphase.waxing.crescent.inverse"
    /// 􁐋
    case moonPhaseFirstQuarterInverse = "moonphase.first.quarter.inverse"
    /// 􁐌
    case moonPhaseWaxingGibbousInverse = "moonphase.waxing.gibbous.inverse"
    /// 􁐍
    case moonPhaseFullMoonInverse = "moonphase.full.moon.inverse"
    /// 􁐎
    case moonPhaseWaningGibbousInverse = "moonphase.waning.gibbous.inverse"
    /// 􁐏
    case moonPhaseLastQuarterInverse = "moonphase.last.quarter.inverse"
    /// 􁐐
    case moonPhaseWaningCrescentInverse = "moonphase.waning.crescent.inverse"
    /// 􀆹
    case moon = "moon"
    /// 􀆺
    case moonFill = "moon.fill"
    /// 􀆻
    case moonCircle = "moon.circle"
    /// 􀆼
    case moonCircleFill = "moon.circle.fill"
    /// 􁑯
    case moonHaze = "moon.haze"
    /// 􁑰
    case moonHazeFill = "moon.haze.fill"
    /// 􁜷
    case moonHazeCircle = "moon.haze.circle"
    /// 􁜸
    case moonHazeCircleFill = "moon.haze.circle.fill"
    /// 􀆿
    case sparkles = "sparkles"
    /// 􀇀
    case moonStars = "moon.stars"
    /// 􀇁
    case moonStarsFill = "moon.stars.fill"
    /// 􁛋
    case moonStarsCircle = "moon.stars.circle"
    /// 􁛌
    case moonStarsCircleFill = "moon.stars.circle.fill"
    /// 􀇂
    case cloud = "cloud"
    /// 􀇃
    case cloudFill = "cloud.fill"
    /// 􁛍
    case cloudCircle = "cloud.circle"
    /// 􁛎
    case cloudCircleFill = "cloud.circle.fill"
    /// 􀇄
    case cloudDrizzle = "cloud.drizzle"
    /// 􀇅
    case cloudDrizzleFill = "cloud.drizzle.fill"
    /// 􁛏
    case cloudDrizzleCircle = "cloud.drizzle.circle"
    /// 􁛐
    case cloudDrizzleCircleFill = "cloud.drizzle.circle.fill"
    /// 􀇆
    case cloudRain = "cloud.rain"
    /// 􀇇
    case cloudRainFill = "cloud.rain.fill"
    /// 􁛑
    case cloudRainCircle = "cloud.rain.circle"
    /// 􁛒
    case cloudRainCircleFill = "cloud.rain.circle.fill"
    /// 􀇈
    case cloudHeavyRain = "cloud.heavyrain"
    /// 􀇉
    case cloudHeavyRainFill = "cloud.heavyrain.fill"
    /// 􁛓
    case cloudHeavyRainCircle = "cloud.heavyrain.circle"
    /// 􁛔
    case cloudHeavyRainCircleFill = "cloud.heavyrain.circle.fill"
    /// 􀇊
    case cloudFog = "cloud.fog"
    /// 􀇋
    case cloudFogFill = "cloud.fog.fill"
    /// 􁛕
    case cloudFogCircle = "cloud.fog.circle"
    /// 􁛖
    case cloudFogCircleFill = "cloud.fog.circle.fill"
    /// 􀇌
    case cloudHail = "cloud.hail"
    /// 􀇍
    case cloudHailFill = "cloud.hail.fill"
    /// 􁛗
    case cloudHailCircle = "cloud.hail.circle"
    /// 􁛘
    case cloudHailCircleFill = "cloud.hail.circle.fill"
    /// 􀇎
    case cloudSnow = "cloud.snow"
    /// 􀇏
    case cloudSnowFill = "cloud.snow.fill"
    /// 􁛙
    case cloudSnowCircle = "cloud.snow.circle"
    /// 􁛚
    case cloudSnowCircleFill = "cloud.snow.circle.fill"
    /// 􀇐
    case cloudSleet = "cloud.sleet"
    /// 􀇑
    case cloudSleetFill = "cloud.sleet.fill"
    /// 􁛛
    case cloudSleetCircle = "cloud.sleet.circle"
    /// 􁛜
    case cloudSleetCircleFill = "cloud.sleet.circle.fill"
    /// 􀇒
    case cloudBolt = "cloud.bolt"
    /// 􀇓
    case cloudBoltFill = "cloud.bolt.fill"
    /// 􁛝
    case cloudBoltCircle = "cloud.bolt.circle"
    /// 􁛞
    case cloudBoltCircleFill = "cloud.bolt.circle.fill"
    /// 􀇞
    case cloudBoltRain = "cloud.bolt.rain"
    /// 􀇟
    case cloudBoltRainFill = "cloud.bolt.rain.fill"
    /// 􁛟
    case cloudBoltRainCircle = "cloud.bolt.rain.circle"
    /// 􁛠
    case cloudBoltRainCircleFill = "cloud.bolt.rain.circle.fill"
    /// 􀇔
    case cloudSun = "cloud.sun"
    /// 􀇕
    case cloudSunFill = "cloud.sun.fill"
    /// 􁛡
    case cloudSunCircle = "cloud.sun.circle"
    /// 􁛢
    case cloudSunCircleFill = "cloud.sun.circle.fill"
    /// 􀇖
    case cloudSunRain = "cloud.sun.rain"
    /// 􀇗
    case cloudSunRainFill = "cloud.sun.rain.fill"
    /// 􁛣
    case cloudSunRainCircle = "cloud.sun.rain.circle"
    /// 􁛤
    case cloudSunRainCircleFill = "cloud.sun.rain.circle.fill"
    /// 􀇘
    case cloudSunBolt = "cloud.sun.bolt"
    /// 􀇙
    case cloudSunBoltFill = "cloud.sun.bolt.fill"
    /// 􁛥
    case cloudSunBoltCircle = "cloud.sun.bolt.circle"
    /// 􁛦
    case cloudSunBoltCircleFill = "cloud.sun.bolt.circle.fill"
    /// 􀇚
    case cloudMoon = "cloud.moon"
    /// 􀇛
    case cloudMoonFill = "cloud.moon.fill"
    /// 􁛧
    case cloudMoonCircle = "cloud.moon.circle"
    /// 􁛨
    case cloudMoonCircleFill = "cloud.moon.circle.fill"
    /// 􀇜
    case cloudMoonRain = "cloud.moon.rain"
    /// 􀇝
    case cloudMoonRainFill = "cloud.moon.rain.fill"
    /// 􁛩
    case cloudMoonRainCircle = "cloud.moon.rain.circle"
    /// 􁛪
    case cloudMoonRainCircleFill = "cloud.moon.rain.circle.fill"
    /// 􀇠
    case cloudMoonBolt = "cloud.moon.bolt"
    /// 􀇡
    case cloudMoonBoltFill = "cloud.moon.bolt.fill"
    /// 􁛫
    case cloudMoonBoltCircle = "cloud.moon.bolt.circle"
    /// 􁛬
    case cloudMoonBoltCircleFill = "cloud.moon.bolt.circle.fill"
    /// 􀇢
    case smoke = "smoke"
    /// 􀇣
    case smokeFill = "smoke.fill"
    /// 􁛭
    case smokeCircle = "smoke.circle"
    /// 􁛮
    case smokeCircleFill = "smoke.circle.fill"
    /// 􀇤
    case wind = "wind"
    /// 􁛯
    case windCircle = "wind.circle"
    /// 􁛰
    case windCircleFill = "wind.circle.fill"
    /// 􀇦
    case windSnow = "wind.snow"
    /// 􁛱
    case windSnowCircle = "wind.snow.circle"
    /// 􁛲
    case windSnowCircleFill = "wind.snow.circle.fill"
    /// 􀇥
    case snowflake = "snowflake"
    /// 􁇌
    case snowflakeCircle = "snowflake.circle"
    /// 􁇍
    case snowflakeCircleFill = "snowflake.circle.fill"
    /// 􁠂
    case snowflakeSlash = "snowflake.slash"
    /// 􀇧
    case tornado = "tornado"
    /// 􁛳
    case tornadoCircle = "tornado.circle"
    /// 􁛴
    case tornadoCircleFill = "tornado.circle.fill"
    /// 􀇨
    case tropicalstorm = "tropicalstorm"
    /// 􁛵
    case tropicalstormCircle = "tropicalstorm.circle"
    /// 􁛸
    case tropicalstormCircleFill = "tropicalstorm.circle.fill"
    /// 􀇩
    case hurricane = "hurricane"
    /// 􁛷
    case hurricaneCircle = "hurricane.circle"
    /// 􁛸
    case hurricaneCircleFill = "hurricane.circle.fill"
    /// 􀇪
    case thermometerSun = "thermometer.sun"
    /// 􀦜
    case thermometerSunFill = "thermometer.sun.fill"
    /// 􁛹
    case thermometerSunCircle = "thermometer.sun.circle"
    /// 􁛺
    case thermometerSunCircleFill = "thermometer.sun.circle.fill"
    /// 􀇫
    case thermometerSnowflake = "thermometer.snowflake"
    /// 􁛻
    case thermometerSnowflakeCircle = "thermometer.snowflake.circle"
    /// 􁛼
    case thermometerSnowflakeCircleFill = "thermometer.snowflake.circle.fill"
    /// 􁃚
    case humidity = "humidity"
    /// 􁃛
    case humidityFill = "humidity.fill"
    /// 􁎄
    case waterWaves = "water.waves"
    /// 􁗃
    case waterWavesSlash = "water.waves.slash"
    /// 􁎅
    case waterWavesAndArrowUp = "water.waves.and.arrow.up"
    /// 􁎆
    case waterWavesAndArrowDown = "water.waves.and.arrow.down"
    /// 􁜰
    case waterWavesAndArrowDownTriangleBadgeExclamationMark = "water.waves.and.arrow.down.trianglebadge.exclamationmark"
    /// 􀠑
    case drop = "drop"
    /// 􀠒
    case dropFill = "drop.fill"
    /// 􁇊
    case dropCircle = "drop.circle"
    /// 􁇋
    case dropCircleFill = "drop.circle.fill"
    /// 􁘯
    case dropDegreeSign = "drop.degreesign"
    /// 􁘰
    case dropDegreeSignFill = "drop.degreesign.fill"
    /// 􁚂
    case dropDegreeSignSlash = "drop.degreesign.slash"
    /// 􁚃
    case dropDegreeSignSlashFill = "drop.degreesign.slash.fill"
    /// 􀈀
    case dropTriangle = "drop.triangle"
    /// 􀈁
    case dropTriangleFill = "drop.triangle.fill"
    /// 􀙬
    case flame = "flame"
    /// 􀙭
    case flameFill = "flame.fill"
    /// 􁇒
    case flameCircle = "flame.circle"
    /// 􁇓
    case flameCircleFill = "flame.circle.fill"
    /// 􀋥
    case bolt = "bolt"
    /// 􀋦
    case boltFill = "bolt.fill"
    /// 􀋧
    case boltCircle = "bolt.circle"
    /// 􀋨
    case boltCircleFill = "bolt.circle.fill"
    /// 􀼵
    case boltSquare = "bolt.square"
    /// 􀼶
    case boltSquareFill = "bolt.square.fill"
    /// 􁃗
    case boltShield = "bolt.shield"
    /// 􁃘
    case boltShieldFill = "bolt.shield.fill"
    /// 􀋩
    case boltSlash = "bolt.slash"
    /// 􀋪
    case boltSlashFill = "bolt.slash.fill"
    /// 􀋫
    case boltSlashCircle = "bolt.slash.circle"
    /// 􀋬
    case boltSlashCircleFill = "bolt.slash.circle.fill"
    /// 􁐓
    case boltBadgeClock = "bolt.badge.clock"
    /// 􁐔
    case boltBadgeClockFill = "bolt.badge.clock.fill"
    /// 􀘳
    case boltBadgeA = "bolt.badge.a"
    /// 􀘴
    case boltBadgeAFill = "bolt.badge.a.fill"
    /// 􁝱
    case boltTriangleBadgeExclamationMark = "bolt.trianglebadge.exclamationmark"
    /// 􁝲
    case boltTriangleBadgeExclamationMarkFill = "bolt.trianglebadge.exclamationmark.fill"
    /// 􁗝
    case mountain2 = "mountain.2"
    /// 􁗞
    case mountain2Fill = "mountain.2.fill"
    /// 􁞒
    case mountain2Circle = "mountain.2.circle"
    /// 􁞓
    case mountain2CircleFill = "mountain.2.circle.fill"
    /// 􀬭
    case allergens = "allergens"
    /// 􁒆
    case allergensFill = "allergens.fill"
    /// 􁈹
    case microbe = "microbe"
    /// 􁒅
    case microbeFill = "microbe.fill"
    /// 􁚶
    case microbeCircle = "microbe.circle"
    /// 􁚷
    case microbeCircleFill = "microbe.circle.fill"
    /// 􀓎
    case hare = "hare"
    /// 􀓏
    case hareFill = "hare.fill"
    /// 􀓐
    case tortoise = "tortoise"
    /// 􀓑
    case tortoiseFill = "tortoise.fill"
    /// 􁗛
    case lizard = "lizard"
    /// 􁗜
    case lizardFill = "lizard.fill"
    /// 􁗟
    case bird = "bird"
    /// 􁗠
    case birdFill = "bird.fill"
    /// 􀌚
    case ant = "ant"
    /// 􀌛
    case antFill = "ant.fill"
    /// 􀌜
    case antCircle = "ant.circle"
    /// 􀌝
    case antCircleFill = "ant.circle.fill"
    /// 􀯔
    case ladybug = "ladybug"
    /// 􀯕
    case ladybugFill = "ladybug.fill"
    /// 􁖐
    case fish = "fish"
    /// 􁖑
    case fishFill = "fish.fill"
    /// 􁞱
    case fishCircle = "fish.circle"
    /// 􁞲
    case fishCircleFill = "fish.circle.fill"
    /// 􀾞
    case pawPrint = "pawprint"
    /// 􀾟
    case pawPrintFill = "pawprint.fill"
    /// 􁂰
    case pawPrintCircle = "pawprint.circle"
    /// 􁂱
    case pawPrintCircleFill = "pawprint.circle.fill"
    /// 􀥲
    case leaf = "leaf"
    /// 􀥳
    case leafFill = "leaf.fill"
    /// 􁂬
    case leafCircle = "leaf.circle"
    /// 􁂭
    case leafCircleFill = "leaf.circle.fill"
    /// 􀙜
    case leafArrowTriangleCirclePath = "leaf.arrow.triangle.circlepath"
    /// 􁊘
    case laurelLeading = "laurel.leading"
    /// 􁊙
    case laurelTrailing = "laurel.trailing"
    /// 􁂂
    case cameraMacro = "camera.macro"
    /// 􁂃
    case cameraMacroCircle = "camera.macro.circle"
    /// 􁂄
    case cameraMacroCircleFill = "camera.macro.circle.fill"
    /// 􁝯
    case tree = "tree"
    /// 􁝰
    case treeFill = "tree.fill"
    /// 􁞔
    case treeCircle = "tree.circle"
    /// 􁞕
    case treeCircleFill = "tree.circle.fill"
    /// 􁖎
    case carrot = "carrot"
    /// 􁖏
    case carrotFill = "carrot.fill"
    /// 􀬚
    case atom = "atom"
    /// 􁕔
    case fossilShell = "fossil.shell"
    /// 􁕕
    case fossilShellFill = "fossil.shell.fill"
    
    var symbol: String {
        switch self {
        case .globeAmericas: return "􀵱"
        case .globeAmericasFill: return "􀵲"
        case .globeEuropeAfrica: return "􀵳"
        case .globeEuropeAfricaFill: return "􀵴"
        case .globeAsiaAustralia: return "􀵵"
        case .globeAsiaAustraliaFill: return "􀵶"
        case .globeCentralSouthAsia: return "􁇲"
        case .globeCentralSouthAsiaFill: return "􁇳"
        case .sunMin: return "􀆫"
        case .sinMinFill: return "􀆬"
        case .sunMax: return "􀆭"
        case .sunMaxFill: return "􀆮"
        case .sunMaxCircle: return "􀷎"
        case .sunMaxCircleFill: return "􀷏"
        case .sunMaxTriangleBadgeExclamationMark: return "􁜎"
        case .sunMaxTriangleBadgeExclamationMarkFill: return "􁜏"
        case .sunrise: return "􀆱"
        case .sunriseFill: return "􀆲"
        case .sunriseCircle: return "􁛁"
        case .sunriseCircleFill: return "􁛂"
        case .sunset: return "􀆳"
        case .sunsetFill: return "􀆴"
        case .sunsetCircle: return "􁛃"
        case .sunsetCircleFill: return "􁛄"
        case .sunAndHorizon: return "􀻞"
        case .sunAndHorizonFill: return "􀻟"
        case .sunAndHorizonCircle: return "􁛅"
        case .sunAndHorizonCircleFill: return "􁛆"
        case .sunDust: return "􀆵"
        case .sunDustFill: return "􀆶"
        case .sunDustCircle: return "􁛇"
        case .sunDustCircleFill: return "􁛈"
        case .sunHaze: return "􀆷"
        case .sunHazeFill: return "􀆸"
        case .sunHazeCircle: return "􁛉"
        case .sunHazeCircleFill: return "􁛊"
        case .moonPhaseNewMoon: return "􀡈"
        case .moonPhaseWaxingCrescent: return "􀡉"
        case .moonPhaseFirstQuarter: return "􀡊"
        case .moonPhaseWaxingGibbous: return "􀡋"
        case .moonPhaseFullMoon: return "􀡌"
        case .moonPhaseWaningGibbous: return "􀡍"
        case .moonPhaseLastQuarter: return "􀡎"
        case .moonPhaseWaningCrescent: return "􀡏"
        case .moonPhaseNewMoonInverse: return "􁐉"
        case .moonPhaseWaxingCrescentInverse: return "􁐊"
        case .moonPhaseFirstQuarterInverse: return "􁐋"
        case .moonPhaseWaxingGibbousInverse: return "􁐌"
        case .moonPhaseFullMoonInverse: return "􁐍"
        case .moonPhaseWaningGibbousInverse: return "􁐎"
        case .moonPhaseLastQuarterInverse: return "􁐏"
        case .moonPhaseWaningCrescentInverse: return "􁐐"
        case .moon: return "􀆹"
        case .moonFill: return "􀆺"
        case .moonCircle: return "􀆻"
        case .moonCircleFill: return "􀆼"
        case .moonHaze: return "􁑯"
        case .moonHazeFill: return "􁑰"
        case .moonHazeCircle: return "􁜷"
        case .moonHazeCircleFill: return "􁜸"
        case .sparkles: return "􀆿"
        case .moonStars: return "􀇀"
        case .moonStarsFill: return "􀇁"
        case .moonStarsCircle: return "􁛋"
        case .moonStarsCircleFill: return "􁛌"
        case .cloud: return "􀇂"
        case .cloudFill: return "􀇃"
        case .cloudCircle: return "􁛍"
        case .cloudCircleFill: return "􁛎"
        case .cloudDrizzle: return "􀇄"
        case .cloudDrizzleFill: return "􀇅"
        case .cloudDrizzleCircle: return "􁛏"
        case .cloudDrizzleCircleFill: return "􁛐"
        case .cloudRain: return "􀇆"
        case .cloudRainFill: return "􀇇"
        case .cloudRainCircle: return "􁛑"
        case .cloudRainCircleFill: return "􁛒"
        case .cloudHeavyRain: return "􀇈"
        case .cloudHeavyRainFill: return "􀇉"
        case .cloudHeavyRainCircle: return "􁛓"
        case .cloudHeavyRainCircleFill: return "􁛔"
        case .cloudFog: return "􀇊"
        case .cloudFogFill: return "􀇋"
        case .cloudFogCircle: return "􁛕"
        case .cloudFogCircleFill: return "􁛖"
        case .cloudHail: return "􀇌"
        case .cloudHailFill: return "􀇍"
        case .cloudHailCircle: return "􁛗"
        case .cloudHailCircleFill: return "􁛘"
        case .cloudSnow: return "􀇎"
        case .cloudSnowFill: return "􀇏"
        case .cloudSnowCircle: return "􁛙"
        case .cloudSnowCircleFill: return "􁛚"
        case .cloudSleet: return "􀇐"
        case .cloudSleetFill: return "􀇑"
        case .cloudSleetCircle: return "􁛛"
        case .cloudSleetCircleFill: return "􁛜"
        case .cloudBolt: return "􀇒"
        case .cloudBoltFill: return "􀇓"
        case .cloudBoltCircle: return "􁛝"
        case .cloudBoltCircleFill: return "􁛞"
        case .cloudBoltRain: return "􀇞"
        case .cloudBoltRainFill: return "􀇟"
        case .cloudBoltRainCircle: return "􁛟"
        case .cloudBoltRainCircleFill: return "􁛠"
        case .cloudSun: return "􀇔"
        case .cloudSunFill: return "􀇕"
        case .cloudSunCircle: return "􁛡"
        case .cloudSunCircleFill: return "􁛢"
        case .cloudSunRain: return "􀇖"
        case .cloudSunRainFill: return "􀇗"
        case .cloudSunRainCircle: return "􁛣"
        case .cloudSunRainCircleFill: return "􁛤"
        case .cloudSunBolt: return "􀇘"
        case .cloudSunBoltFill: return "􀇙"
        case .cloudSunBoltCircle: return "􁛥"
        case .cloudSunBoltCircleFill: return "􁛦"
        case .cloudMoon: return "􀇚"
        case .cloudMoonFill: return "􀇛"
        case .cloudMoonCircle: return "􁛧"
        case .cloudMoonCircleFill: return "􁛨"
        case .cloudMoonRain: return "􀇜"
        case .cloudMoonRainFill: return "􀇝"
        case .cloudMoonRainCircle: return "􁛩"
        case .cloudMoonRainCircleFill: return "􁛪"
        case .cloudMoonBolt: return "􀇠"
        case .cloudMoonBoltFill: return "􀇡"
        case .cloudMoonBoltCircle: return "􁛫"
        case .cloudMoonBoltCircleFill: return "􁛬"
        case .smoke: return "􀇢"
        case .smokeFill: return "􀇣"
        case .smokeCircle: return "􁛭"
        case .smokeCircleFill: return "􁛮"
        case .wind: return "􀇤"
        case .windCircle: return "􁛯"
        case .windCircleFill: return "􁛰"
        case .windSnow: return "􀇦"
        case .windSnowCircle: return "􁛱"
        case .windSnowCircleFill: return "􁛲"
        case .snowflake: return "􀇥"
        case .snowflakeCircle: return "􁇌"
        case .snowflakeCircleFill: return "􁇍"
        case .snowflakeSlash: return "􁠂"
        case .tornado: return "􀇧"
        case .tornadoCircle: return "􁛳"
        case .tornadoCircleFill: return "􁛴"
        case .tropicalstorm: return "􀇨"
        case .tropicalstormCircle: return "􁛵"
        case .tropicalstormCircleFill: return "􁛶"
        case .hurricane: return "􀇩"
        case .hurricaneCircle: return "􁛷"
        case .hurricaneCircleFill: return "􁛸"
        case .thermometerSun: return "􀇪"
        case .thermometerSunFill: return "􀦜"
        case .thermometerSunCircle: return "􁛹"
        case .thermometerSunCircleFill: return "􁛺"
        case .thermometerSnowflake: return "􀇫"
        case .thermometerSnowflakeCircle: return "􁛻"
        case .thermometerSnowflakeCircleFill: return "􁛼"
        case .humidity: return "􁃚"
        case .humidityFill: return "􁃛"
        case .waterWaves: return "􁎄"
        case .waterWavesSlash: return "􁗃"
        case .waterWavesAndArrowUp: return "􁎅"
        case .waterWavesAndArrowDown: return "􁎆"
        case .waterWavesAndArrowDownTriangleBadgeExclamationMark: return "􁜰"
        case .drop: return "􀠑"
        case .dropFill: return "􀠒"
        case .dropCircle: return "􁇊"
        case .dropCircleFill: return "􁇋"
        case .dropDegreeSign: return "􁘯"
        case .dropDegreeSignFill: return "􁘰"
        case .dropDegreeSignSlash: return "􁚂"
        case .dropDegreeSignSlashFill: return "􁚃"
        case .dropTriangle: return "􀈀"
        case .dropTriangleFill: return "􀈁"
        case .flame: return "􀙬"
        case .flameFill: return "􀙭"
        case .flameCircle: return "􁇒"
        case .flameCircleFill: return "􁇓"
        case .bolt: return "􀋥"
        case .boltFill: return "􀋦"
        case .boltCircle: return "􀋧"
        case .boltCircleFill: return "􀋨"
        case .boltSquare: return "􀼵"
        case .boltSquareFill: return "􀼶"
        case .boltShield: return "􁃗"
        case .boltShieldFill: return "􁃘"
        case .boltSlash: return "􀋩"
        case .boltSlashFill: return "􀋪"
        case .boltSlashCircle: return "􀋫"
        case .boltSlashCircleFill: return "􀋬"
        case .boltBadgeClock: return "􁐓"
        case .boltBadgeClockFill: return "􁐔"
        case .boltBadgeA: return "􀘳"
        case .boltBadgeAFill: return "􀘴"
        case .boltTriangleBadgeExclamationMark: return "􁝱"
        case .boltTriangleBadgeExclamationMarkFill: return "􁝲"
        case .mountain2: return "􁗝"
        case .mountain2Fill: return "􁗞"
        case .mountain2Circle: return "􁞒"
        case .mountain2CircleFill: return "􁞓"
        case .allergens: return "􀬭"
        case .allergensFill: return "􁒆"
        case .microbe: return "􁈹"
        case .microbeFill: return "􁒅"
        case .microbeCircle: return "􁚶"
        case .microbeCircleFill: return "􁚷"
        case .hare: return "􀓎"
        case .hareFill: return "􀓏"
        case .tortoise: return "􀓐"
        case .tortoiseFill: return "􀓑"
        case .lizard: return "􁗛"
        case .lizardFill: return "􁗜"
        case .bird: return "􁗟"
        case .birdFill: return "􁗠"
        case .ant: return "􀌚"
        case .antFill: return "􀌛"
        case .antCircle: return "􀌜"
        case .antCircleFill: return "􀌝"
        case .ladybug: return "􀯔"
        case .ladybugFill: return "􀯕"
        case .fish: return "􁖐"
        case .fishFill: return "􁖑"
        case .fishCircle: return "􁞱"
        case .fishCircleFill: return "􁞲"
        case .pawPrint: return "􀾞"
        case .pawPrintFill: return "􀾟"
        case .pawPrintCircle: return "􁂰"
        case .pawPrintCircleFill: return "􁂱"
        case .leaf: return "􀥲"
        case .leafFill: return "􀥳"
        case .leafCircle: return "􁂬"
        case .leafCircleFill: return "􁂭"
        case .leafArrowTriangleCirclePath: return "􀙜"
        case .laurelLeading: return "􁊘"
        case .laurelTrailing: return "􁊙"
        case .cameraMacro: return "􁂂"
        case .cameraMacroCircle: return "􁂃"
        case .cameraMacroCircleFill: return "􁂄"
        case .tree: return "􁝯"
        case .treeFill: return "􁝰"
        case .treeCircle: return "􁞔"
        case .treeCircleFill: return "􁞕"
        case .carrot: return "􁖎"
        case .carrotFill: return "􁖏"
        case .atom: return "􀬚"
        case .fossilShell: return "􁕔"
        case .fossilShellFill: return "􁕕"
        }
    }
}
