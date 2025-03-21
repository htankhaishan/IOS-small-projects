//
//  ContentView.swift
//  I Am Rich
//
//  Created by khai on 20/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(.systemTeal )
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("I Am Rich")
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(Color.white)
                    Image("diamond").resizable().aspectRatio(contentMode:.fit)
                        .frame(width: 200, height: 200, alignment: .center)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
