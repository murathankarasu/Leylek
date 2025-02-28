//
//  SuggestedRoutesView.swift
//  Leylek
//
//  Created by Murathan Karasu on 28.02.2025.
//


//
//  SuggestedRoutesView.swift
//  Leylek
//
//  Created by Murathan Karasu on 27.02.2025.
//

import SwiftUI

struct SuggestedRoutesView: View {
    @StateObject private var historyManager = LocationHistoryManager()
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Text("Suggested Routes")
                    .font(.title)
                    .foregroundColor(.orange)
                    .bold()
                    .padding()

                List(historyManager.getSuggestedRoute(), id: \.self) { route in
                    Text(route)
                        .foregroundColor(.black)
                }
            }
        }
    }
}
