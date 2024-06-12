//
//  SwiftUIView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/11/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Circle()
            Rectangle()
            HStack(spacing: 10) {
                RoundedRectangle(cornerRadius: 25.0)
                Text("What it do")
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
