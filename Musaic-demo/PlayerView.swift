//
//  PlayerView.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
    var player: Player
    var body: some View {
        VStack {
            Image(player.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .clipShape(Circle().inset(by: 3))

            Text(player.name)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: Player.default)
    }
}
