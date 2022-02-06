//
//  ContentView.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var uistate = UIState.share
    
    @State private var TopColorShow : Bool = true
    var body: some View {
        
        NavigationView {
            mainviews
                .overlay(Tabbar())
        }
        .navigationViewStyle(.stack)
        .preferredColorScheme(.dark)
        
    }
    
    var mainviews : some View {
        
        ZStack{
            Color.back1.ignoresSafeArea()
            
            RadialGradient(gradient: Gradient(colors: [TopColorShow ? Color.init(hex: "4D6A73") : .clear, Color.back1]), center: .topLeading, startRadius: 5, endRadius: 500)
                .animation(.spring(), value: uistate.tabbarTarget)
                .ignoresSafeArea()
                .ifshow(uistate.tabbarTarget == .checklist, animation: .spring(), transition: .opacity)
            
            Group{
                switch uistate.tabbarTarget{
                case .checklist :
                    TodayView()
                case .cards :
                    CardsView()
                case .timeline :
                    InboxView()
                case .statistics:
                    StatisticsView()
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
