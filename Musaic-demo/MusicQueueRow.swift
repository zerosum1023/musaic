//
//  MusicQueueRow.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct MusicQueueRow: View {
    
    var track: Track
    var body: some View {
        HStack {
            Image(track.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
                
            
            VStack(alignment: .leading) {
                Text(track.name).bold()
                Text(track.artist)
            }
            Spacer()
            Image(systemName: "ellipsis")
                .imageScale(.large)
                
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .foregroundColor(.white)
    }
}

struct MusicQueueRow_Previews: PreviewProvider {
    static var previews: some View {
        MusicQueueRow(track: Track.default)
    }
}
