import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var birdOffset: CGFloat = -300
    @State private var birdOpacity: Double = 0.0

    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()

            VStack {
                Spacer()

                Image("stork") // Leylek resmini kullan (Assets'e eklenmeli)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .offset(y: birdOffset)
                    .opacity(birdOpacity)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1.5)) {
                            birdOffset = 0
                            birdOpacity = 1.0
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation(.easeInOut(duration: 1.5)) {
                                birdOffset = 300
                                birdOpacity = 0.0
                            }
                        }
                    }

                Spacer()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                isActive = true
            }
        }
        .fullScreenCover(isPresented: $isActive, content: {
            WelcomeView()
        })
    }
}

