//
//  ScrollScreenView.swift
//  CarefulScrollingApp
//
//  Created by jopootrivatel on 01.12.2023.
//

import SwiftUI

struct ScrollScreenView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1...100, id: \.self) { number in
                    Text("\(number)")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Rectangle()
                .fill(.red.opacity(0.5))
                .frame(height: 50)
        }
    }
}

#Preview {
    ScrollScreenView()
}
