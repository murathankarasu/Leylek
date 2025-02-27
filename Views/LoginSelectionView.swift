//
//  LoginSelectionView.swift
//  Leylek
//
//  Created by Murathan Karasu on 27.02.2025.
//
import SwiftUI

struct LoginSelectionView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hoş Geldiniz")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 50)
                    
                Spacer()
                
                Button(action: {
                    // Apple ile giriş fonksiyonu buraya eklenebilir
                }) {
                    Text("Apple ile Giriş Yap")
                        .font(.headline)
                        .padding()
                        .frame(width: 250)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Single Mode'a geçiş
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
                    // Multi Mode'a geçiş
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

#Preview {
    LoginSelectionView()
}
