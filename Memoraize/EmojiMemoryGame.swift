//
//  EmojiMemoryGame.swift
//  Memoraize
//
//  Created by Rashid on 28/06/21.
//

import SwiftUI

class EmojiMemoryGame {
   static let  list:[String] = ["🙈","🐵","🐽","🦑","🐡","🐢","🐍","🐛","🐳","🦭","🐊","👛","🐒","💍","🪖","🦚","🌏","❄️","🔥","🥝"]

   static private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 10) {index in list[index]}
    
    var cards: Array<MemoryGame<String>.Card>{
        EmojiMemoryGame.model.cards
    }
    
}
