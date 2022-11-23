//
//  ContentView.swift
//  tictactoe
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI


class Board : ObservableObject, Identifiable{
    @Published var player : String
    var id : UUID
    
    init(player: String) {
        self.player = player
        self.id = UUID()
    }
}
struct ContentView: View {
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        Playview()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
