//
//  SFTextFormattingSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/05/23.
//

import Foundation

public enum SFTextFormattingSymbol: String, CaseIterable, SFSymbolProtocol {
    /// 􁓯
    case fleuron = "fleuron"
    /// 􁓔
    case fleuronFill = "fleuron.fill"
    /// 􀙤
    case signature = "signature"
    /// 􀋲
    case listBullet = "list.bullet"
    /// 􀻧
    case listBulletCircle = "list.bullet.circle"
    /// 􀻨
    case listBulletCircleFill = "list.bullet.circle.fill"
    /// 􀋱
    case listDash = "list.dash"
    /// 􀢽
    case listTriangle = "list.triangle"
    /// 􀋳
    case listBulletIndent = "list.bullet.indent"
    /// 􀋴
    case listNumber = "list.number"
    /// 􀣩
    case listStar = "list.star"
    /// 􀋵
    case increaseIndent = "increase.indent"
    /// 􀋶
    case decreaseIndent = "decrease.indent"
    /// 􀝿
    case decreaseQuoteLevel = "decrease.quotelevel"
    /// 􀞀
    case increaseQuoteLevel = "increase.quotelevel"
    /// 􁖖
    case quoteLevel = "quotelevel"
    /// 􀌀
    case textAlignLeft = "text.alignleft"
    /// 􀌁
    case textAlignCenter = "text.aligncenter"
    /// 􀌂
    case textAlignRight = "text.alignright"
    /// 􀌃
    case textJustify = "text.justify"
    /// 􀌄
    case textJustifyLeft = "text.justify.left"
    /// 􀌅
    case textJustifyRight = "text.justify.right"
    /// 􁉀
    case textJustifyLeading = "text.justify.leading"
    /// 􁉁
    case textJustifyTrailing = "text.justify.trailing"
    /// 􀧎
    case textRedaction = "text.redaction"
    /// 􀵫
    case textWordSpacing = "text.word.spacing"
    /// 􀵬
    case arrowUpAndDownTextHorizontal = "arrow.up.and.down.text.horizontal"
    /// 􁖭
    case arrowLeftAndRightTextVertical = "arrow.left.and.right.text.vertical"
    /// 􀅏
    case character = "character"
    /// 􀵷
    case textformatSizeSmaller = "textformat.size.smaller"
    /// 􀵿
    case textformatSizeLarger = "textformat.size.larger"
    /// 􀅐
    case textformatSize = "textformat.size"
    /// 􀅒
    case textformat = "textformat"
    /// 􀅑
    case textformatAlt = "textformat.alt"
    /// 􀓢
    case textformatSuperscript = "textformat.superscript"
    /// 􀓡
    case textformatSubscript = "textformat.subscript"
    /// 􀥊
    case abc = "abc"
    /// 􀅯
    case textformatAbc = "textformat.abc"
    /// 􀅰
    case textformatAbcDottedUnderline = "textformat.abc.dottedunderline"
    /// 􀅓
    case bold = "bold"
    /// 􀅔
    case italic = "italic"
    /// 􀅕
    case underline = "underline"
    /// 􀅖
    case strikethrough = "strikethrough"
    /// 􀨡
    case shadow = "shadow"
    /// 􀅗
    case boldItalicUnderline = "bold.italic.underline"
    /// 􀅘
    case boldUnderline = "bold.underline"
    /// 􀅫
    case characterCursorIbeam = "character.cursor.ibeam"
    /// 􀅱
    case textformat123 = "textformat.123"
    /// 􁂷
    case _123rectangle = "123.rectangle"
    /// 􁂸
    case _123rectangleFill = "123.rectangle.fill"
    /// 􁖻
    case textFormat12 = "textformat.12"
    /// 􀅶
    case characterTextbox = "character.textbox"
    /// 􁓘
    case numberSign = "numbersign"
    /// 􁓗
    case characterSutton = "character.sutton"
    /// 􁓖
    case characterDuployan = "character.duployan"
    /// 􁓕
    case characterPhonetic = "character.phonetic"
    /// 􀤍
    case aMagnify = "a.magnify"
    /// 􀒆
    case paragraphSign = "paragraphsign"
    
    var symbol: String {
        switch self {
        case .fleuron:
            return "􁓯"
        case .fleuronFill:
            return "􁓔"
        case .signature:
            return "􀙤"
        case .listBullet:
            return "􀋲"
        case .listBulletCircle:
            return "􀻧"
        case .listBulletCircleFill:
            return "􀻨"
        case .listDash:
            return "􀋱"
        case .listTriangle:
            return "􀢽"
        case .listBulletIndent:
            return "􀋳"
        case .listNumber:
            return "􀋴"
        case .listStar:
            return "􀣩"
        case .increaseIndent:
            return "􀋵"
        case .decreaseIndent:
            return "􀋶"
        case .decreaseQuoteLevel:
            return "􀝿"
        case .increaseQuoteLevel:
            return "􀞀"
        case .quoteLevel:
            return "􁖖"
        case .textAlignLeft:
            return "􀌀"
        case .textAlignCenter:
            return "􀌁"
        case .textAlignRight:
            return "􀌂"
        case .textJustify:
            return "􀌃"
        case .textJustifyLeft:
            return "􀌄"
        case .textJustifyRight:
            return "􀌅"
        case .textJustifyLeading:
            return "􁉀"
        case .textJustifyTrailing:
            return "􁉁"
        case .textRedaction:
            return "􀧎"
        case .textWordSpacing:
            return "􀵫"
        case .arrowUpAndDownTextHorizontal:
            return "􀵬"
        case .arrowLeftAndRightTextVertical:
            return "􁖭"
        case .character:
            return "􀅏"
        case .textformatSizeSmaller:
            return "􀵷"
        case .textformatSizeLarger:
            return "􀵿"
        case .textformatSize:
            return "􀅐"
        case .textformat:
            return "􀅒"
        case .textformatAlt:
            return "􀅑"
        case .textformatSuperscript:
            return "􀓢"
        case .textformatSubscript:
            return "􀓡"
        case .abc:
            return "􀥊"
        case .textformatAbc:
            return "􀅯"
        case .textformatAbcDottedUnderline:
            return "􀅰"
        case .bold:
            return "􀅓"
        case .italic:
            return "􀅔"
        case .underline:
            return "􀅕"
        case .strikethrough:
            return "􀅖"
        case .shadow:
            return "􀨡"
        case .boldItalicUnderline:
            return "􀅗"
        case .boldUnderline:
            return "􀅘"
        case .characterCursorIbeam:
            return "􀅫"
        case .textformat123:
            return "􀅱"
        case ._123rectangle:
            return "􁂷"
        case ._123rectangleFill:
            return "􁂸"
        case .textFormat12:
            return "􁖻"
        case .characterTextbox:
            return "􀅶"
        case .numberSign:
            return "􁓘"
        case .characterSutton:
            return "􁓗"
        case .characterDuployan:
            return "􁓖"
        case .characterPhonetic:
            return "􁓕"
        case .aMagnify:
            return "􀤍"
        case .paragraphSign:
            return "􀒆"
        }
    }
}
