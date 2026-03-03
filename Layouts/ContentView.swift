//
//  ContentView.swift
//  Layouts
//
//  Created by Louise Verbeke on 02/03/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "hen the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height:150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
        
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.orange, width: 2)
        }
    }
}

#Preview {
    ContentView()
}
