//
//  InfoView.swift
//  TomCard
//
//  Created by khai on 21/03/2025.
//

import SwiftUI
struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(width: geometry.size.width * 0.9, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: imageName)
                                .foregroundColor(.green)
                            Text(text)
                        }
                    )
            }
            .position(x: geometry.size.width / 2, y: 35)
        }
        .frame(height: 70)
        .padding(.horizontal,10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InfoView(text: "Hello", imageName: "phone.fill")
}
