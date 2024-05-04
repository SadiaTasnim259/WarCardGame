//
//  ContentView.swift
//  WarCardGame
//
//  Created by Sadia on 29/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var CPUCard = "card4"
    
    @State var playerScore = 0
    @State var CPUScore = 0
    
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
                    Image(playerCard)
                    Spacer()
                    Image(CPUCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    randomNumber()
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
                        Text(String(playerScore))
                            .font(.system(size: 35, weight: .medium, design: .default))
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.system(size: 28, weight: .medium, design: .default))
                            .padding(.bottom, 10)
                        Text(String(CPUScore))
                            .font(.system(size: 35, weight: .medium, design: .default))
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
    
    func randomNumber(){
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        var CPUCardValue = Int.random(in: 2...14)
        CPUCard = "card" + String(CPUCardValue)
        
        if playerCardValue > CPUCardValue{
            playerScore += 1
        }else if CPUCardValue > playerCardValue{
            CPUScore += 1
        }else if CPUCardValue == playerCardValue{
            playerScore += 0
            CPUScore += 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
