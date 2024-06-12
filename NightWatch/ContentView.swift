//
//  ContentView.swift
//  NightWatch
//
//  Created by Gael Arellano on 6/11/24.
//

import SwiftUI

struct ContentView: View 
{
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Nightly Tasks")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .textCase(.uppercase)
                    .underline()
                    .padding([.top, .bottom, .trailing], 1.0)
                
                Text("Check all the windows")
                Text("Check all the doors")
                Text("Check that the safe is locked")
                Text("Check mailbox")
                Text("Inspect security cameras")
                Text("Clear ice from sidewalks")
                Text("Document \"unusual and weird\" occurrences")
                
                Text("Weekly Tasks")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .textCase(.uppercase)
                    .underline()
                    .padding([.top, .bottom, .trailing], 1.0)
                Text("Check inside all vacant rooms")
                Text("Walk the perimeter of property")
                
                
                Text("Monthly Tasks")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .textCase(.uppercase)
                    .underline()
                    .padding([.top, .bottom, .trailing], 1.0)
                Text("Test security alarm")
                Text("Test motion detectors")
                Text("Test smoke alarms")
                Spacer()
            }
            .foregroundStyle(.gray)
            Spacer()
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20.0)
    }
}

/*#Preview {
    ContentView()
}

#Preview ("Contentview Landscape", traits: .landscapeRight) {
    ContentView()
}
*/
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
