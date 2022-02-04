//
//  ContentView.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            Text("SuperMe")
                .mFont(style: .large32_B,color: .fc1)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
