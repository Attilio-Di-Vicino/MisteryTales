//
//  Coordinator.swift
//  Mistery Tales
//
//  Created by Attilio Di vicino on 15/07/21.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var control: Mapview
    
    init(_ control: Mapview) {
        self.control = control
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let coordinate = locations.first?.coordinate {
            UserDefaults.standard.set(coordinate.latitude, forKey: "latitude")
            UserDefaults.standard.set(coordinate.longitude, forKey: "longitude")
        }
    }
    
}
