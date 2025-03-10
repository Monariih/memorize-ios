//
//  ContentView.swift
//  Memorize
//
//  Created by Lucas Monari dos Santos on 04/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 24)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 24)
                    .strokeBorder(lineWidth: 2)
                Text("😭")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 16)

            }
        })
    }
}

#Preview {
    ContentView()
}
