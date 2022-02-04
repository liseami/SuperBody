//
//  Tabbar.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct Tabbar: View {
    @ObservedObject var uistate = UIState.share
    
    var body: some View {
        HStack{
            ForEach(uistate.tabbarItems,id:\.self.iconname){
                tabbaritem in
                let selected : Bool = uistate.tabbarTarget == tabbaritem
        
                Button {
                    uistate.tabbarTarget = tabbaritem
                } label: {
                    Spacer()
                        .frame( height: GoldenH)
                        .overlay(
                            VStack(spacing:4){
                                ICON(name: tabbaritem.iconname,fcolor: selected ? .fc1 : .fc2,size: 26)
                                Text(tabbaritem.title)
                                    .mFont(style:selected ? .Caption_10_B : .Caption_10_R,color:selected ? .fc1 : .fc2)
                            }
                      )

                }
                .buttonStyle(.borderless)
            }
        }
        .padding(.top,8)
        .background(
            Color.back2.ignoresSafeArea()
        )
        .MoveTo(.bottomCenter)
    }
    
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
            .preferredColorScheme(.dark)
    }
}
