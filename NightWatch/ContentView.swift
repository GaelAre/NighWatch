//
//  ContentView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    @Bindable var Nightwatchviewmodel = NightWatchViewModel()
    @State private var FocusModeOn = false
    @State private var resetAlertShowing = false
    
    var body: some View {
        NavigationStack {
            List {
                Section(content: {
                    ForEach($Nightwatchviewmodel.nightlyTasks) {
                        task in
                        if FocusModeOn == false || (FocusModeOn && task.wrappedValue.isCompleted == false) {
                            NavigationLink {
                                DetailScreen(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                        }
                        } else {
                            EmptyView()
                        }
                    } .onDelete { indexSet in
                        Nightwatchviewmodel.nightlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove(perform: { indices, newOffset in
                        Nightwatchviewmodel.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }, header: {
                    TaskSectionHeader(SymbolName: "moon.stars", HeaderText: "Nightly Tasks")
                })
                Section(content: {
                    ForEach($Nightwatchviewmodel.WeeklyTasks) {
                        task in
                        if FocusModeOn == false || (FocusModeOn && task.wrappedValue.isCompleted == false) {
                            NavigationLink {
                                DetailScreen(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                        }
                        } else {
                            EmptyView()
                        }
                    } .onDelete { indexSet in
                        Nightwatchviewmodel.nightlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove(perform: { indices, newOffset in
                        Nightwatchviewmodel.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }, header: {
                    TaskSectionHeader(SymbolName: "sun.max", HeaderText: "Weekly Tasks")
                })
                Section(content: {
                    ForEach($Nightwatchviewmodel.MonthlyTasks) {
                        task in
                        if FocusModeOn == false || (FocusModeOn && task.wrappedValue.isCompleted == false) {
                            NavigationLink {
                                DetailScreen(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                        }
                        } else {
                            EmptyView()
                        }
                    } .onDelete { indexSet in
                        Nightwatchviewmodel.nightlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove(perform: { indices, newOffset in
                        Nightwatchviewmodel.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }, header: {
                    TaskSectionHeader(SymbolName: "Calendar", HeaderText: "Monthly Tasks")
                })
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Home"))
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $FocusModeOn, label: {
                        Text("Focus Mode")
                    })
                    .toggleStyle(.switch)
                    .frame(width: 175)
                }
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button (action: {
                        resetAlertShowing = true
                    }, label: {
                        Text("Reset")
                    })
                }
            }
        }
        .alert("Reset List", isPresented: $resetAlertShowing) {
            Button(role: .cancel) {
                
            } label: {
                Text("Cancel")
            }
            Button(role: .destructive) {
                let refreshedNightWatch = NightWatchViewModel()
                self.Nightwatchviewmodel.nightlyTasks = refreshedNightWatch.nightlyTasks
                self.Nightwatchviewmodel.WeeklyTasks = refreshedNightWatch.WeeklyTasks
                self.Nightwatchviewmodel.MonthlyTasks = refreshedNightWatch.MonthlyTasks
            } label: {
                Text("Yes, reset it")
            }
        } message: {
            Text("Are You Sure?")
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

struct TaskRow: View {
    let task: NightWatchTasks
    
    var body: some View {
        VStack {
            if task.isCompleted {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundStyle(.gray)
                    .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#Preview {
    ContentView(Nightwatchviewmodel: NightWatchViewModel())
}
