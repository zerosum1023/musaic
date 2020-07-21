//
//  CurrentPlayerView.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct CurrentPlayerView: View {
    var image: Image
    var playerName: String
    var body: some View {
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(playerName)
        }
    }
}

struct CurrentPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(image: Image("user2"), playerName: "user1")
    }
}
