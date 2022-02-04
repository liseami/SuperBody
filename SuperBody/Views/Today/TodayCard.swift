//
//  TodayCard.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct TodayCard: View {
    var body: some View {
        let h = (SW - 24)/262*82
        LinearGradient(gradient: Gradient(colors: [Color.init(hex: "323232"), Color.init(hex: "2A2A2A"),Color.init(hex: "272727")]), startPoint: .top, endPoint: .bottom)
            .frame( height: h )
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay(
                HStack(spacing:4){
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: h)
                        .overlay(
                           Image("todayCard")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(0.8)
                        )
                    VStack(alignment: .leading, spacing: 2){
                        HStack(spacing:4){
                            Circle()
                                .fill(Color.green)
                                .frame(width: 6, height: 6)
                            Text("已连续执行12天")
                                .mFont(style: .Caption_10_R,color: Color.green)
                        }
                    
                        Text("每日健身")
                            .mFont(style: .Title_17_B,color: .fc1)
                        Text("0/1次")
                            .mFont(style: .Title_17_R,color: .fc2)
                    }
                    Spacer()
                    ICON(sysname: "ellipsis",fcolor: .fc1,size: 16,fontWeight: .light)
                        .MoveTo(.topCenter)
                        .padding(.top,24)
                }
                    .padding(.trailing,24)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))

            )

    }
}

struct TodayCard_Previews: PreviewProvider {
    static var previews: some View {
        TodayCard()
    }
}
