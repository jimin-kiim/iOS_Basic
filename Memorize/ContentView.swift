//
//  ContentView.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/02.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😃","😄","😁" ,"😊","😋","🤪","🥰","☺️","🥳","😏","😎","😭","🥺","😡","😱","🤫","😬","🙄","😪","🤩","🥶","😈","🤣","😘"]
    @State var emojiCount = 20
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive (minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content:emoji)
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
    var content: String
    @State var isFaceUp : Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
        isFaceUp = !isFaceUp
        
        }
    }
}






















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
