//
//  CLLocationCoordinate2D.swift
//  
//
//  Created by Yann Christophe MAERTENS on 22/05/2023.
//

import SwiftUI
import MapKit

public extension CLLocationCoordinate2D {
    init(capital: WorldMapCapital) {
        self.init(latitude: capital.coordinates.latitude, longitude: capital.coordinates.longitude)
    }
}

struct MyMapView: View {
    @State var capital = MKCoordinateRegion(capital: .amsterdam)
    var body: some View {
        Map(coordinateRegion: $capital)
    }
}
