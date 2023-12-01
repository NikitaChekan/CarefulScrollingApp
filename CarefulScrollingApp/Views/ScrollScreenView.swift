//
//  ScrollScreenView.swift
//  CarefulScrollingApp
//
//  Created by jopootrivatel on 01.12.2023.
//

import SwiftUI

struct ScrollScreenView: View {
    var body: some View {
        List {
            LazyVStack(spacing: 0) {
                ForEach(1...100, id: \.self) { number in
                    Text("\(number)")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.gray)
                }
            }
            .padding(.top, 10)
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
        }
        .listStyle(.grouped)
        .ignoresSafeArea()
    }
}

#Preview {
    ScrollScreenView()
}
