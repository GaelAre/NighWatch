//
//  UIList.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/12/24.
//

import SwiftUI

struct UIList: View {
    var body: some View {
        List {
            Text("Check all the windows")
            Text("Check all the doors")
            Text("Check that the safe is locked")
            Text("Check mailbox")
            Text("Inspect security cameras")
            Text("Clear ice from sidewalks")
            Text("Document \"unusual and weird\" occurrences")
        }
    }
}

#Preview {
    UIList()
}
