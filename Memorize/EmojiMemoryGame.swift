//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/03.
//

import SwiftUI

func makeCardContent(index: Int )-> String {
    return "🥰"
}

class EmojiMemoryGame {
    var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
