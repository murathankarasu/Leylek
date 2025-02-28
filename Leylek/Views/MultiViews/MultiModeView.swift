//
//  MultiModeView.swift
//  Leylek
//
//  Created by Murathan Karasu on 28.02.2025.
//

import SwiftUI
import MapKit

struct MultiModeView: View {
    @StateObject private var locationManager = LocationManager()
    @StateObject private var multiModeManager = MultiModeManager()

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()

            VStack {
                Text("Multi Mode")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .padding()

                Map(coordinateRegion: $multiModeManager.region, showsUserLocation: true, annotationItems: multiModeManager.otherUsers) { user in
                    MapPin(coordinate: user.location, tint: .blue)
                }
                .frame(width: 300, height: 300)
                .cornerRadius(15)
                .shadow(radius: 5)

                List(multiModeManager.otherUsers) { user in
                    HStack {
                        Text(user.username)
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                        Text("\(user.location.latitude), \(user.location.longitude)")
                            .foregroundColor(.white)
                            .font(.footnote)
                    }
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(10)
                }
                .frame(height: 200)
                .background(Color.orange)

                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .onAppear {
            multiModeManager.startTrackingUsers()
        }
    }
}

