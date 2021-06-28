//
//  EmojiMemoryGame.swift
//  Memoraize
//
//  Created by Rashid on 28/06/21.
//

import SwiftUI

class EmojiMemoryGame {
   static let  list:[String] = ["🙈","🐵","🐽","🦑","🐡","🐢","🐍","🐛","🐳","🦭","🐊","👛","🐒","💍","🪖","🦚","🌏","❄️","🔥","🥝"]
    func makeCardContent(index:Int) -> String {
      return "hi"
    }
    
   static private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4) {index in list[index]}
    
    var cards: Array<MemoryGame<String>.Card>{
        EmojiMemoryGame.model.cards
    }
    
}
