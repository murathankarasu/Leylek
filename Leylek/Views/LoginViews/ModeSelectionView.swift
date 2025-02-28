//
//  ModeSelectionView.swift
//  Leylek
//
//  Created by Murathan Karasu on 27.02.2025.
//

import SwiftUI

struct ModeSelectionView: View {
    let username: String
    @State private var navigateToMainView = false
    @State private var navigateToMultiMode = false

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea() // Arka plan turuncu
            
            VStack(spacing: 30) {
                Text("Welcome, \(username)!")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 50)
                
                Text("Select Mode")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Button(action: {
                    navigateToMainView = true
                }) {
                    Text("Single Mode")
                        .font(.headline)
                        .frame(width: 250, height: 50)
                        .background(Color.white)
                        .foregroundColor(.orange)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    navigateToMultiMode = true
                }) {
                    Text("Multi Mode")
                        .font(.headline)
                        .frame(width: 250, height: 50)
                        .background(Color.white)
                        .foregroundColor(.orange)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .padding(.horizontal, 20)

            if navigateToMainView {
                MainView()
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut(duration: 0.5), value: navigateToMainView)
            }
            
            if navigateToMultiMode {
                MultiModeView()
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut(duration: 0.5), value: navigateToMultiMode)
            }
        }
    }
}

