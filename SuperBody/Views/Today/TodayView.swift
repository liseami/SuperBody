//
//  TodayView.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct TodayView: View {
    @State private var offset : CGFloat = 0
    @State private var showSettingView : Bool = false
    @State private var searchInput : String = ""
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
    }
    @State private var min : CGFloat = 0
    var body: some View {
        
        
        today_tasklist
        
        //---------
        //下拉刷新
        .refreshable {}

        //---------
        //搜索功能
        .searchable(text: $searchInput, placement: .automatic, prompt: Text("搜索习惯"))
        
        //---------
        //搜索功能
        .PF_Navilink(isPresented: $showSettingView, content: {
            SettingView()
        })
        
        //---------
        //搜索功能
        .PF_Navitop(style:offset < -5 ? .large :.none , backgroundView: {
            Color.black.opacity(0.5)
        }, TopCenterView: {
        })
        
        //---------
        //工具栏
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                today_title
            }
        })
        
        .navigationTitle(Text("今天"))
        .navigationBarTitleDisplayMode(.large)
        
        
        
    }
    

    
    var today_tasklist : some View{
        List {
            ForEach(0..<12){index in
                TodayCard()
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                    .listRowInsets(.init(top: 6, leading: 12, bottom: 6, trailing: 12))

                    
            }
        }
        .listStyle(.plain)
        
           
    }
    
    struct bo :  ButtonStyle{
        func makeBody(configuration: Configuration) -> some View {
            
            return
            configuration.label
                .background(Color.green)
            
        }
    }
    
    var today_title : some View {
                HStack(spacing:24){
                    ICON(sysname: "magnifyingglass",fcolor: .fc1,size: 16, fontWeight: .thin)
                    
                    ICON(sysname: "plus",fcolor: .fc1,size: 16, fontWeight: .thin)
            }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        
        TodayView()
            .isPreviewView()
    }
}


struct ViewOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}
