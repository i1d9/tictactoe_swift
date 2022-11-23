//
//  Move.swift
//  tictactoe
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import Foundation

class Move :Identifiable  {
    
     var player : String
    var id: UUID
    
    init(player: String) {
        self.player = player
        self.id = UUID()
        
    }
}
