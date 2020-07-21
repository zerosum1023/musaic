//
//  Player.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import Foundation

struct Player {
    
    var name: String
    var current: Bool
    var spotifyID: UUID?
    var image: String
    
    static let `default` = Self(name: "Player 1", current: false, spotifyID: UUID(), image: "user1")
}
