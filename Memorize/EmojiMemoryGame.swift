//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/03.
//

import SwiftUI

class EmojiMemoryGame {
   static let emojis = ["😃","😄","😁" ,"😊","😋","🤪","🥰","☺️","🥳","😏","😎","😭","🥺","😡","😱","🤫","😬","🙄","😪","🤩","🥶","😈","🤣","😘"]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
}
