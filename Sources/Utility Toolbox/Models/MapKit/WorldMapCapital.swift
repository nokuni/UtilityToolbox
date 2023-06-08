//
//  WorldMapCapital.swift
//  
//
//  Created by Yann Christophe MAERTENS on 23/05/2023.
//

import MapKit

public enum WorldMapCapital: CaseIterable {
    case abuDhabi
    case abuja
    case accra
    case addisAbaba
    case algiers
    case amman
    case amsterdam
    case andorraLaVella
    case ankara
    case antananarivo
    case apia
    case ashgabat
    case asmara
    case astana
    case asuncion
    case athens
    case baghdad
    case baku
    case bamako
    case bandarSeriBegawan
    case bangkok
    case bangui
    case banjul
    case basseTerre
    case basseterre
    case beijing
    case beirut
    case belgrade
    case belmopan
    case berlin
    case bern
    case bishkek
    case bissau
    case bogota
    case brasilia
    case bratislava
    case brazzaville
    case bridgetown
    case brussels
    case bucuresti
    case budapest
    case buenosAires
    case bujumbura
    case cairo
    case canberra
    case caracas
    case castries
    case cayenne
    case charlotteAmali
    case chisinau
    case conakry
    case copenhagen
    case dakar
    case damascus
    case dhaka
    case dili
    case djibouti
    case dodoma
    case doha
    case dublin
    case dushanbe
    case fortDeFrance
    case freetown
    case funafuti
    case gaborone
    case george
    case georgetown
    case guatemala
    case hanoi
    case harare
    case havana
    case helsinki
    case honiara
    case islamabad
    case jakarta
    case jerusalem
    case kabul
    case kampala
    case kathmandu
    case khartoum
    case kiev
    case kigali
    case kingstonJamaica
    case kingstonNorfolkIsland
    case kingstown
    case kinshasa
    case kuala
    case kuwait
    case laPaz
    case libreville
    case lilongwe
    case lima
    case lisbon
    case ljubljana
    case lome
    case london
    case luanda
    case lusaka
    case luxembourg
    case macau
    case madrid
    case malabo
    case male
    case mamoudzou
    case managua
    case manama
    case manila
    case maputo
    case maseru
    case masqat
    case mbabane
    case mexico
    case minsk
    case mogadishu
    case monrovia
    case montevideo
    case moroni
    case moskva
    case nairobi
    case nassau
    case nDjamena
    case newDelhi
    case ngerulmud
    case niamey
    case nicosia
    case nouakchott
    case noumea
    case nukuAlofa
    case nuuk
    case oranjestad
    case oslo
    case ottawa
    case ouagadougou
    case pagoPago
    case palikir
    case panama
    case papeete
    case paramaribo
    case paris
    case phnomPenh
    case portAuPrince
    case portMoresby
    case portoNovo
    case portVila
    case prague
    case praia
    case pretoria
    case pyongyang
    case quito
    case reykjavik
    case riga
    case riyadh
    case roadTown
    case rome
    case roseau
    case saintJohns
    case saintPierre
    case saipan
    case sanJose
    case sanJuan
    case sanMarino
    case sanSalvador
    case santiago
    case santoDomingo
    case saoTome
    case sarajevo
    case seoul
    case skopje
    case sofia
    case stanley
    case stockholm
    case stPeterPort
    case suva
    case tallinn
    case tarawa
    case tashkent
    case tBilisi
    case tegucigalpa
    case tehran
    case thimphu
    case tirana
    case torshavn
    case tripoli
    case tunis
    case vaduz
    case valletta
    case vienna
    case vientiane
    case vilnius
    case warsaw
    case washingtonDC
    case wellington
    case willemstad
    case windhoek
    case yamoussoukro
    case yangon
    case yaounde
    case yerevan
    case zagreb

    public var coordinates: CLLocationCoordinate2D {
        switch self {
        case .abuDhabi:
            return CLLocationCoordinate2D(latitude: 24.28, longitude: 54.22)
        case .abuja:
            return CLLocationCoordinate2D(latitude: 9.05, longitude: 7.32)
        case .accra:
            return CLLocationCoordinate2D(latitude: 05.35, longitude: 0.06)
        case .addisAbaba:
            return CLLocationCoordinate2D(latitude: 9.02, longitude: 38.42)
        case .algiers:
            return CLLocationCoordinate2D(latitude: 36.42, longitude: 3.08)
        case .amman:
            return CLLocationCoordinate2D(latitude: 31.57, longitude: 35.52)
        case .amsterdam:
            return CLLocationCoordinate2D(latitude: 52.23, longitude: 4.54)
        case .andorraLaVella:
            return CLLocationCoordinate2D(latitude: 42.31, longitude: 1.32)
        case .ankara:
            return CLLocationCoordinate2D(latitude: 39.57, longitude: 32.54)
        case .antananarivo:
            return CLLocationCoordinate2D(latitude: 18.55, longitude: 47.31)
        case .apia:
            return CLLocationCoordinate2D(latitude: 13.5, longitude: 171.5)
        case .ashgabat:
            return CLLocationCoordinate2D(latitude: 38, longitude: 57.5)
        case .asmara:
            return CLLocationCoordinate2D(latitude: 15.19, longitude: 38.55)
        case .astana:
            return CLLocationCoordinate2D(latitude: 51.1, longitude: 71.3)
        case .asuncion:
            return CLLocationCoordinate2D(latitude: 25.1, longitude: 57.3)
        case .athens:
            return CLLocationCoordinate2D(latitude: 37.58, longitude: 23.46)
        case .baghdad:
            return CLLocationCoordinate2D(latitude: 33.2, longitude: 44.3)
        case .baku:
            return CLLocationCoordinate2D(latitude: 40.29, longitude: 49.56)
        case .bamako:
            return CLLocationCoordinate2D(latitude: 12.34, longitude: 7.55)
        case .bandarSeriBegawan:
            return CLLocationCoordinate2D(latitude: 4.52, longitude: 115)
        case .bangkok:
            return CLLocationCoordinate2D(latitude: 13.45, longitude: 100.35)
        case .bangui:
            return CLLocationCoordinate2D(latitude: 4.23, longitude: 18.35)
        case .banjul:
            return CLLocationCoordinate2D(latitude: 13.28, longitude: 16.4)
        case .basseTerre:
            return CLLocationCoordinate2D(latitude: 16, longitude: 61.44)
        case .basseterre:
            return CLLocationCoordinate2D(latitude: 17.17, longitude: 62.43)
        case .beijing:
            return CLLocationCoordinate2D(latitude: 39.55, longitude: 116.2)
        case .beirut:
            return CLLocationCoordinate2D(latitude: 33.53, longitude: 35.31)
        case .belgrade:
            return CLLocationCoordinate2D(latitude: 44.5, longitude: 20.37)
        case .belmopan:
            return CLLocationCoordinate2D(latitude: 17.18, longitude: 88.3)
        case .berlin:
            return CLLocationCoordinate2D(latitude: 52.3, longitude: 13.25)
        case .bern:
            return CLLocationCoordinate2D(latitude: 46.57, longitude: 7.28)
        case .bishkek:
            return CLLocationCoordinate2D(latitude: 42.54, longitude: 74.46)
        case .bissau:
            return CLLocationCoordinate2D(latitude: 11.45, longitude: 15.45)
        case .bogota:
            return CLLocationCoordinate2D(latitude: 4.34, longitude: 74)
        case .brasilia:
            return CLLocationCoordinate2D(latitude: 15.47, longitude: 47.55)
        case .bratislava:
            return CLLocationCoordinate2D(latitude: 48.1, longitude: 17.07)
        case .brazzaville:
            return CLLocationCoordinate2D(latitude: 4.09, longitude: 15.12)
        case .bridgetown:
            return CLLocationCoordinate2D(latitude: 13.05, longitude: 59.3)
        case .brussels:
            return CLLocationCoordinate2D(latitude: 50.51, longitude: 4.21)
        case .bucuresti:
            return CLLocationCoordinate2D(latitude: 44.27, longitude: 26.1)
        case .budapest:
            return CLLocationCoordinate2D(latitude: 47.29, longitude: 19.05)
        case .buenosAires:
            return CLLocationCoordinate2D(latitude: 36.3, longitude: 60)
        case .bujumbura:
            return CLLocationCoordinate2D(latitude: 3.16, longitude: 29.18)
        case .cairo:
            return CLLocationCoordinate2D(latitude: 30.01, longitude: 31.14)
        case .canberra:
            return CLLocationCoordinate2D(latitude: 35.15, longitude: 149.08)
        case .caracas:
            return CLLocationCoordinate2D(latitude: 10.3, longitude: 66.55)
        case .castries:
            return CLLocationCoordinate2D(latitude: 14.02, longitude: 60.58)
        case .cayenne:
            return CLLocationCoordinate2D(latitude: 5.05, longitude: 52.18)
        case .charlotteAmali:
            return CLLocationCoordinate2D(latitude: 18.21, longitude: 64.56)
        case .chisinau:
            return CLLocationCoordinate2D(latitude: 47.02, longitude: 28.5)
        case .conakry:
            return CLLocationCoordinate2D(latitude: 09.29, longitude: 13.49)
        case .copenhagen:
            return CLLocationCoordinate2D(latitude: 55.41, longitude: 12.34)
        case .dakar:
            return CLLocationCoordinate2D(latitude: 14.34, longitude: 17.29)
        case .damascus:
            return CLLocationCoordinate2D(latitude: 33.3, longitude: 36.18)
        case .dhaka:
            return CLLocationCoordinate2D(latitude: 23.43, longitude: 90.26)
        case .dili:
            return CLLocationCoordinate2D(latitude: 8.29, longitude: 125.34)
        case .djibouti:
            return CLLocationCoordinate2D(latitude: 11.08, longitude: 42.2)
        case .dodoma:
            return CLLocationCoordinate2D(latitude: 6.08, longitude: 35.45)
        case .doha:
            return CLLocationCoordinate2D(latitude: 25.15, longitude: 51.35)
        case .dublin:
            return CLLocationCoordinate2D(latitude: 53.21, longitude: 6.15)
        case .dushanbe:
            return CLLocationCoordinate2D(latitude: 38.33, longitude: 68.48)
        case .fortDeFrance:
            return CLLocationCoordinate2D(latitude: 14.36, longitude: 61.02)
        case .freetown:
            return CLLocationCoordinate2D(latitude: 8.3, longitude: 13.17)
        case .funafuti:
            return CLLocationCoordinate2D(latitude: 8.31, longitude: 179.13)
        case .gaborone:
            return CLLocationCoordinate2D(latitude: 24.45, longitude: 25.57)
        case .george:
            return CLLocationCoordinate2D(latitude: 19.20, longitude: 81.24)
        case .georgetown:
            return CLLocationCoordinate2D(latitude: 6.5, longitude: 58.12)
        case .guatemala:
            return CLLocationCoordinate2D(latitude: 14.40, longitude: 90.22)
        case .hanoi:
            return CLLocationCoordinate2D(latitude: 21.05, longitude: 105.55)
        case .harare:
            return CLLocationCoordinate2D(latitude: 17.43, longitude: 31.02)
        case .havana:
            return CLLocationCoordinate2D(latitude: 23.08, longitude: 82.22)
        case .helsinki:
            return CLLocationCoordinate2D(latitude: 60.15, longitude: 25.03)
        case .honiara:
            return CLLocationCoordinate2D(latitude: 9.27, longitude: 159.57)
        case .islamabad:
            return CLLocationCoordinate2D(latitude: 33.40, longitude: 73.10)
        case .jakarta:
            return CLLocationCoordinate2D(latitude: 06.09, longitude: 106.49)
        case .jerusalem:
            return CLLocationCoordinate2D(latitude: 31.71, longitude: 35.10)
        case .kabul:
            return CLLocationCoordinate2D(latitude: 34.28, longitude: 69.11)
        case .kampala:
            return CLLocationCoordinate2D(latitude: 0.2, longitude: 32.3)
        case .kathmandu:
            return CLLocationCoordinate2D(latitude: 27.45, longitude: 85.2)
        case .khartoum:
            return CLLocationCoordinate2D(latitude: 15.31, longitude: 32.35)
        case .kiev:
            return CLLocationCoordinate2D(latitude: 50.30, longitude: 30.28)
        case .kigali:
            return CLLocationCoordinate2D(latitude: 1.59, longitude: 30.04)
        case .kingstonJamaica:
            return CLLocationCoordinate2D(latitude: 18, longitude: 76.5)
        case .kingstonNorfolkIsland:
            return CLLocationCoordinate2D(latitude: 45.20, longitude: 168.43)
        case .kingstown:
            return CLLocationCoordinate2D(latitude: 13.1, longitude: 61.1)
        case .kinshasa:
            return CLLocationCoordinate2D(latitude: 4.2, longitude: 15.15)
        case .kuala:
            return CLLocationCoordinate2D(latitude: 3.09, longitude: 101.41)
        case .kuwait:
            return CLLocationCoordinate2D(latitude: 29.3, longitude: 48)
        case .laPaz:
            return CLLocationCoordinate2D(latitude: 16.2, longitude: 68.1)
        case .libreville:
            return CLLocationCoordinate2D(latitude: 00.25, longitude: 9.26)
        case .lilongwe:
            return CLLocationCoordinate2D(latitude: 14, longitude: 33.48)
        case .lima:
            return CLLocationCoordinate2D(latitude: 12, longitude: 77)
        case .lisbon:
            return CLLocationCoordinate2D(latitude: 38.42, longitude: 9.1)
        case .ljubljana:
            return CLLocationCoordinate2D(latitude: 46.04, longitude: 14.33)
        case .lome:
            return CLLocationCoordinate2D(latitude: 6.09, longitude: 1.2)
        case .london:
            return CLLocationCoordinate2D(latitude: 51.36, longitude: 0.05)
        case .luanda:
            return CLLocationCoordinate2D(latitude: 8.5, longitude: 13.15)
        case .lusaka:
            return CLLocationCoordinate2D(latitude: 15.28, longitude: 28.16)
        case .luxembourg:
            return CLLocationCoordinate2D(latitude: 49.37, longitude: 6.09)
        case .macau:
            return CLLocationCoordinate2D(latitude: 22.12, longitude: 113.33)
        case .madrid:
            return CLLocationCoordinate2D(latitude: 40.25, longitude: 03.45)
        case .malabo:
            return CLLocationCoordinate2D(latitude: 3.45, longitude: 08.5)
        case .male:
            return CLLocationCoordinate2D(latitude: 4, longitude: 73.28)
        case .mamoudzou:
            return CLLocationCoordinate2D(latitude: 12.48, longitude: 45.14)
        case .managua:
            return CLLocationCoordinate2D(latitude: 12.06, longitude: 86.2)
        case .manama:
            return CLLocationCoordinate2D(latitude: 26.1, longitude: 50.3)
        case .manila:
            return CLLocationCoordinate2D(latitude: 14.4, longitude: 121.03)
        case .maputo:
            return CLLocationCoordinate2D(latitude: 25.58, longitude: 32.32)
        case .maseru:
            return CLLocationCoordinate2D(latitude: 29.18, longitude: 27.3)
        case .masqat:
            return CLLocationCoordinate2D(latitude: 23.37, longitude: 58.36)
        case .mbabane:
            return CLLocationCoordinate2D(latitude: 26.18, longitude: 31.06)
        case .mexico:
            return CLLocationCoordinate2D(latitude: 19.2, longitude: 99.1)
        case .minsk:
            return CLLocationCoordinate2D(latitude: 53.52, longitude: 27.3)
        case .mogadishu:
            return CLLocationCoordinate2D(latitude: 2.02, longitude: 45.25)
        case .monrovia:
            return CLLocationCoordinate2D(latitude: 6.18, longitude: 10.47)
        case .montevideo:
            return CLLocationCoordinate2D(latitude: 34.5, longitude: 56.11)
        case .moroni:
            return CLLocationCoordinate2D(latitude: 11.4, longitude: 43.16)
        case .moskva:
            return CLLocationCoordinate2D(latitude: 55.45, longitude: 37.35)
        case .nairobi:
            return CLLocationCoordinate2D(latitude: 1.17, longitude: 36.48)
        case .nassau:
            return CLLocationCoordinate2D(latitude: 25.05, longitude: 77.2)
        case .nDjamena:
            return CLLocationCoordinate2D(latitude: 12.1, longitude: 14.59)
        case .newDelhi:
            return CLLocationCoordinate2D(latitude: 28.37, longitude: 77.13)
        case .ngerulmud:
            return CLLocationCoordinate2D(latitude: 7.5004, longitude: 134.6243)
        case .niamey:
            return CLLocationCoordinate2D(latitude: 13.27, longitude: 2.06)
        case .nicosia:
            return CLLocationCoordinate2D(latitude: 35.1, longitude: 33.25)
        case .nouakchott:
            return CLLocationCoordinate2D(latitude: 20.1, longitude: 57.3)
        case .noumea:
            return CLLocationCoordinate2D(latitude: 22.17, longitude: 166.3)
        case .nukuAlofa:
            return CLLocationCoordinate2D(latitude: 21.1, longitude: 174)
        case .nuuk:
            return CLLocationCoordinate2D(latitude: 64.1, longitude: 51.35)
        case .oranjestad:
            return CLLocationCoordinate2D(latitude: 12.32, longitude: 70.02)
        case .oslo:
            return CLLocationCoordinate2D(latitude: 59.55, longitude: 10.45)
        case .ottawa:
            return CLLocationCoordinate2D(latitude: 45.27, longitude: 75.42)
        case .ouagadougou:
            return CLLocationCoordinate2D(latitude: 12.15, longitude: 1.3)
        case .pagoPago:
            return CLLocationCoordinate2D(latitude: 14.16, longitude: 170.43)
        case .palikir:
            return CLLocationCoordinate2D(latitude: 6.55, longitude: 158.09)
        case .panama:
            return CLLocationCoordinate2D(latitude: 9, longitude: 79.25)
        case .papeete:
            return CLLocationCoordinate2D(latitude: 17.32, longitude: 149.34)
        case .paramaribo:
            return CLLocationCoordinate2D(latitude: 5.5, longitude: 55.1)
        case .paris:
            return CLLocationCoordinate2D(latitude: 48.5, longitude: 2.2)
        case .phnomPenh:
            return CLLocationCoordinate2D(latitude: 11.33, longitude: 104.55)
        case .portAuPrince:
            return CLLocationCoordinate2D(latitude: 18.4, longitude: 72.2)
        case .portMoresby:
            return CLLocationCoordinate2D(latitude: 09.24, longitude: 147.08)
        case .portoNovo:
            return CLLocationCoordinate2D(latitude: 6.23, longitude: 2.42)
        case .portVila:
            return CLLocationCoordinate2D(latitude: 17.45, longitude: 168.18)
        case .prague:
            return CLLocationCoordinate2D(latitude: 50.05, longitude: 14.22)
        case .praia:
            return CLLocationCoordinate2D(latitude: 15.02, longitude: 23.34)
        case .pretoria:
            return CLLocationCoordinate2D(latitude: 25.44, longitude: 28.12)
        case .pyongyang:
            return CLLocationCoordinate2D(latitude: 39.09, longitude: 125.3)
        case .quito:
            return CLLocationCoordinate2D(latitude: 0.15, longitude: 78.35)
        case .reykjavik:
            return CLLocationCoordinate2D(latitude: 64.1, longitude: 21.57)
        case .riga:
            return CLLocationCoordinate2D(latitude: 56.53, longitude: 24.08)
        case .riyadh:
            return CLLocationCoordinate2D(latitude: 24.41, longitude: 46.42)
        case .roadTown:
            return CLLocationCoordinate2D(latitude: 18.27, longitude: 64.37)
        case .rome:
            return CLLocationCoordinate2D(latitude: 41.54, longitude: 12.29)
        case .roseau:
            return CLLocationCoordinate2D(latitude: 15.2, longitude: 61.24)
        case .saintJohns:
            return CLLocationCoordinate2D(latitude: 17.127, longitude: 61.846)
        case .saintPierre:
            return CLLocationCoordinate2D(latitude: 46.46, longitude: 56.12)
        case .saipan:
            return CLLocationCoordinate2D(latitude: 15.12, longitude: 145.45)
        case .sanJose:
            return CLLocationCoordinate2D(latitude: 09.55, longitude: 84.02)
        case .sanJuan:
            return CLLocationCoordinate2D(latitude: 18.28, longitude: 66.07)
        case .sanMarino:
            return CLLocationCoordinate2D(latitude: 43.55, longitude: 12.3)
        case .sanSalvador:
            return CLLocationCoordinate2D(latitude: 13.4, longitude: 89.1)
        case .santiago:
            return CLLocationCoordinate2D(latitude: 33.24, longitude: 70.4)
        case .santoDomingo:
            return CLLocationCoordinate2D(latitude: 18.3, longitude: 69.59)
        case .saoTome:
            return CLLocationCoordinate2D(latitude: 0.1, longitude: 6.39)
        case .sarajevo:
            return CLLocationCoordinate2D(latitude: 43.52, longitude: 18.26)
        case .seoul:
            return CLLocationCoordinate2D(latitude: 37.31, longitude: 126.58)
        case .skopje:
            return CLLocationCoordinate2D(latitude: 42.01, longitude: 21.26)
        case .sofia:
            return CLLocationCoordinate2D(latitude: 42.45, longitude: 23.2)
        case .stanley:
            return CLLocationCoordinate2D(latitude: 51.4, longitude: 59.51)
        case .stockholm:
            return CLLocationCoordinate2D(latitude: 59.2, longitude: 18.03)
        case .stPeterPort:
            return CLLocationCoordinate2D(latitude: 49.26, longitude: 2.33)
        case .suva:
            return CLLocationCoordinate2D(latitude: 18.06, longitude: 178.3)
        case .tallinn:
            return CLLocationCoordinate2D(latitude: 59.22, longitude: 24.48)
        case .tarawa:
            return CLLocationCoordinate2D(latitude: 1.3, longitude: 173)
        case .tashkent:
            return CLLocationCoordinate2D(latitude: 41.2, longitude: 69.1)
        case .tBilisi:
            return CLLocationCoordinate2D(latitude: 41.43, longitude: 44.5)
        case .tegucigalpa:
            return CLLocationCoordinate2D(latitude: 14.05, longitude: 87.14)
        case .tehran:
            return CLLocationCoordinate2D(latitude: 35.44, longitude: 51.3)
        case .thimphu:
            return CLLocationCoordinate2D(latitude: 27.31, longitude: 89.45)
        case .tirana:
            return CLLocationCoordinate2D(latitude: 41.18, longitude: 19.49)
        case .torshavn:
            return CLLocationCoordinate2D(latitude: 62.05, longitude: 6.56)
        case .tripoli:
            return CLLocationCoordinate2D(latitude: 32.49, longitude: 13.07)
        case .tunis:
            return CLLocationCoordinate2D(latitude: 36.5, longitude: 10.11)
        case .vaduz:
            return CLLocationCoordinate2D(latitude: 47.08, longitude: 9.31)
        case .valletta:
            return CLLocationCoordinate2D(latitude: 35.54, longitude: 14.31)
        case .vienna:
            return CLLocationCoordinate2D(latitude: 48.12, longitude: 16.22)
        case .vientiane:
            return CLLocationCoordinate2D(latitude: 17.58, longitude: 102.36)
        case .vilnius:
            return CLLocationCoordinate2D(latitude: 54.38, longitude: 25.19)
        case .warsaw:
            return CLLocationCoordinate2D(latitude: 52.13, longitude: 21)
        case .washingtonDC:
            return CLLocationCoordinate2D(latitude: 39.91, longitude: 77.02)
        case .wellington:
            return CLLocationCoordinate2D(latitude: 41.19, longitude: 174.46)
        case .willemstad:
            return CLLocationCoordinate2D(latitude: 12.05, longitude: 69)
        case .windhoek:
            return CLLocationCoordinate2D(latitude: 22.35, longitude: 17.04)
        case .yamoussoukro:
            return CLLocationCoordinate2D(latitude: 6.49, longitude: 5.17)
        case .yangon:
            return CLLocationCoordinate2D(latitude: 16.45, longitude: 96.2)
        case .yaounde:
            return CLLocationCoordinate2D(latitude: 3.5, longitude: 11.35)
        case .yerevan:
            return CLLocationCoordinate2D(latitude: 40.1, longitude: 44.31)
        case .zagreb:
            return CLLocationCoordinate2D(latitude: 45.5, longitude: 15.58)
        }
    }
}
