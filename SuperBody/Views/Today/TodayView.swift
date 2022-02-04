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
    var body: some View {
        
        
        PF_OffsetScrollView(offset: $offset) {
            LazyVStack(spacing:12){
                today_title
                today_tasklist
            }
            .padding(.horizontal,12)
        }
        .PF_Navilink(isPresented: $showSettingView, content: {
            SettingView()
        })
        .PF_Navitop(style:offset < -5 ? .inline :.none , backgroundView: {
            Color.black.opacity(0.5)
        }, TopCenterView: {
        })
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
    
    var today_tasklist : some View{
        ForEach(0..<12){index in
            TodayCard()
        }
    }
    var today_title : some View {
        ViewTitle(title: "今日")
            .padding(.bottom,12)
            .overlay(
                HStack{
                Spacer()
                    ICON(name: "gear-24",fcolor: .fc1,size: 24){
                        self.showSettingView.toggle()
                    }
            }
                    .padding(.trailing,8)
            )
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        
        TodayView()
            .isPreviewView()
    }
}


