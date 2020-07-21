//
//  NowPlaying.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct NowPlaying: View {
    @State var progressValue: Float = 0.3
    var body: some View {
        VStack {
            Text("Now Playing").font(.body).padding(.top, 10)
            HStack(alignment: .top) {
                Image(systemName: "questionmark.square.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text("Track title")
                    Text("Artist name")
                }
                Spacer()
            }.padding()
            ProgressBar(value: $progressValue)
                .frame(height: 5)
                .padding()
        }
        .background(Color.white.opacity(0.05))
        .foregroundColor(.white)
        .cornerRadius(20)
        .padding()

    }
}

struct NowPlaying_Previews: PreviewProvider {
    static var previews: some View {
        NowPlaying()
    }
}
