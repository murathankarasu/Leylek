//
//  MainView.swift
//  Leylek
//
//  Created by Murathan Karasu on 27.02.2025.
//

import SwiftUI
import MapKit
import CoreLocation

struct MainView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()

            VStack {
                Text("Your Live Location")
                    .font(.title2)
                    .foregroundColor(.orange)
                    .bold()
                    .padding()

                Map(coordinateRegion: $region, showsUserLocation: true)
                    .frame(width: 300, height: 300)
                    .cornerRadius(15)
                    .shadow(radius: 5)

                Spacer()
            }
            .onAppear {
                if let location = locationManager.lastKnownLocation {
                    region.center = location
                }
            }
        }
    }
}

