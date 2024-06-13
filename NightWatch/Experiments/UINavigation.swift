//
//  UINavigation.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import SwiftUI

struct UINavigation: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                HStack {
                    Circle()
                    Rectangle()
                    Text("This is the Destination")
                }
                .navigationTitle(Text("New Screen"))
            } label: {
                Text("Go to Destination")
            }
            .navigationTitle(Text("Home"))
        }
    }
}

#Preview {
    UINavigation()
}
