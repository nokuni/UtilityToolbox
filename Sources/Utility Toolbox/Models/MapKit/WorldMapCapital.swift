//
//  WorldMapCapital.swift
//  
//
//  Created by Yann Christophe MAERTENS on 23/05/2023.
//

import MapKit

public enum WorldMapCapital {
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
        }
    }
}

/*
 
 CAPITAL     COUNTRY     LATITUDE     LONGITUDE
Abu Dhabi    United Arab Emirates    24.28N    54.22E
Abuja    Nigeria    09.05N    07.32E
Accra    Ghana    05.35N    00.06W
Addis Ababa    Ethiopia    09.02N    38.42E
Algiers    Algeria    36.42N    03.08E
Amman    Jordan    31.57N    35.52E
Amsterdam    Netherlands    52.23N    04.54E
Andorra la Vella    Andorra    42.31N    01.32E
Ankara    Turkey    39.57N    32.54E
Antananarivo    Madagascar    18.55S    47.31E
Apia    Samoa    13.50S    171.50W
Ashgabat    Turkmenistan    38.00N    57.50E
Asmara    Eritrea    15.19N    38.55E
Astana    Kazakhstan    51.10N    71.30E
Asuncion    Paraguay    25.10S    57.30W
Athens    Greece    37.58N    23.46E
Baghdad    Iraq    33.20N    44.30E
Baku    Azerbaijan    40.29N    49.56E
Bamako    Mali    12.34N    07.55W
Bandar Seri Begawan    Brunei Darussalam    04.52N    115.00E
Bangkok    Thailand    13.45N    100.35E
Bangui    Central African Republic    04.23N    18.35E
Banjul    Gambia    13.28N    16.40W
Basse-Terre    Guadeloupe    16.00N    61.44W
Basseterre    Saint Kitts and Nevis    17.17N    62.43W
Beijing    China    39.55N    116.20E
Beirut    Lebanon    33.53N    35.31E
Belgrade    Yugoslavia    44.50N    20.37E
Belmopan    Belize    17.18N    88.30W
Berlin    Germany    52.30N    13.25E
Bern    Switzerland    46.57N    07.28E
Bishkek    Kyrgyzstan    42.54N    74.46E
Bissau    Guinea-Bissau    11.45N    15.45W
Bogota    Colombia    04.34N    74.00W
Brasilia    Brazil    15.47S    47.55W
Bratislava    Slovakia    48.10N    17.07E
Brazzaville    Congo    04.09S    15.12E
Bridgetown    Barbados    13.05N    59.30W
Brussels    Belgium    50.51N    04.21E
Bucuresti    Romania    44.27N    26.10E
Budapest    Hungary    47.29N    19.05E
Buenos Aires    Argentina    36.30S    60.00W
Bujumbura    Burundi    03.16S    29.18E
Cairo    Egypt    30.01N    31.14E
Canberra    Australia    35.15S    149.08E
Caracas    Venezuela    10.30N    66.55W
Castries    Saint Lucia    14.02N    60.58W
Cayenne    French Guiana    05.05N    52.18W
Charlotte Amalie    United States of Virgin Islands    18.21N    64.56W
Chisinau    Moldova, Republic of    47.02N    28.50E
Conakry    Guinea    09.29N    13.49W
Copenhagen    Denmark    55.41N    12.34E
Dakar    Senegal    14.34N    17.29W
Damascus    Syrian Arab Republic    33.30N    36.18E
Dhaka    Bangladesh    23.43N    90.26E
Dili    East Timor    08.29S    125.34E
Djibouti    Djibouti    11.08N    42.20E
Dodoma    United Republic of Tanzania    06.08S    35.45E
Doha    Qatar    25.15N    51.35E
Dublin    Ireland    53.21N    06.15W
Dushanbe    Tajikistan    38.33N    68.48E
Fort-de-France    Martinique    14.36N    61.02W
Freetown    Sierra Leone    08.30N    13.17W
Funafuti    Tuvalu    08.31S    179.13E
Gaborone    Botswana    24.45S    25.57E
George Town    Cayman Islands    19.20N    81.24W
Georgetown    Guyana    06.50N    58.12W
Guatemala    Guatemala    14.40N    90.22W
Hanoi    Viet Nam    21.05N    105.55E
Harare    Zimbabwe    17.43S    31.02E
Havana    Cuba    23.08N    82.22W
Helsinki    Finland    60.15N    25.03E
Honiara    Solomon Islands    09.27S    159.57E
Islamabad    Pakistan    33.40N    73.10E
Jakarta    Indonesia    06.09S    106.49E
Jerusalem    Israel    31.71N    35.10W
Kabul    Afghanistan    34.28N    69.11E
Kampala    Uganda    00.20N    32.30E
Kathmandu    Nepal    27.45N    85.20E
Khartoum    Sudan    15.31N    32.35E
Kiev    Ukraine    50.30N    30.28E
Kigali    Rawanda    01.59S    30.04E
Kingston    Jamaica    18.00N    76.50W
Kingston    Norfolk Island    45.20S    168.43E
Kingstown    Saint Vincent and the Greenadines    13.10N    61.10W
Kinshasa    Democratic Republic of the Congo    04.20S    15.15E
Kuala Lumpur    Malaysia    03.09N    101.41E
Kuwait    Kuwait    29.30N    48.00E
La Paz (administrative) / Sucre (legislative)    Bolivia    16.20S    68.10W
Libreville    Gabon    00.25N    09.26E
Lilongwe    Malawi    14.00S    33.48E
Lima    Peru    12.00S    77.00W
Lisbon    Portugal    38.42N    09.10W
Ljubljana    Slovenia    46.04N    14.33E
Lome    Togo    06.09N    01.20E
London    United Kingdom of Great Britain and Northern Ireland    51.36N    00.05W
Luanda    Angola    08.50S    13.15E
Lusaka    Zambia    15.28S    28.16E
Luxembourg    Luxembourg    49.37N    06.09E
Macau    Macao, China    22.12N    113.33E
Madrid    Spain    40.25N    03.45W
Malabo    Equatorial Guinea    03.45N    08.50E
Male    Maldives    04.00N    73.28E
Mamoudzou    Mayotte    12.48S    45.14E
Managua    Nicaragua    12.06N    86.20W
Manama    Bahrain    26.10N    50.30E
Manila    Philippines    14.40N    121.03E
Maputo    Mozambique    25.58S    32.32E
Maseru    Lesotho    29.18S    27.30E
Masqat    Oman    23.37N    58.36E
Mbabane    Swaziland    26.18S    31.06E
Mexico    Mexico    19.20N    99.10W
Minsk    Belarus    53.52N    27.30E
Mogadishu    Somalia    02.02N    45.25E
Monrovia    Liberia    06.18N    10.47W
Montevideo    Uruguay    34.50S    56.11W
Moroni    Comros    11.40S    43.16E
Moskva    Russian Federation    55.45N    37.35E
Nairobi    Kenya    01.17S    36.48E
Nassau    Bahamas    25.05N    77.20W
N'Djamena    Chad    12.10N    14.59E
New Delhi    India    28.37N    77.13E
Ngerulmud    Palau    )7.5004N    134.6243E
Niamey    Niger    13.27N    02.06E
Nicosia    Cyprus    35.10N    33.25E
Nouakchott    Mauritania    20.10S    57.30E
Noumea    New Caledonia    22.17S    166.30E
Nuku'alofa    Tonga    21.10S    174.00W
Nuuk    Greenland    64.10N    51.35W
Oranjestad    Aruba    12.32N    70.02W
Oslo    Norway    59.55N    10.45E
Ottawa    Canada    45.27N    75.42W
Ouagadougou    Burkina Faso    12.15N    01.30W
Pago Pago    American Samoa    14.16S    170.43W
Palikir    Micronesia (Federated States of)    06.55N    158.09E
Panama    Panama    09.00N    79.25W
Papeete    French Polynesia    17.32S    149.34W
Paramaribo    Suriname    05.50N    55.10W
Paris    France    48.50N    02.20E
Phnom Penh    Cambodia    11.33N    104.55E
Port-au-Prince    Haiti    18.40N    72.20W
Port Moresby    Papua New Guinea    09.24S    147.08E
Porto Novo    Benin    06.23N    02.42E
Port-Vila    Vanuatu    17.45S    168.18E
Prague    Czech Republic    50.05N    14.22E
Praia    Cape Verde    15.02N    23.34W
Pretoria (administrative)    South Africa    25.44S    28.12E
Pyongyang    North Korea    39.09N    125.30E
Quito    Ecuador    00.15S    78.35W
Reykjavik    Iceland    64.10N    21.57W
Riga    Latvia    56.53N    24.08E
Riyadh    Saudi Arabia    24.41N    46.42E
Road Town    British Virgin Islands    18.27N    64.37W
Rome    Italy    41.54N    12.29E
Roseau    Dominica    15.20N    61.24W
Saint John's    Antigua and Barbuda    17.127N    61.846W
Saint-Pierre    Saint Pierre and Miquelon    46.46N    56.12W
Saipan    Northern Mariana Islands    15.12N    145.45E
San Jose    Costa Rica    09.55N    84.02W
San Juan    Puerto Rico    18.28N    66.07W
San Marino    San Marino    43.55N    12.30E
San Salvador    El Salvador    13.40N    89.10W
Santiago    Chile    33.24S    70.40W
Santo Domingo    Dominica Republic    18.30N    69.59W
Sao Tome    Sao Tome and Principe    00.10N    06.39E
Sarajevo    Bosnia and Herzegovina    43.52N    18.26E
Seoul    Republic of Korea    37.31N    126.58E
Skopje    Macedonia (Former Yugoslav Republic)    42.01N    21.26E
Sofia    Bulgaria    42.45N    23.20E
Stanley    Falkland Islands (Malvinas)    51.40S    59.51W
Stockholm    Sweden    59.20N    18.03E
St. Peter Port    Guernsey    49.26N    02.33W
Suva    Fiji    18.06S    178.30E
Tallinn    Estonia    59.22N    24.48E
Tarawa    Kiribati    01.30N    173.00E
Tashkent    Uzbekistan    41.20N    69.10E
T'bilisi    Georgia    41.43N    44.50E
Tegucigalpa    Honduras    14.05N    87.14W
Tehran    Iran (Islamic Republic of)    35.44N    51.30E
Thimphu    Bhutan    27.31N    89.45E
Tirana    Albania    41.18N    19.49E
Torshavn    Faroe Islands    62.05N    06.56W
Tripoli    Libyan Arab Jamahiriya    32.49N    13.07E
Tunis    Tunisia    36.50N    10.11E
Vaduz    Liechtenstein    47.08N    09.31E
Valletta    Malta    35.54N    14.31E
Vienna    Austria    48.12N    16.22E
Vientiane    Lao People's Democratic Republic    17.58N    102.36E
Vilnius    Lithuania    54.38N    25.19E
Warsaw    Poland    52.13N    21.00E
Washington DC    United States of America    39.91N    77.02W
Wellington    New Zealand    41.19S    174.46E
Willemstad    Netherlands Antilles    12.05N    69.00W
Windhoek    Namibia    22.35S    17.04E
Yamoussoukro    Cote d'Ivoire    06.49N    05.17W
Yangon    Myanmar    16.45N    96.20E
Yaounde    Cameroon    03.50N    11.35E
Yerevan    Armenia    40.10N    44.31E
Zagreb    Croatia    45.50N    15.58E
 */
