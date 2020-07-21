//
//  PlayerControls.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct PlayerControls: View {
    @State var status: String
    @State var playing: Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                
                Button(action: {
                    self.status = "devices"
                }) {
                    Image(systemName: "hifispeaker")
                        .imageScale(.large)
                }
                Spacer()
                Button(action: {
                    self.status = "liked"
                }) {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Spacer()

                Button(action: {
                    self.status = "playing"
                    self.playing.toggle()
                }) {
                    Image(systemName: self.playing ? "play.circle.fill" : "pause.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fill)
                }
                Spacer()

                Button(action: {
                    self.status = "thumbsup"
                }) {
                    Image(systemName: "hand.thumbsup")
                        .imageScale(.large)
                }
                Spacer()

                Button(action: {
                    self.status = "thumbsdown"
                }) {
                    Image(systemName: "hand.thumbsdown")
                        .imageScale(.large)
                }
                
            }
            .padding(.horizontal, 20)
            .foregroundColor(.white)

            
        }
    }
}
struct PlayerControls_Previews: PreviewProvider {
    static var previews: some View {
        PlayerControls(status: "hello", playing: false)
    }
}
