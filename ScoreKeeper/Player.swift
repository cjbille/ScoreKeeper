//
//  Player.swift
//  ScoreKeeper
//
//  Created by Christopher Bille on 3/23/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}
