//
//  CardsView.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct CardsView: View {
    @State private var showAddCardView : Bool = false
    var body: some View {
        

        VStack(spacing:36){
                
                title
                
             DreamCard()
                    .frame(width: SW * 0.618,height: SW * 0.618/162*258)
                
                HStack{
                    Spacer()
                    Circle()
                        .stroke(lineWidth: 0.5)
                        .foregroundColor(.fc2)
                        .frame(width: SW * 0.4)
                        .overlay(Text("00:00")
                                    .mFont(style: .large32_B,color: .fc1))
                    Spacer()
                    Button {
                    } label: {
                        Text("START")
                            .kerning(2)
                            .mFont(style: .Title_17_B,color: .fc1)
                    }
                    .padding(.horizontal,12)
                    .padding(.vertical,8)
                    .background(Color.back2)
                    .clipShape(Capsule(style: .continuous))
                    .overlay(Capsule(style: .continuous)
                                .stroke(lineWidth: 0.5)
                                .foregroundColor(.border)
                    )
                    Spacer()
                }
            
            Spacer()
            }
        .padding(.top,16)
        .sheet(isPresented: $showAddCardView, onDismiss: {
        }, content: {
            Color.black
                .ignoresSafeArea()
        })
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {

                Text("新增")
                    .mFont(style: .Title_16_B,color: .fc1)
            }
        }
  
      
        
    }
    
    var title : some View {
        HStack(alignment: .center){
            Circle()
                .fill(Color.random)
                .frame(width: 36, height: 36)
           
            Spacer()
                            ICON(sysname: "plus.circle",fcolor: .fc1,size: 24, fontWeight: .thin){
                                showAddCardView.toggle()
                            }
        }
        .padding(.horizontal,16)
        .overlay(
        Text("习惯")
            .mFont(style: .largeTitle_24_B,color: .fc1),alignment: .center)
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
            .isPreview()
    }
}
