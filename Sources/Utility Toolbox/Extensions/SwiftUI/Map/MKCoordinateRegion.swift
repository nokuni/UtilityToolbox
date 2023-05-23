//
//  MKCoordinateRegion.swift
//  
//
//  Created by Yann Christophe MAERTENS on 23/05/2023.
//

import MapKit

public extension MKCoordinateRegion {
    init(capital: WorldMapCapital,
         span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)) {
        self.init(center: CLLocationCoordinate2D(capital: capital), span: span)
    }
}
