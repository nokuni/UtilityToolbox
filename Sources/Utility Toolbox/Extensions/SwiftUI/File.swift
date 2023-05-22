//
//  File.swift
//  
//
//  Created by Yann Christophe MAERTENS on 22/05/2023.
//

import SwiftUI
import MapKit

struct TestingView: View {
    @State var region = MKCoordinateRegion(capital: .france)
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

public extension MKCoordinateRegion {
    init(capital: WorldMapCapital,
         span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)) {
        self.init(center: CLLocationCoordinate2D(capital: capital), span: span)
    }
}

public extension CLLocationCoordinate2D {
    init(capital: WorldMapCapital) {
        self.init(latitude: capital.coordinates.latitude, longitude: capital.coordinates.longitude)
    }
}

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
