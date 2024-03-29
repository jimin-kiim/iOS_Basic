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
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id:pairIndex*2))
            cards.append(Card(content: content, id:pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp : Bool = false
        var isMatched : Bool = false
        var content : CardContent
        var id: Int
    }
}
