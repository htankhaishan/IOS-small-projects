//
//  ContentView.swift
//  TomCard
//
//  Created by khai on 20/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea()
            VStack {
                Image("KyawHtetThu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay {
                        Circle()
                            .stroke(Color.white, lineWidth: 3)
                    }
                Text("Kyaw Htet Thu")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1234567", imageName: "phone.fill")
                InfoView(text: "tom@gmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
