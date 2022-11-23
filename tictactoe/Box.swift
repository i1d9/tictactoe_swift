//
//  Box.swift
//  tictactoe
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI

struct Box: View {
    @State private var isPressed : Bool = false
    @State private var player : String = ""
    @Binding var move : Move
    @Binding var turn : Bool
    var body: some View {
        
        Button(action: {
            if(turn){
                move.player = "X"
            }else{
                move.player = "O"
            }
            isPressed = true
            
            turn.toggle()
            
        }, label: {
            
            if move.player == "X"{
                
                
                Color.blue.scaledToFit().cornerRadius(10)
                
               
                
            }else if move.player == "O"{

                
                Color.red.scaledToFit().cornerRadius(10)
                
            }else{
               
                Color.white.border(Color.purple, width: 9).scaledToFit().cornerRadius(10)
                
            }
            
            
        }).disabled(isPressed)
      
    }
}

struct Box_Previews: PreviewProvider {
    static var move   = Move(player: "")
    static var previews: some View {
        Box(move: .constant(move) , turn: .constant(true))
    }
}
