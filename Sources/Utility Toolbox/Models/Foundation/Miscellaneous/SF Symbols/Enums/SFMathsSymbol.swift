//
//  SFMathsSymbol.swift
//  
//
//  Created by Yann Christophe MAERTENS on 23/05/2023.
//

import Foundation

public enum SFMathsSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􀓪
    case xSquareRoot = "x.squareroot"
    /// 􁑡
    case angle = "angle"
    /// 􁔗
    case compassDrawing = "compass.drawing"
    /// 􀘽
    case sum = "sum"
    /// 􀘾
    case percent = "percent"
    /// 􀅮
    case function = "function"
    /// 􀅼
    case plus = "plus"
    /// 􀁌
    case plusCircle = "plus.circle"
    /// 􀁍
    case plusCircleFill = "plus.circle.fill"
    /// 􀃜
    case plusSquare = "plus.square"
    /// 􀃝
    case plusSquareFill = "plus.square.fill"
    /// 􀏇
    case plusRectangle = "plus.rectangle"
    /// 􀏈
    case plusRectangleFill = "plus.rectangle.fill"
    /// 􀅽
    case minus = "minus"
    /// 􀁎
    case minusCircle = "minus.circle"
    /// 􀁏
    case minusCircleFill = "minus.circle.fill"
    /// 􀃞
    case minusSquare = "minus.square"
    /// 􀃟
    case minusSquareFill = "minus.square.fill"
    /// 􀏉
    case minusRectangle = "minus.rectangle"
    /// 􀏊
    case minusRectangleFill = "minus.rectangle.fill"
    /// 􀛺
    case plusMinus = "plusminus"
    /// 􀍶
    case plusMinusCircle = "plusminus.circle"
    /// 􀘝
    case plusMinusCircleFill = "plusminus.circle.fill"
    /// 􀅺
    case plusForwardSlashMinus = "plus.forwardslash.minus"
    /// 􀅻
    case minusForwardSlashPlus = "minus.forwardslash.plus"
    /// 􀅾
    case multiply = "multiply"
    /// 􀁐
    case multiplyCircle = "multiply.circle"
    /// 􀁑
    case multiplyCircleFill = "multiply.circle.fill"
    /// 􀃠
    case multiplySquare = "multiply.square"
    /// 􀃡
    case multiplySquareFill = "multiply.square.fill"
    /// 􀅿
    case divide = "divide"
    /// 􀁒
    case divideCircle = "divide.circle"
    /// 􀁓
    case divideCircleFill = "divide.circle.fill"
    /// 􀃢
    case divideSquare = "divide.square"
    /// 􀃣
    case divideSquareFill = "divide.square.fill"
    /// 􀆀
    case equal = "equal"
    /// 􀁔
    case equalCircle = "equal.circle"
    /// 􀁕
    case equalCircleFill = "equal.circle.fill"
    /// 􀃤
    case equalSquare = "equal.square"
    /// 􀃥
    case equalSquareFill = "equal.square.fill"
    /// 􀆁
    case lessthan = "lessthan"
    /// 􀁘
    case lessthanCircle = "lessthan.circle"
    /// 􀁙
    case lessthanCircleFill = "lessthan.circle.fill"
    /// 􀃦
    case lessthanSquare = "lessthan.square"
    /// 􀃧
    case lessthanSquareFill = "lessthan.square.fill"
    /// 􀆂
    case greaterthan = "greaterthan"
    /// 􀁖
    case greaterthanCircle = "greaterthan.circle"
    /// 􀁗
    case greaterthanCircleFill = "greaterthan.circle.fill"
    /// 􀃨
    case greaterthanSquare = "greaterthan.square"
    /// 􀃩
    case greaterthanSquareFill = "greaterthan.square.fill"
    /// 􀆃
    case number = "number"
    /// 􀁚
    case numberCircle = "number.circle"
    /// 􀁛
    case numberCircleFill = "number.circle.fill"
    /// 􀃪
    case numberSquare = "number.square"
    /// 􀃫
    case numberSquareFill = "number.square.fill"

    var symbol: String {
        switch self {
        case .xSquareRoot: return "􀓪"
        case .angle: return "􁑡"
        case .compassDrawing: return "􁔗"
        case .sum: return "􀘽"
        case .percent: return "􀘾"
        case .function: return "􀅮"
        case .plus: return "􀅼"
        case .plusCircle: return "􀁌"
        case .plusCircleFill: return "􀁍"
        case .plusSquare: return "􀃜"
        case .plusSquareFill: return "􀃝"
        case .plusRectangle: return "􀏇"
        case .plusRectangleFill: return "􀏈"
        case .minus: return "􀅽"
        case .minusCircle: return "􀁎"
        case .minusCircleFill: return "􀁏"
        case .minusSquare: return "􀃞"
        case .minusSquareFill: return "􀃟"
        case .minusRectangle: return "􀏉"
        case .minusRectangleFill: return "􀏊"
        case .plusMinus: return "􀛺"
        case .plusMinusCircle: return "􀍶"
        case .plusMinusCircleFill: return "􀘝"
        case .plusForwardSlashMinus: return "􀅺"
        case .minusForwardSlashPlus: return "􀅻"
        case .multiply: return "􀅾"
        case .multiplyCircle: return "􀁐"
        case .multiplyCircleFill: return "􀁑"
        case .multiplySquare: return "􀃠"
        case .multiplySquareFill: return "􀃡"
        case .divide: return "􀅿"
        case .divideCircle: return "􀁒"
        case .divideCircleFill: return "􀁓"
        case .divideSquare: return "􀃢"
        case .divideSquareFill: return "􀃣"
        case .equal: return "􀆀"
        case .equalCircle: return "􀁔"
        case .equalCircleFill: return "􀁕"
        case .equalSquare: return "􀃤"
        case .equalSquareFill: return "􀃥"
        case .lessthan: return "􀆁"
        case .lessthanCircle: return "􀁘"
        case .lessthanCircleFill: return "􀁙"
        case .lessthanSquare: return "􀃦"
        case .lessthanSquareFill: return "􀃧"
        case .greaterthan: return "􀆂"
        case .greaterthanCircle: return "􀁖"
        case .greaterthanCircleFill: return "􀁗"
        case .greaterthanSquare: return "􀃨"
        case .greaterthanSquareFill: return "􀃩"
        case .number: return "􀆃"
        case .numberCircle: return "􀁚"
        case .numberCircleFill: return "􀁛"
        case .numberSquare: return "􀃪"
        case .numberSquareFill: return "􀃫"
        }
    }
}
