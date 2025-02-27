//
//  WelcomeView.swift
//  Leylek
//
//  Created by Murathan Karasu on 27.02.2025.
//

import SwiftUI

struct WelcomeView: View {
    @State private var username: String = ""
    @State private var showError = false
    @State private var navigateToModeSelection = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea() // Arka plan turuncu
            
            VStack(spacing: 20) {
                Image("stork") // Leylek görseli küçültüldü
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.top, 50)
                
                Text("WELCOME")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white) // Yazılar beyaz
                
                TextField("Enter your username", text: $username) // Placeholder güncellendi
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white) // Arkaplan beyaz
                    .cornerRadius(10)
                    .foregroundColor(.black) // Kullanıcı adı siyah yazılacak
                
                if showError {
                    Text("Username cannot be empty!")
                        .foregroundColor(.red)
                        .font(.footnote)
                }
                
                Button(action: {
                    if username.isEmpty {
                        showError = true
                    } else {
                        navigateToModeSelection = true
                    }
                }) {
                    Text("Sign In")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color.white) // Buton tamamen dolu
                        .foregroundColor(.orange) // Yazı turuncu
                        .cornerRadius(10)
                }
                .frame(width: 300)
                .padding(.top, 10)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            
            if navigateToModeSelection {
                ModeSelectionView(username: username)
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut(duration: 0.5), value: navigateToModeSelection)
            }
        }
    }
}

