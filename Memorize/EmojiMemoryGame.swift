//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/03.
//

import SwiftUI

class EmojiMemoryGame {
    var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent:{ (index: Int )-> String in //(~~:~~)-> ~~ in ~~ 'in' separates the arguments and the codes inside the function
        return "🥰"
    })
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
