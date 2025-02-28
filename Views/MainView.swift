import SwiftUI
import MapKit

struct MainView: View {
    @State private var showMap = false
    @State private var mapOpacity: Double = 1.0
    @State private var mapScale: CGFloat = 1.0
    @State private var isMultiMode = false
    @State private var animationAmount: CGFloat = 1.0

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            if showMap {
                MapView()
                    .opacity(mapOpacity)
                    .scaleEffect(mapScale)
                    .transition(.opacity)
                    .frame(width: 400, height: 300)
                    .cornerRadius(15)
                    .shadow(radius: 10)
                    .animation(.easeInOut(duration: 0.5), value: showMap)
            }
            
            VStack {
                Text("Leylek")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.top, 50)
                    .scaleEffect(animationAmount)
                    .animation(.spring(response: 1, dampingFraction: 0.5), value: animationAmount)
                    .onAppear {
                        animationAmount = 1.2
                    }
                
                Spacer()
                
                if !showMap {
                    Button(action: {
                        withAnimation {
                            showMap.toggle()
                        }
                    }) {
                        Text("Haritayı Aç")
                            .padding()
                            .frame(width: 200)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    .padding()
                }
                
                if showMap {
                    VStack(spacing: 15) {
                        HStack {
                            Text("Şeffaflık")
                                .foregroundColor(.white)
                            Slider(value: $mapOpacity, in: 0.2...1.0, step: 0.1)
                                .animation(.easeInOut, value: mapOpacity)
                        }
                        .padding()
                        
                        HStack {
                            Text("Boyut")
                                .foregroundColor(.white)
                            Slider(value: $mapScale, in: 0.5...2.0, step: 0.1)
                                .animation(.easeInOut, value: mapScale)
                        }
                        .padding()
                        
                        Button(action: {
                            withAnimation {
                                isMultiMode.toggle()
                            }
                        }) {
                            Text(isMultiMode ? "Multi Mod Açık" : "Single Mod Açık")
                                .padding()
                                .frame(width: 200)
                                .background(isMultiMode ? Color.green : Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            withAnimation {
                                showMap.toggle()
                            }
                        }) {
                            Text("Haritayı Kapat")
                                .padding()
                                .frame(width: 200)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

