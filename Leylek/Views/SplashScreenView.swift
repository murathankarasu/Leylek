//
//  SplashScreenView.swift
//  Leylek
//
//  Created by Murathan Karasu on 25.02.2025.
//
import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var birdOffset: CGFloat = -300
    @State private var birdOpacity: Double = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.blue.ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("stork") // Leylek resmini kullan
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .offset(y: birdOffset)
                        .opacity(birdOpacity)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 2)) {
                                birdOffset = 0
                                birdOpacity = 1.0
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                                withAnimation(.easeInOut(duration: 1.5)) {
                                    birdOffset = 300
                                    birdOpacity = 0.0
                                }
                            }
                        }
                    
                    Text("VisionMap AR")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    
                    Spacer()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    isActive = true
                }
            }
            .fullScreenCover(isPresented: $isActive, content: {
                ContentView()
            })
        }
    }
}
