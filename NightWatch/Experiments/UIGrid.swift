//
//  UIGrid.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import SwiftUI

struct UIGrid: View {
    let nightlyTasks = [
        "Check all the windows",
        "Check all the doors",
        "Check that the safe is locked",
        "Check mailbox",
        "Inspect security cameras",
        "Clear ice from sidewalks",
        "Document \"unusual and weird\" occurrences"
    ]
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: [
                GridItem(.fixed(100)),
                GridItem(.fixed(100)),
                GridItem(.fixed(100))
            ]) {
                ForEach(nightlyTasks, id: \.self) {
                    taskname in
                    Text(taskname)
                }
            }
        }
        ScrollView(.vertical) {
            LazyVGrid(columns: [
                GridItem(.fixed(100)),
                GridItem(.fixed(100)),
                GridItem(.fixed(100))
            ]) {
                ForEach(nightlyTasks, id: \.self) {
                    taskname in
                    Text(taskname)
                }
            }
        }
    }
}

#Preview {
    UIGrid()
}
