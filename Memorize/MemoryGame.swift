//
//  MemoryGame.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/03.
//

import Foundation


struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card : Card) {
        
    }
    
    init (numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)//I might never change the content so it's better to fix this as 'let' instead of 'var'
            cards.append(Card(content: content)) //originally it was Card(isFaceUp: false, isMatched: false, content: content)but as I initialized the value in the struct below, I could erase two parts of them.
            cards.append(Card(content: content))// as I need two matching cards so make them together with the same content
        }
    }
    
    struct Card {
        var isFaceUp : Bool = false
        var isMatched : Bool = false
        var content : CardContent
    }
}
