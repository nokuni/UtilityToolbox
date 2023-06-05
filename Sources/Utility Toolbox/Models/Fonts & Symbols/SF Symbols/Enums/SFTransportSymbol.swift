//
//  SFTransportSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/05/23.
//

import Foundation

public enum SFTransportSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀝢
    case figureWalk = "figure.walk"
    /// 􀝣
    case figureWalkCircle = "figure.walk.circle"
    /// 􀝤
    case figureWalkCircleFill = "figure.walk.circle.fill"
    /// 􀪢
    case figureWalkDiamond = "figure.walk.diamond"
    /// 􀪣
    case figureWalkDiamondFill = "figure.walk.diamond.fill"
    /// 􀝻
    case figureWave = "figure.wave"
    /// 􀝼
    case figureWaveCircle = "figure.wave.circle"
    /// 􀝽
    case figureWaveCircleFill = "figure.wave.circle.fill"
    /// 􀑓
    case airplane = "airplane"
    /// 􀒸
    case airplaneCircle = "airplane.circle"
    /// 􀒹
    case airplaneCircleFill = "airplane.circle.fill"
    /// 􀷯
    case airplaneArrival = "airplane.arrival"
    /// 􀷰
    case airplaneDeparture = "airplane.departure"
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
    /// 􀝈
    case bus = "bus"
    /// 􀝉
    case busFill = "bus.fill"
    /// 􀜛
    case busDoubleDecker = "bus.doubledecker"
    /// 􀜜
    case busDoubleDeckerFill = "bus.doubledecker.fill"
    /// 􀝆
    case tram = "tram"
    /// 􀝇
    case tramFill = "tram.fill"
    /// 􀲛
    case tramCircle = "tram.circle"
    /// 􀲜
    case tramCircleFill = "tram.circle.fill"
    /// 􀜝
    case tramFillTunnel = "tram.fill.tunnel"
    /// 􀷶
    case cableCar = "cablecar"
    /// 􀷷
    case cableCarFill = "cablecar.fill"
    /// 􀸅
    case ferry = "ferry"
    /// 􀸆
    case ferryFill = "ferry.fill"
    /// 􀸌
    case carFerry = "car.ferry"
    /// 􀸍
    case carFerryFill = "car.ferry.fill"
    /// 􀼮
    case trainSideFrontCar = "train.side.front.car"
    /// 􀼯
    case trainSideMiddleCar = "train.side.middle.car"
    /// 􀼰
    case trainSideRearCar = "train.side.rear.car"
    /// 􁁾
    case boxTruck = "box.truck"
    /// 􁁿
    case boxTruckFill = "box.truck.fill"
    /// 􁂀
    case boxTruckBadgeClock = "box.truck.badge.clock"
    /// 􁂁
    case boxTruckBadgeClockFill = "box.truck.badge.clock.fill"
    /// 􀡥
    case bicycle = "bicycle"
    /// 􀱬
    case bicycleCircle = "bicycle.circle"
    /// 􀱭
    case bicycleCircleFill = "bicycle.circle.fill"
    /// 􁈌
    case scooter = "scooter"
    /// 􁋴
    case sailboat = "sailboat"
    /// 􁋵
    case sailboatFill = "sailboat.fill"
    /// 􁞘
    case sailboatCircle = "sailboat.circle"
    /// 􁞙
    case sailboatCircleFill = "sailboat.circle.fill"
    /// 􀵞
    case fuelPump = "fuelpump"
    /// 􀵟
    case fuelPumpFill = "fuelpump.fill"
    /// 􀵠
    case fuelPumpCircle = "fuelpump.circle"
    /// 􀵡
    case fuelPumpCircleFill = "fuelpump.circle.fill"
    
    var symbol: String {
        switch self {
        case .figureWalk: return "􀝢"
        case .figureWalkCircle: return "􀝣"
        case .figureWalkCircleFill: return "􀝤"
        case .figureWalkDiamond: return "􀪢"
        case .figureWalkDiamondFill: return "􀪣"
        case .figureWave: return "􀝻"
        case .figureWaveCircle: return "􀝼"
        case .figureWaveCircleFill: return "􀝽"
        case .airplane: return "􀑓"
        case .airplaneCircle: return "􀒸"
        case .airplaneCircleFill: return "􀒹"
        case .airplaneArrival: return "􀷯"
        case .airplaneDeparture: return "􀷰"
        case .car: return "􀙘"
        case .carFill: return "􀙙"
        case .carCircle: return "􀭯"
        case .carCircleFill: return "􀭰"
        case .carFrontWavesUp: return "􁢱"
        case .carFrontWavesUpFill: return "􁢲"
        case .carRear: return "􀽛"
        case .carRearFill: return "􀽜"
        case .boltCar: return "􀡞"
        case .boltCarFill: return "􀝃"
        case .boltCarCircle: return "􁄲"
        case .boltCarCircleFill: return "􁄳"
        case .car2: return "􀝄"
        case .car2Fill: return "􀝅"
        case .bus: return "􀝈"
        case .busFill: return "􀝉"
        case .busDoubleDecker: return "􀜛"
        case .busDoubleDeckerFill: return "􀜜"
        case .tram: return "􀝆"
        case .tramFill: return "􀝇"
        case .tramCircle: return "􀲛"
        case .tramCircleFill: return "􀲜"
        case .tramFillTunnel: return "􀜝"
        case .cableCar: return "􀷶"
        case .cableCarFill: return "􀷷"
        case .ferry: return "􀸅"
        case .ferryFill: return "􀸆"
        case .carFerry: return "􀸌"
        case .carFerryFill: return "􀸍"
        case .trainSideFrontCar: return "􀼮"
        case .trainSideMiddleCar: return "􀼯"
        case .trainSideRearCar: return "􀼰"
        case .boxTruck: return "􁁾"
        case .boxTruckFill: return "􁁿"
        case .boxTruckBadgeClock: return "􁂀"
        case .boxTruckBadgeClockFill: return "􁂁"
        case .bicycle: return "􀡥"
        case .bicycleCircle: return "􀱬"
        case .bicycleCircleFill: return "􀱭"
        case .scooter: return "􁈌"
        case .sailboat: return "􁋴"
        case .sailboatFill: return "􁋵"
        case .sailboatCircle: return "􁞘"
        case .sailboatCircleFill: return "􁞙"
        case .fuelPump: return "􀵞"
        case .fuelPumpFill: return "􀵟"
        case .fuelPumpCircle: return "􀵠"
        case .fuelPumpCircleFill: return "􀵡"
        }
    }
}
