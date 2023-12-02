//
//  ContentView.swift
//  CarefulScrollingApp
//
//  Created by jopootrivatel on 01.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ScrollScreenView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("First")
                }
        }
    }
}

#Preview {
    ContentView()
}
