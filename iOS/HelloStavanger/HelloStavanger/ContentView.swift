//
//  ContentView.swift
//  HelloStavanger
//
//  Created by Tore Halset on 30/09/2024.
//

import SwiftUI

import MapLibre

struct ContentView: View {
    var body: some View {
        MapView()
    }
}

struct MapView: UIViewRepresentable {
    
    func updateUIView(_ uiView: MLNMapView, context: Context) {
        
    }

    func makeUIView(context: Context) -> MLNMapView {

        // Build the style url
        let styleURL = URL(string: "http://127.0.0.1:3000/web-02-geojson/style.json")

        // create the mapview
        let mapView = MLNMapView(frame: .zero, styleURL: styleURL)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.logoView.isHidden = true
        mapView.setCenter(
            CLLocationCoordinate2D(latitude: 58.9369, longitude: 6.1197),
            zoomLevel: 12,
            animated: false)

        return mapView
    }
    
}

#Preview {
    ContentView()
}
