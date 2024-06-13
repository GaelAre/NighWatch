//
//  NightWatchViewModel.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/13/24.
//

import Foundation

@Observable
class NightWatchViewModel {
    var nightlyTasks = [
        NightWatchTasks(name: "Check all the windows", isCompleted: false),
        NightWatchTasks(name: "Check all the doors", isCompleted: false),
        NightWatchTasks(name: "Check that the safe is locked", isCompleted: false),
        NightWatchTasks(name: "Check mailbox", isCompleted: false),
        NightWatchTasks(name: "Inspect security cameras", isCompleted: false),
        NightWatchTasks(name: "Clear ice from sidewalks", isCompleted: false),
        NightWatchTasks(name: "Document \"unusual and weird\" occurrences", isCompleted: false)
    ]

    var WeeklyTasks = [
        NightWatchTasks(name: "Check inside all vacant rooms", isCompleted: false),
        NightWatchTasks(name: "Walk the perimeter of property", isCompleted: false)
    ]

    var MonthlyTasks = [
        NightWatchTasks(name: "Test security alarm", isCompleted: false),
        NightWatchTasks(name: "Test motion detectors", isCompleted: false),
        NightWatchTasks(name: "Test smoke alarms", isCompleted: false)
    ]

}
