//
//  ModeSelectionView.swift
//  Leylek
//
//  Created by Murathan Karasu on 27.02.2025.
//


import SwiftUI

struct ModeSelectionView: View {
    let username: String
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Hoşgeldin, \(username)!")
                    .font(.title)
                    .bold()
                    .foregroundColor(.orange)
                    .padding(.top, 50)
                
                Text("Mod Seçiniz")
                    .font(.headline)
                    .foregroundColor(.orange)
                
                Button(action: {
                    // Single Mod'a geçiş
                }) {
                    Text("Single Mod")
                        .font(.headline)
                        .padding()
                        .frame(width: 250)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Multi Mod'a geçiş
                }) {
                    Text("Multi Mod")
                        .font(.headline)
                        .padding()
                        .frame(width: 250)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}
