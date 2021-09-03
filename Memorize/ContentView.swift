//
//  ContentView.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/02.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😃","😄","😁" ,"😊","😋","🤪","🥰","☺️","🥳","😏","😎","😭","🥺","😡","😱","🤫","😬","🙄","😪","🤩","🥶","😈","🤣","😘"]
    @State var emojiCount = 6
    var body: some View {
        //leave here as clear and short as possible
        //if there are some repeated or too lengthy parts, take them away and make a new struct or new variable.
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount], id: \.self) {emoji in
                    CardView(content:emoji)
                }
            }
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
        }
        
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    var remove : some View {
        Button(action: {
            emojiCount -= 1
        },label: {
            VStack {
                Text("Remove")
                Text("Card")
            }
        })
    }
    
    var add : some View {
        Button(action: {
            emojiCount += 1
        },label: {
            VStack {
                Text("Add")
                Text("Card")
            }
        })
    }
}





struct CardView : View {
    var content: String
    @State var isFaceUp : Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.stroke(lineWidth: 3)
                shape.fill().foregroundColor(.white)
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
