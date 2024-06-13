//
//  MarkCompleteExperiment.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import SwiftUI

@Observable
class NightWatchTaskExperiment {
    internal init(name: String, isComplete: Bool, markComplete: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.markComplete = markComplete
    }
    let name: String
    var isComplete: Bool
    var markComplete: Date?
}

struct MarkCompleteExperiment: View {
    @State private var theTask = NightWatchTaskExperiment(name: "Check all windows", isComplete: false)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel()
                .environment(self.theTask)
        }
    }
}

#Preview {
    MarkCompleteExperiment()
        .environment(NightWatchTaskExperiment(name: "Check all Windows", isComplete: false))
}

struct ControlPanel: View {
    @Environment(NightWatchTaskExperiment.self) var task
    
    var body: some View {
        @Bindable var task: NightWatchTaskExperiment = self.task
        HStack {
//            if task.isComplete == false {
//                Button("Mark Complete") {
//                    task.isComplete = true
//                }
//            } else {
//                Button("Reset") {
//                    task.isComplete = false
//                }
//            }
            Toggle(isOn: $task.isComplete) {
                Text("Task is Complete")
            }
        }
    }
}
