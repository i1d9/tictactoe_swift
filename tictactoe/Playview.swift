//
//  Playview.swift
//  tictactoe
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI






struct Playview: View {
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    @State var turn : Bool = true
    @State var displayWinner : Bool = false
    @State private var moves : [Move] = [Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: "")]
    


    var body: some View {
        
        VStack {
            LazyVGrid(columns: threeColumnGrid, spacing: 20) {
                
                ForEach($moves) {move in
                    Box(move: move, turn: $turn)
                }.onChange(of: turn, perform: {_ in
                    

                    if(moves[0].player == "X" && moves[1].player == "X" && moves[2].player == "X"){
                        displayWinner = true
                        
                    }else if(moves[0].player == "O" && moves[1].player == "O" && moves[2].player == "O"){
                        displayWinner = true
                    }
                    
                    else if(moves[0].player == "X" && moves[4].player == "X" && moves[8].player == "X"){
                        displayWinner = true
                        
                    }else if(moves[0].player == "O" && moves[4].player == "O" && moves[8].player == "O"){
                        displayWinner = true
                    }
                    
                    
                    else if(moves[2].player == "X" && moves[4].player == "X" && moves[6].player == "X"){
                        displayWinner = true
                        
                    }else if(moves[2].player == "O" && moves[4].player == "O" && moves[6].player == "O"){
                        displayWinner = true
                    }
                    
                    
                    
                    else if(moves[3].player == "X" && moves[4].player == "X" && moves[5].player == "X"){
                        displayWinner = true
                        
                    }else if(moves[3].player == "O" && moves[4].player == "O" && moves[5].player == "O"){
                        displayWinner = true
                    }
                    
                    
                    else if(moves[6].player == "X" && moves[7].player == "X" && moves[8].player == "X"){
                        displayWinner = true
                        
                    }else if(moves[6].player == "O" && moves[7].player == "O" && moves[8].player == "O"){
                        displayWinner = true
                    }
                    
                    else if(moves[0].player == "O" && moves[3].player == "O" && moves[6].player == "O"){
                        displayWinner = true
                    }
                    
                    else if(moves[0].player == "X" && moves[3].player == "X" && moves[6].player == "X"){
                        displayWinner = true
                    }
                    
                    else if(moves[1].player == "X" && moves[4].player == "X" && moves[7].player == "X"){
                        displayWinner = true
                    }
                    
                    else if(moves[1].player == "O" && moves[4].player == "O" && moves[7].player == "O"){
                        displayWinner = true
                    }
                    
                    else if(moves[2].player == "X" && moves[5].player == "X" && moves[8].player == "X"){
                        displayWinner = true
                    }
                    
                    else if(moves[2].player == "O" && moves[5].player == "O" && moves[8].player == "O"){
                        displayWinner = true
                    }
                    
                })
            }
            
            
            
               Button(action: {
                   moves = [Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: "")]
                   turn = true
                   displayWinner = false
                   
               }, label: {
                   Text("Reset Game")
               }).alert(turn ? "Player two won!": "Player one won", isPresented: $displayWinner) {
                   Button("OK", role: .cancel) {
                       
                       moves = [Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: ""),Move(player: "")]
                       turn = true
                       displayWinner = false
                   }
               }
                
               
            
        }.padding()
    }
}

struct Playview_Previews: PreviewProvider {
    static var previews: some View {
        Playview()
    }
}
