//
//  ViewTitle.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

struct ViewTitle: View {
    let title : String
    var body: some View {
        Text(title)
            .mFont(style: .largeTitle_24_B,color: .fc1)
            .PF_Leading()
        
    }
}

struct ViewTitle_Previews: PreviewProvider {
    static var previews: some View {
        ViewTitle(title:"标题")
    }
}
