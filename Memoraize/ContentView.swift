//
//  ContentView.swift
//  Memoraize
//
//  Created by Rashid on 10/06/21.
//

import SwiftUI

struct ContentView: View {
    let viewModel: EmojiMemoryGame
    
    var body: some View {
    
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80, maximum: 100))],content: {
                ForEach(viewModel.cards){card in CardView(card: card).aspectRatio(1, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).onTapGesture {
                    
                }}
            }).padding()
        }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

     
 
    }
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
    }
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    var body: some View {
        ZStack{
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 8)
                    .stroke()
                    .stroke(lineWidth: 3)
                Text(card.content).font(.largeTitle).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }else{
                RoundedRectangle(cornerRadius: 8)
                    .fill()
                    
            }
     
        }
    }
}


