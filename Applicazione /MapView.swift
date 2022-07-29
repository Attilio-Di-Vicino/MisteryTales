//
//  MapView.swift
//  Mistery Tales
//
//  Created by Attilio Di vicino on 15/07/21.
//

import SwiftUI
import MapKit

struct Mapview: UIViewRepresentable {
   
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        map.mapType = MKMapType.satellite
        locationManager.delegate = context.coordinator
        setupManager()
        return map
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func updateUIView(_ uiview: MKMapView, context: UIViewRepresentableContext<Mapview>){
   
    }
    
    
    var locationManager = CLLocationManager()
      func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
      }
}
