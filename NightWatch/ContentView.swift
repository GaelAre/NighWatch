//
//  ContentView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/11/24.
//

import SwiftUI

let nightlyTasks = [
    "Check all the windows",
    "Check all the doors",
    "Check that the safe is locked",
    "Check mailbox",
    "Inspect security cameras",
    "Clear ice from sidewalks",
    "Document \"unusual and weird\" occurrences"
]

let WeeklyTasks = [
    "Check inside all vacant rooms",
    "Walk the perimeter of property"
]

let MonthlyTasks = [
    "Test security alarm",
    "Test motion detectors",
    "Test smoke alarms"
]


struct ContentView: View 
{
    var body: some View {
        NavigationStack {
            List {
                Section(content: {
                    ForEach(nightlyTasks, id: \.self) {
                        taskname in
                        NavigationLink(taskname) {
                            DetailScreen(taskName: taskname)
                        }
                    }
                }, header: {
                    TaskSectionHeader(SymbolName: "moon.stars", HeaderText: "Nightly Tasks")
                })
                Section(content: {
                    ForEach(WeeklyTasks, id: \.self) {
                        taskname in
                        NavigationLink(taskname) {
                            DetailScreen(taskName: taskname)
                        }
                    }
                }, header: {
                    TaskSectionHeader(SymbolName: "sun.max", HeaderText: "Weekly Tasks")
                })
                Section(content: {
                    ForEach(MonthlyTasks, id: \.self) {
                        taskname in
                        NavigationLink(taskname) {
                            DetailScreen(taskName: taskname)
                        }
                    }
                }, header: {
                    TaskSectionHeader(SymbolName: "Calendar", HeaderText: "Monthly Tasks")
                })
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Home"))
        }
    }
}

struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .fontWeight(.medium)
            .foregroundColor(.orange)
            .textCase(.uppercase)
            .padding([.top, .bottom, .trailing], 1.0)
    }
}
extension View {
    func headerStyle() -> some View {
        self.modifier(HeaderStyle())
    }
}

struct TaskSectionHeader: View {
    let SymbolName: String
    let HeaderText: String
    
    var body: some View {
        HStack {
            Image(systemName: SymbolName)
            Text(HeaderText)
        } .headerStyle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
