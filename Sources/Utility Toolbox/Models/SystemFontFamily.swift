//
//  SystemFontFamily.swift
//  
//
//  Created by Maertens Yann-Christophe on 25/02/23.
//

import Foundation

public enum SystemFontFamily: String, CaseIterable {
    case academyEngravedLET = "Academy Engraved LET"
    case alNile = "Al Nile"
    case americanTypewriter = "American Typewriter"
    case appleColorEmoji = "Apple Color Emoji"
    case appleSDGothicNeo = "Apple SD Gothic Neo"
    case appleSymbols = "Apple Symbols"
    case arial = "Arial"
    case arialHebrew = "Arial Hebrew"
    case arialRoundedMTBold = "Arial Rounded MT Bold"
    case avenir = "Avenir"
    case avenirNext = "Avenir Next"
    case avenirNextCondensed = "Avenir Next Condensed"
    case baskerville = "Baskerville"
    case bodoni72 = "Bodoni 72"
    case bodoni72Oldstyle = "Bodoni 72 Oldstyle"
    case bodoni72Smallcaps = "Bodoni 72 Smallcaps"
    case bodoniOrnaments = "Bodoni Ornaments"
    case bradleyHand = "Bradley Hand"
    case chalkboardSE = "Chalkboard SE"
    case chalkduster = "Chalkduster"
    case charter = "Charter"
    case cochin = "Cochin"
    case copperplate = "Copperplate"
    case courierNew = "Courier New"
    case damascus = "Damascus"
    case devanagariSangamMN = "Devanagari Sangam MN"
    case didot = "Didot"
    case DINAlternate = "DIN Alternate"
    case DINCondensed = "DIN Condensed"
    case euphemiaUCAS = "Euphemia UCAS"
    case farah = "Farah"
    case futura = "Futura"
    case galvji = "Galvji"
    case geezaPro = "Geeza Pro"
    case georgia = "Georgia"
    case gillSans = "Gill Sans"
    case granthaSangamMN = "Grantha Sangam MN"
    case helvetica = "Helvetica"
    case helveticaNeue = "Helvetica Neue"
    case hiraginoMaruGothicProN = "Hiragino Maru Gothic ProN"
    case hiraginoMinchoProN = "Hiragino Mincho ProN"
    case hiraginoSans = "Hiragino Sans"
    case hoeflerText = "Hoefler Text"
    case impact = "Impact"
    case kailasa = "Kailasa"
    case kefa = "Kefa"
    case khmerSangamMN = "Khmer Sangam MN"
    case kohinoorBangla = "Kohinoor Bangla"
    case kohinoorDevanagari = "Kohinoor Devanagari"
    case kohinoorGujarati = "Kohinoor Gujarati"
    case kohinoorTelugu = "Kohinoor Telugu"
    case laoSangamMN = "Lao Sangam MN"
    case malayalamSangamMN = "Malayalam Sangam MN"
    case markerFelt = "Marker Felt"
    case menlo = "Menlo"
    case mishafi = "Mishafi"
    case muktaMahee = "Mukta Mahee"
    case myanmarSangamMN = "Myanmar Sangam MN"
    case noteworthy = "Noteworthy"
    case notoNastaliqUrdu = "Noto Nastaliq Urdu"
    case notoSansKannada = "Noto Sans Kannada"
    case notoSansMyanmar = "Noto Sans Myanmar"
    case notoSansOriya = "Noto Sans Oriya"
    case optima = "Optima"
    case palatino = "Palatino"
    case papyrus = "Papyrus"
    case partyLET = "Party LET"
    case pingFangHK = "PingFang HK"
    case pingFangSC = "PingFang SC"
    case pingFangTC = "PingFang TC"
    case rockwell = "Rockwell"
    case savoyeLET = "Savoye LET"
    case sinhalaSangamMN = "Sinhala Sangam MN"
    case snellRoundhand = "Snell Roundhand"
    case STIXTwoMath = "STIX Two Math"
    case STIXTwoText = "STIX Two Text"
    case symbol = "Symbol"
    case tamilSangamMN = "Tamil Sangam MN"
    case thonburi = "Thonburi"
    case timesNewRoman = "Times New Roman"
    case trebuchetMS = "Trebuchet MS"
    case verdana = "Verdana"
    case zapfDingbats = "Zapf Dingbats"
    case zapfino = "Zapfino"
    
    var fonts: [SystemFontName] {
        switch self {
        case .academyEngravedLET:
            return [.academyEngravedLetPlain]
        case .alNile:
            return [.alNile, .alNileBold]
        case .americanTypewriter:
            return [.americanTypewriter, .americanTypewriterBold, .americanTypewriterLight, .americanTypewriterSemibold, .americanTypewriterCondensed, .americanTypewriterCondensedBold, .americanTypewriterCondensedLight]
        case .appleColorEmoji:
            return [.appleColorEmoji]
        case .appleSDGothicNeo:
            return [.appleSDGothicNeoThin, .appleSDGothicNeoBold, .appleSDGothicNeoLight, .appleSDGothicNeoMedium, .appleSDGothicNeoRegular, .appleSDGothicNeoSemiBold, .appleSDGothicNeoUltraLight]
        case .appleSymbols:
            return [.appleSymbols]
        case .arial:
            return [.arialMT, .arialBoldMT, .arialItalicMT, .arialBoldItalicMT]
        case .arialHebrew:
            return [.arialHebrew, .arialHebrewBold, .arialHebrewLight]
        case .arialRoundedMTBold:
            return [.arialRoundedMTBold]
        case .avenir:
            return [.avenirBook, .avenirBlack, .avenirHeavy, .avenirLight, .avenirRoman, .avenirMedium, .avenirOblique, .avenirBookOblique, .avenirBlackOblique, .avenirHeavyOblique, .avenirLightOblique, .avenirMediumOblique]
        case .avenirNext:
            return [.avenirNextBold, .avenirNextHeavy, .avenirNextItalic, .avenirNextMedium, .avenirNextRegular, .avenirNextDemiBold, .avenirNextBoldItalic, .avenirNextUltraLight, .avenirNextHeavyItalic, .avenirNextMediumItalic, .avenirNextDemiBoldItalic, .avenirNextUltraLightItalic]
        case .avenirNextCondensed:
            return [.avenirNextCondensedBold, .avenirNextCondensedHeavy, .avenirNextCondensedItalic, .avenirNextCondensedMedium, .avenirNextCondensedRegular, .avenirNextCondensedDemiBold, .avenirNextCondensedBoldItalic, .avenirNextCondensedUltraLight, .avenirNextCondensedHeavyItalic, .avenirNextCondensedMediumItalic, .avenirNextCondensedDemiBoldItalic, .avenirNextCondensedUltraLightItalic]
        case .baskerville:
            return [.baskerville, .baskervilleBold, .baskervilleItalic, .baskervilleSemiBold, .baskervilleBoldItalic, .baskervilleSemiBoldItalic]
        case .bodoni72:
            return [.bodoniSvtyTwoITCTTBold, .bodoniSvtyTwoITCTTBook, .bodoniSvtyTwoITCTTBookIta]
        case .bodoni72Oldstyle:
            return [.bodoniSvtyTwoOSITCTTBold, .bodoniSvtyTwoOSITCTTBook, .bodoniSvtyTwoOSITCTTBookIt]
        case .bodoni72Smallcaps:
            return [.bodoniSvtyTwoSCITCTTBook]
        case .bodoniOrnaments:
            return [.bodoniOrnamentsITCTT]
        case .bradleyHand:
            return [.bradleyHandITCTTBold]
        case .chalkboardSE:
            return [.chalkboardSEBold, .chalkboardSELight, .chalkboardSERegular]
        case .chalkduster:
            return [.chalkduster]
        case .charter:
            return [.charterBold, .charterBlack, .charterRoman, .charterItalic, .charterBoldItalic, .charterBlackItalic]
        case .cochin:
            return [.cochin, .cochinBold, .cochinItalic, .cochinBoldItalic]
        case .copperplate:
            return [.copperplate, .copperplateBold, .copperplateLight]
        case .courierNew:
            return [.courierNewPSMT, .courierNewPSBoldMT, .courierNewPSItalicMT, .courierNewPSBoldItalicMT]
        case .damascus:
            return [.damascus, .damascusBold, .damascusLight, .damascusMedium, .damascusSemiBold]
        case .devanagariSangamMN:
            return [.devanagariSangamMN, .devanagariSangamMNBold]
        case .didot:
            return [.didot, .didotBold, .didotItalic]
        case .DINAlternate:
            return [.DINAlternateBold]
        case .DINCondensed:
            return [.DINCondensedBold]
        case .euphemiaUCAS:
            return [.euphemiaUCAS, .euphemiaUCASBold, .euphemiaUCASItalic]
        case .farah:
            return [.farah]
        case .futura:
            return [.futuraBold, .futuraMedium, .futuraMediumItalic, .futuraCondensedMedium, .futuraCondensedExtraBold]
        case .galvji:
            return [.galvji, .galvjiBold]
        case .geezaPro:
            return [.geezaPro, .geezaProBold]
        case .georgia:
            return [.georgia, .georgiaBold, .georgiaItalic, .georgiaBoldItalic]
        case .gillSans:
            return [.gillSans, .gillSansBold, .gillSansLight, .gillSansItalic, .gillSansSemiBold, .gillSansUltraBold, .gillSansBoldItalic, .gillSansLightItalic, .gillSansSemiBoldItalic]
        case .granthaSangamMN:
            return [.granthaSangamMNBold, .granthaSangamMNRegular]
        case .helvetica:
            return [.helvetica, .helveticaBold, .helveticaLight, .helveticaOblique, .helveticaBoldOblique, .helveticaLightOblique]
        case .helveticaNeue:
            return [.helveticaNeue, .helveticaNeueBold, .helveticaNeueThin, .helveticaNeueLight, .helveticaNeueItalic, .helveticaNeueMedium, .helveticaNeueBoldItalic, .helveticaNeueThinItalic, .helveticaNeueUltraLight, .helveticaNeueLightItalic, .helveticaNeueMediumItalic, .helveticaNeueCondensedBold, .helveticaNeueCondensedBlack, .helveticaNeueUltraLightItalic]
        case .hiraginoMaruGothicProN:
            return [.hiraMaruProNW4]
        case .hiraginoMinchoProN:
            return [.hiraMinProNW3, .hiraMinProNW6]
        case .hiraginoSans:
            return [.hiraginoSansW3, .hiraginoSansW6, .hiraginoSansW7]
        case .hoeflerText:
            return [.hoeflerTextBlack, .hoeflerTextItalic, .hoeflerTextRegular, .hoeflerTextBlackItalic]
        case .impact:
            return [.impact]
        case .kailasa:
            return [.kailasa, .kailasaBold]
        case .kefa:
            return [.kefaRegular]
        case .khmerSangamMN:
            return [.khmerSangamMN]
        case .kohinoorBangla:
            return [.kohinoorBanglaRegular, .kohinoorBanglaLight, .kohinoorBanglaSemibold]
        case .kohinoorDevanagari:
            return [.kohinoorDevanagariLight, .kohinoorDevanagariRegular, .kohinoorDevanagariSemibold]
        case .kohinoorGujarati:
            return [.kohinoorGujaratiBold, .kohinoorGujaratiLight, .kohinoorGujaratiRegular]
        case .kohinoorTelugu:
            return [.kohinoorTeluguLight, .kohinoorTeluguMedium, .kohinoorTeluguRegular]
        case .laoSangamMN:
            return [.laoSangamMN]
        case .malayalamSangamMN:
            return [.malayalamSangamMN, .malayalamSangamMNBold]
        case .markerFelt:
            return [.markerFeltThin, .markerFeltWide]
        case .menlo:
            return [.menloBold]
        case .mishafi:
            return [.miwanMishafi]
        case .muktaMahee:
            return [.muktaMaheeBold, .muktaMaheeLight, .muktaMaheeRegular]
        case .myanmarSangamMN:
            return [.myanmarSangamMN, .myanmarSangamMNBold]
        case .noteworthy:
            return [.noteworthyLight, .noteworthyBold]
        case .notoNastaliqUrdu:
            return [.notoNastaliqUrdu, .notoNastaliqUrduBold]
        case .notoSansKannada:
            return [.notoSansKannadaRegular, .notoSansKannadaLight, .notoSansKannadaBold]
        case .notoSansMyanmar:
            return [.notoSansMyanmarRegular, .notoSansMyanmarLight, .notoSansMyanmarBold]
        case .notoSansOriya:
            return [.notoSansOriya, .notoSansOriyaBold]
        case .optima:
            return [.optimaRegular, .optimaBold, .optimaItalic, .optimaBoldItalic, .optimaExtraBlack]
        case .palatino:
            return [.palatinoBold, .palatinoRoman, .palatinoItalic, .palatinoBoldItalic]
        case .papyrus:
            return [.papyrus, .papyrusCondensed]
        case .partyLET:
            return [.partyLetPlain]
        case .pingFangHK:
            return [.pingFangHKRegular, .pingFangHKUltralight, .pingFangHKThin, .pingFangHKLight, .pingFangHKMedium, .pingFangHKSemibold]
        case .pingFangSC:
            return [.pingFangSCRegular, .pingFangSCUltralight, .pingFangSCThin, .pingFangSCLight, .pingFangSCMedium, .pingFangSCSemibold]
        case .pingFangTC:
            return [.pingFangTCRegular, .pingFangTCUltralight, .pingFangTCThin, .pingFangTCLight, .pingFangTCMedium, .pingFangTCSemibold]
        case .rockwell:
            return [.rockwellRegular, .rockwellItalic, .rockwellBold, .rockwellBoldItalic]
        case .savoyeLET:
            return [.savoyeLetPlain]
        case .sinhalaSangamMN:
            return [.sinhalaSangamMN, .sinhalaSangamMNBold]
        case .snellRoundhand:
            return [.snellRoundhand, .snellRoundhandBold, .snellRoundhandBlack]
        case .STIXTwoMath:
            return [.STIXTwoMathRegular]
        case .STIXTwoText:
            return [.STIXTwoText, .STIXTwoTextItalic, .STIXTwoTextMedium, .STIXTwoTextItalicMediumItalic, .STIXTwoTextSemiBold, .STIXTwoTextItalicSemiBoldItalic, .STIXTwoTextBold, .STIXTwoTextItalicBoldItalic]
        case .symbol:
            return [.symbol]
        case .tamilSangamMN:
            return [.tamilSangamMN, .tamilSangamMNBold]
        case .thonburi:
            return [.thonburi, .thonburiLight, .thonburiBold]
        case .timesNewRoman:
            return [.timesNewRomanPSMT, .timesNewRomanPSItalicMT, .timesNewRomanPSBoldMT, .timesNewRomanPSBoldItalicMT]
        case .trebuchetMS:
            return [.trebuchetMS, .trebuchetMSItalic, .trebuchetMSBold, .trebuchetBoldItalic]
        case .verdana:
            return [.verdana, .verdanaItalic, .verdanaBold, .verdanaBoldItalic]
        case .zapfDingbats:
            return [.zapfDingbatsITC]
        case .zapfino:
            return [.zapfino]
        }
    }
}
