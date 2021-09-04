//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/03.
//

import SwiftUI

class EmojiMemoryGame {
    var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4) {_ in "🥰" }
    //Swift already knows that createCardContent get Int argument and return String, so I don't have to state the types. also earase the parentheses around 'index'. also 'return'
    //as the createCardContent is the last argument??? I can erase the name of the argument and take the content out of the paretheses
    //I don't use 'index' so this can be '_'
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
