//
//  UITabView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import SwiftUI

struct UITabView: View {
    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
            }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("TODO: Build Home Screen")
    }
}

struct MapView: View {
    var body: some View {
        Text("TODO: Build Map Screen")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("TODO: Build Settings Screen")
    }
}

#Preview {
    UITabView()
}
