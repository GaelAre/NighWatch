//
//  ContentView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .border(Color.black)
    }
}

#Preview {
    ContentView()
}
