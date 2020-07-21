//
//  MusicQueue.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct MusicQueue: View {
    
    var body: some View {
        
        VStack {
            Text("Your music queue")
                .font(.body)
                .foregroundColor(.white)
                .padding(.top, 10)
            VStack {
                MusicQueueRow(track: track1)
                MusicQueueRow(track: track2)
            }.padding(.bottom, 10)
        }
        .background(Color.white.opacity(0.05))
        .cornerRadius(20)
        .padding()
    }
}

struct MusicQueue_Previews: PreviewProvider {
    static var previews: some View {
        MusicQueue()
    }
}
