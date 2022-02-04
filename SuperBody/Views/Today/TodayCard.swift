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
                HStack(spacing:12){
                    Rectangle()
                        .fill(Color.init(hex: "1B1B1B"))
                        .frame(width: h)
                        .overlay(
                            Text("\(Int.random(in: 0...300))")
                                .mFont(style: .large32_B,color: .fc1)
                        )
                    VStack(spacing:12){
                        Text("每日健身")
                            .mFont(style: .Title_19_B,color: .fc1)
                            .PF_Leading()
                        Text("0/1次")
                            .mFont(style: .Title_17_B,color: .fc2)
                            .PF_Leading()
                    }
                    Image("LineCode")
                        .resizable()
                        .frame(width: 48)
                }
                    .padding(.trailing,24)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))

            )
            .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .stroke(lineWidth: 1)
                        .foregroundColor(.back2)
            )
    }
}

struct TodayCard_Previews: PreviewProvider {
    static var previews: some View {
        TodayCard()
    }
}
