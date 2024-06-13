//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/11/24.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @State private var nightwatchviewmodel = NightWatchViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(Nightwatchviewmodel: self.nightwatchviewmodel)
        }
    } 
}
