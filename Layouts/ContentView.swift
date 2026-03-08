//
//  ContentView.swift
//  Layouts
//
//  Created by Louise Verbeke on 02/03/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
            
            VStack {
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height:150)
                    .frame(maxWidth: .infinity)
                //  .border(.orange, width: 2)
                    .padding()
                
                Spacer()
                
                HStack {
                    Button("Awesome") {
                        messageString = "You Are Awesome!"
                    }
                    
                    Spacer()
                    
                    Button("Great") {
                        messageString = "You Are Great!"
                    }
                }
                .buttonStyle(.borderedProminent)
                //            .border(.purple, width: 5)
                .padding()
            }
        }
    }
    
    #Preview {
        ContentView()
    }
