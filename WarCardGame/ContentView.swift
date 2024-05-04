//
//  ContentView.swift
//  WarCardGame
//
//  Created by Sadia on 29/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                             .font(.system(size: 28, weight: .medium, design: .default))
                            //.font(.headline)
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.system(size: 35, weight: .medium, design: .default))
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.system(size: 28, weight: .medium, design: .default))
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.system(size: 35, weight: .medium, design: .default))
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
