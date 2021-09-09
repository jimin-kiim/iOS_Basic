//
//  ContentView.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/02.
//

import SwiftUI

struct ContentView: View {
    let viewModel : EmojiMemoryGame
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive (minimum: 65))]) {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                Spacer()
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        
        .padding(.horizontal)

    }
    
}





struct CardView : View {
    let card: MemoryGame<String>.Card
    
    let game = EmojiMemoryGame()
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content)
            } else {
                shape.fill()
            }
        }
        
    }
}






















struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)//setting variable 'viewModel' inside the struct ContentView
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
    }
}
