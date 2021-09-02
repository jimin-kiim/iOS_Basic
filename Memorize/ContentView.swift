//
//  ContentView.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}





struct CardView : View {
    @State var isFaceUp : Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.stroke(lineWidth: 3)
                shape.fill().foregroundColor(.white)
                Text("🥰")
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
