//
//  SFHealthSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 25/05/23.
//

import Foundation

public enum SFHealthSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀼏
    case listBulletClipboard = "list.bullet.clipboard"
    /// 􀼐
    case listBulletClipboardFill = "list.bullet.clipboard.fill"
    /// 􁕜
    case listClipboard = "list.clipboard"
    /// 􁕝
    case listClipboardFill = "list.clipboard.fill"
    /// 􀊴
    case heart = "heart"
    /// 􀊵
    case heartFill = "heart.fill"
    /// 􀊸
    case heartCircle = "heart.circle"
    /// 􀊹
    case heartCircleFill = "heart.circle.fill"
    /// 􀞽
    case boltHeart = "bolt.heart"
    /// 􀛥
    case boltHeartFill = "bolt.heart.fill"
    /// 􀯙
    case crossCase = "cross.case"
    /// 􀯚
    case crossCaseFill = "cross.case.fill"
    /// 􁝾
    case crossCaseCircle = "cross.case.circle"
    /// 􁝿
    case crossCaseCircleFill = "cross.case.circle.fill"
    /// 􀙩
    case bedDouble = "bed.double"
    /// 􀙪
    case bedDoubleFill = "bed.double.fill"
    /// 􁁏
    case bedDoubleCircle = "bed.double.circle"
    /// 􁁐
    case bedDoubleCircleFill = "bed.double.circle.fill"
    /// 􀦚
    case lungs = "lungs"
    /// 􀦛
    case lungsFill = "lungs.fill"
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
    /// 􁒉
    case bubblesAndSparkles = "bubbles.and.sparkles"
    /// 􁒊
    case bubblesAndSparklesFill = "bubbles.and.sparkles.fill"
    /// 􁒇
    case medicalThermometer = "medical.thermometer"
    /// 􁒈
    case medicalThermometerFill = "medical.thermometer.fill"
    /// 􀎓
    case bandage = "bandage"
    /// 􀎔
    case bandageFill = "bandage.fill"
    /// 􀠷
    case syringe = "syringe"
    /// 􀠸
    case syringeFill = "syringe.fill"
    /// 􁃌
    case facemask = "facemask"
    /// 􁃍
    case facemaskFill = "facemask.fill"
    /// 􁚭
    case pill = "pill"
    /// 􁚮
    case pillFill = "pill.fill"
    /// 􁚯
    case pillCircle = "pill.circle"
    /// 􁚰
    case pillCircleFill = "pill.circle.fill"
    /// 􀠱
    case pills = "pills"
    /// 􀠲
    case pillsFill = "pills.fill"
    /// 􁇂
    case pillsCircle = "pills.circle"
    /// 􁇃
    case pillsCircleFill = "pills.circle.fill"
    /// 􀣜
    case cross = "cross"
    /// 􀣝
    case crossFill = "cross.fill"
    /// 􀣞
    case crossCircle = "cross.circle"
    /// 􀣟
    case crossCircleFill = "cross.circle.fill"
    /// 􀼍
    case ivFluidBag = "ivfluid.bag"
    /// 􀼎
    case ivFluidBagFill = "ivfluid.bag.fill"
    /// 􀼘
    case crossVial = "cross.vial"
    /// 􀼙
    case crossVialFill = "cross.vial.fill"
    /// 􀑆
    case starOfLife = "staroflife"
    /// 􀑇
    case starOfLifeFill = "staroflife.fill"
    /// 􀒺
    case starOfLifeCircle = "staroflife.circle"
    /// 􀒻
    case starOfLifeCircleFill = "staroflife.circle.fill"
    /// 􀥴
    case heartTextSquare = "heart.text.square"
    /// 􀥵
    case heartTextSquareFill = "heart.text.square.fill"
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
    /// 􁂔
    case eyeTriangleBadgeExclamationMark = "eye.trianglebadge.exclamationmark"
    /// 􁂕
    case eyeTriangleBadgeExclamationMarkFill = "eye.trianglebadge.exclamationmark.fill"
    /// 􀯏
    case brainHeadProfile = "brain.head.profile"
    /// 􀯐
    case brain = "brain"
    /// 􀜣
    case ear = "ear"
    /// 􀦿
    case earBadgeCheckMark = "ear.badge.checkmark"
    /// 􀧁
    case earTriangleBadgeExclamationMark = "ear.trianglebadge.exclamationmark"
    /// 􀵣
    case earAndWaveform = "ear.and.waveform"
    /// 􀞇
    case earFill = "ear.fill"
    /// 􁙮
    case vialViewfinder = "vial.viewfinder"
    /// 􀜟
    case waveformPathEcg = "waveform.path.ecg"
    /// 􀟪
    case waveformPathEcgRectangle = "waveform.path.ecg.rectangle"
    /// 􀟫
    case waveformPathEcgRectangleFill = "waveform.path.ecg.rectangle.fill"
    
    public var symbol: String {
        switch self {
        case .listBulletClipboard: return "􀼏"
        case .listBulletClipboardFill: return "􀼐"
        case .listClipboard: return "􁕜"
        case .listClipboardFill: return "􁕝"
        case .heart: return "􀊴"
        case .heartFill: return "􀊵"
        case .heartCircle: return "􀊸"
        case .heartCircleFill: return "􀊹"
        case .boltHeart: return "􀞽"
        case .boltHeartFill: return "􀛥"
        case .crossCase: return "􀯙"
        case .crossCaseFill: return "􀯚"
        case .crossCaseCircle: return "􁝾"
        case .crossCaseCircleFill: return "􁝿"
        case .bedDouble: return "􀙩"
        case .bedDoubleFill: return "􀙪"
        case .bedDoubleCircle: return "􁁏"
        case .bedDoubleCircleFill: return "􁁐"
        case .lungs: return "􀦚"
        case .lungsFill: return "􀦛"
        case .allergens: return "􀬭"
        case .allergensFill: return "􁒆"
        case .microbe: return "􁈹"
        case .microbeFill: return "􁒅"
        case .microbeCircle: return "􁚶"
        case .microbeCircleFill: return "􁚷"
        case .bubblesAndSparkles: return "􁒉"
        case .bubblesAndSparklesFill: return "􁒊"
        case .medicalThermometer: return "􁒇"
        case .medicalThermometerFill: return "􁒈"
        case .bandage: return "􀎓"
        case .bandageFill: return "􀎔"
        case .syringe: return "􀠷"
        case .syringeFill: return "􀠸"
        case .facemask: return "􁃌"
        case .facemaskFill: return "􁃍"
        case .pill: return "􁚭"
        case .pillFill: return "􁚮"
        case .pillCircle: return "􁚯"
        case .pillCircleFill: return "􁚰"
        case .pills: return "􀠱"
        case .pillsFill: return "􀠲"
        case .pillsCircle: return "􁇂"
        case .pillsCircleFill: return "􁇃"
        case .cross: return "􀣜"
        case .crossFill: return "􀣝"
        case .crossCircle: return "􀣞"
        case .crossCircleFill: return "􀣟"
        case .ivFluidBag: return "􀼍"
        case .ivFluidBagFill: return "􀼎"
        case .crossVial: return "􀼘"
        case .crossVialFill: return "􀼙"
        case .starOfLife: return "􀑆"
        case .starOfLifeFill: return "􀑇"
        case .starOfLifeCircle: return "􀒺"
        case .starOfLifeCircleFill: return "􀒻"
        case .heartTextSquare: return "􀥴"
        case .heartTextSquareFill: return "􀥵"
        case .eye: return "􀋭"
        case .eyeFill: return "􀋮"
        case .eyeCircle: return "􀛿"
        case .eyeCircleFill: return "􀜀"
        case .eyeSquare: return "􀽇"
        case .eyeSquareFill: return "􀽈"
        case .eyeSlash: return "􀋯"
        case .eyeSlashFill: return "􀋰"
        case .eyeTriangleBadgeExclamationMark: return "􁂔"
        case .eyeTriangleBadgeExclamationMarkFill: return "􁂕"
        case .brainHeadProfile: return "􀯏"
        case .brain: return "􀯐"
        case .ear: return "􀜣"
        case .earBadgeCheckMark: return "􀦿"
        case .earTriangleBadgeExclamationMark: return "􀧁"
        case .earAndWaveform: return "􀵣"
        case .earFill: return "􀞇"
        case .vialViewfinder: return "􁙮"
        case .waveformPathEcg: return "􀜟"
        case .waveformPathEcgRectangle: return "􀟪"
        case .waveformPathEcgRectangleFill: return "􀟫"
        }
    }
}
