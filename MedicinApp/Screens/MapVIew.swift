//
//  MapVIew.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 12/11/2024.
//

import SwiftUI
import MapKit
//Sin usar
struct MapVIew: View {
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: -35.65953000066785, longitude: -63.754300177756804)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 0.07, longitudeDelta: 0.07)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    MapVIew()
}
