//
//  DetailView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import SwiftUI

struct DetailScreen: View {
    let taskName: String
    
    var body: some View {
        Text(taskName)
    }
}

#Preview {
    DetailScreen(taskName: "Do this thing thing")
}
