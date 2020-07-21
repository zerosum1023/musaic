//
//  Track.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import Foundation

struct Track {
    
    var name: String
    var artist: String
    var imageName: String
    var duration: Double
    
    static let `default` = Self(name: "Song 1", artist: "Artist 1", imageName: "album1", duration: 180.3)
}
