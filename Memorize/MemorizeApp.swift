//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 김지민 on 2021/09/02.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
