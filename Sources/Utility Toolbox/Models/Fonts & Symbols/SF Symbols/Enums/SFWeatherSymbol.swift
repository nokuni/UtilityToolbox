//
//  SFWeatherSymbol.swift
//  
//
//  Created by Yann Christophe MAERTENS on 16/03/2023.
//

import Foundation

public enum SFWeatherSymbol: String, CaseIterable, SFSymbolProtocol {
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
    /// 􁏃
    case thermometerLow = "thermometer.low"
    /// 􀇬
    case thermometerMedium = "thermometer.medium"
    /// 􁏄
    case thermometerHigh = "thermometer.high"
    /// 􁗄
    case thermometerMediumSlash = "thermometer.medium.slash"
    /// 􀴾
    case aqiLow = "aqi.low"
    /// 􀴿
    case aqiMedium = "aqi.medium"
    /// 􀵀
    case aqiHigh = "aqi.high"
    /// 􁃚
    case humidity = "humidity"
    /// 􁃛
    case humidityFill = "humidity.fill"
    /// 􁒶
    case carbonMonoxideCloud = "carbon.monoxide.cloud"
    /// 􁒷
    case carbonMonoxideCloudFill = "carbon.monoxide.cloud.fill"
    /// 􁒸
    case carbonDioxideCloud = "carbon.dioxide.cloud"
    /// 􁒹
    case carbonDioxideCloudFill = "carbon.dioxide.cloud.fill"

    var symbol: String {
        switch self {
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
        case .thermometerLow: return "􁏃"
        case .thermometerMedium: return "􀇬"
        case .thermometerHigh: return "􁏄"
        case .thermometerMediumSlash: return "􁗄"
        case .aqiLow: return "􀴾"
        case .aqiMedium: return "􀴿"
        case .aqiHigh: return "􀵀"
        case .humidity: return "􁃚"
        case .humidityFill: return "􁃛"
        case .carbonMonoxideCloud: return "􁒶"
        case .carbonMonoxideCloudFill: return "􁒷"
        case .carbonDioxideCloud: return "􁒸"
        case .carbonDioxideCloudFill: return "􁒹"
        }
    }
}
