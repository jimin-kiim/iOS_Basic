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
    
    private var model: MemoryGame<String> = createMemoryGame()//When initializing or using inside static type function, I don't have to put EmojiMemoryGame. in front of createMemeoryGame, emojis. 
        
    
    //'Cannot use instance member 'emojis' within property initializer; property initializers run before 'self' is available'
    //instance memver: var, let, func. property: var, let inside the class
    //the order of initializing properties is random.
    //resolution 1. make emojis as global variable -but using global variable isn't great way. 2. put 'static' in front of 'let'
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
