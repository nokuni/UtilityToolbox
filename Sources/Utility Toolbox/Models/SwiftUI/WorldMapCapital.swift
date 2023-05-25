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
    case france

    public var coordinates: CLLocationCoordinate2D {
        switch self {
        case .abuDhabi:
            return CLLocationCoordinate2D(latitude: 24.28, longitude: 54.22)
        case .abuja:
            return CLLocationCoordinate2D(latitude: 9.05, longitude: 7.32)
        case .france:
            return CLLocationCoordinate2D(latitude: 48.50, longitude: 2.2)
        }
    }
}
