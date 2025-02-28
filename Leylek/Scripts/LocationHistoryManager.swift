//
//  LocationHistoryManager.swift
//  Leylek
//
//  Created by Murathan Karasu on 28.02.2025.
//


//
//  LocationHistoryManager.swift
//  Leylek
//
//  Created by Murathan Karasu on 27.02.2025.
//

import Foundation
import CoreLocation

class LocationHistoryManager: ObservableObject {
    @Published var visitedLocations: [String: Int] = [:] // Konum adı: Ziyaret sayısı
    
    func addVisitedLocation(_ place: String) {
        if let count = visitedLocations[place] {
            visitedLocations[place] = count + 1
        } else {
            visitedLocations[place] = 1
        }
    }
    
    func getSuggestedRoute() -> [String] {
        let sortedLocations = visitedLocations.sorted { $0.value > $1.value }
        var suggestedRoute: [String] = []
        
        for (place, _) in sortedLocations {
            if place.lowercased().contains("mc donald's") {
                suggestedRoute.append("Suggested: Burger King, Shake Shack")
            } else if place.lowercased().contains("coffee") {
                suggestedRoute.append("Suggested: Starbucks, Dunkin Donuts")
            }
        }
        
        return suggestedRoute
    }
}
