//
//  MultiModeManager.swift
//  Leylek
//
//  Created by Murathan Karasu on 28.02.2025.
//


//
//  MultiModeManager.swift
//  Leylek
//
//  Created by Murathan Karasu on 28.02.2025.
//

import Foundation
import MapKit

class MultiModeManager: ObservableObject {
    @Published var otherUsers: [UserLocation] = []
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )

    func startTrackingUsers() {
        // Örnek kullanıcı konumları
        otherUsers = [
            UserLocation(username: "User1", location: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
            UserLocation(username: "User2", location: CLLocationCoordinate2D(latitude: 37.7750, longitude: -122.4200)),
            UserLocation(username: "User3", location: CLLocationCoordinate2D(latitude: 37.7751, longitude: -122.4210))
        ]
    }
}
