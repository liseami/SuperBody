//
//  CardsView.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        
        DreamCard()
            .padding(.horizontal,32)
            .PF_Shadow(color: .black, style: .s700)
            
            
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
            .isPreview()
    }
}
