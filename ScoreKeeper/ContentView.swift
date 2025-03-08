//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Christopher Bille on 3/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [String] = ["Elisha", "Andre", "Jasmine", "Pat"]
    @State private var scores: [Int] = [0, 0, 0, 0]
    
    var body: some View {
        VStack {
            ForEach(0 ..< players.count, id: \.description) { index in
                TextField("Name", text: $players[index])
                Stepper("\(scores[index])", value: $scores[index])
            }
            Button("Add Player", systemImage: "plus") {
                players.append("")
                scores.append(0)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
