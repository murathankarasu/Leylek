//
//  UserLocation.swift
//  Leylek
//
//  Created by Murathan Karasu on 28.02.2025.
//


//
//  UserLocation.swift
//  Leylek
//
//  Created by Murathan Karasu on 28.02.2025.
//

import Foundation
import MapKit

struct UserLocation: Identifiable {
    let id = UUID()
    let username: String
    let location: CLLocationCoordinate2D
}
