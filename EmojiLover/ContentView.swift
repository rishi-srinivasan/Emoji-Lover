//
//  ContentView.swift
//  EmojiLover
//
//  Created by Rishi Srinivasan on 05.02.24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 💀,💩,🚀,😍
}

struct ContentView: View {
    @State var selection: Emoji = .🚀
    var body: some View {
        NavigationView {
            VStack{                                                     // Vertical stack
                Text(selection.rawValue)
                    .font(.system(size: 150))
                // Allows selecting from mutually exclusive values
                Picker("Choose Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) {
                        emoji in Text(emoji.rawValue)
                    }
                }
                .navigationTitle("Emoji Lovers!")
                .navigationBarTitleDisplayMode(.inline)
                .pickerStyle(.segmented)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
