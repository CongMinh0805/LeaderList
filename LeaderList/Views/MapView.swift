//
//  MapView.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 03/08/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    struct AnnotationItem: Identifiable {
        let id = UUID()
        let coordinate: CLLocationCoordinate2D
    }
    
    let coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [AnnotationItem(coordinate: coordinate)]) { item in
            MapMarker(coordinate: item.coordinate, tint: .red)
                
        }
        .onAppear {
            region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004))
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 37.334_900, longitude: -122.009_020))
    }
}
