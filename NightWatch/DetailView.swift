//
//  DetailView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import SwiftUI

struct DetailScreen: View {
    @Binding var task: NightWatchTasks
    
    var body: some View {
        VStack
        {
            Text(task.name)
            Button(action: {
                task.isCompleted = true
            }, label: {
                Text("Mark Complete")
            })
        }
    }
}

#Preview {
    DetailScreen(task: .constant( NightWatchTasks(name: "Check everything", isCompleted: false)))
}
