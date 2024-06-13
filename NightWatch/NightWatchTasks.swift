//
//  NightWatchTasks.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import Foundation

struct NightWatchTasks: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
    var lastCompleted: Date?
}

