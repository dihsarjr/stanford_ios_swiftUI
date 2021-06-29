//
//  MemoraizeApp.swift
//  Memoraize
//
//  Created by Rashid on 10/06/21.
//

import SwiftUI

@main
struct MemoraizeApp: App {
    let game = EmojiMemoryGame()
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
