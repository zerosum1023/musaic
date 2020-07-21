//
//  PlayerQueue.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct PlayerQueue: View {
    
    @State var numPlayers: Int = 3
    
    var body: some View {
        VStack {
            
            Text("Player queue")
                .font(.body)
                .padding(.top, 10)
            
            Text("Total players: \(numPlayers)").font(.footnote)
            
            Image(systemName: "arrowtriangle.down.fill")
            
            HStack {
                PlayerView(player: player1)
                Spacer()
                PlayerView(player: player2)
                Spacer()
                PlayerView(player: player3)
                Spacer()
                PlayerView(player: player4)
                Spacer()
                PlayerView(player: player5)
            }
            .padding(.horizontal, 5)
            .padding(.bottom, 10)
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.white.opacity(0.05))
        .foregroundColor(.white)
        .cornerRadius(20)
        .padding()
        
    }
}

struct PlayerQueue_Previews: PreviewProvider {
    static var previews: some View {
        PlayerQueue()
    }
}
