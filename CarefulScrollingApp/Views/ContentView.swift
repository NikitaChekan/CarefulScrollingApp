//
//  ContentView.swift
//  CarefulScrollingApp
//
//  Created by jopootrivatel on 01.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                ScrollScreenView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("First")
                    }
            }
            GeometryReader { geometry in
                Rectangle()
                    .fill(.red.opacity(0.7))
//                    .edgesIgnoringSafeArea(.bottom)
                    .frame(width: geometry.size.width, height: 50)
                    .position(
                        x: geometry.size.width / 2,
                        y: geometry.size.height - 75
                    )
            }
        }
    }
}

#Preview {
    ContentView()
}
