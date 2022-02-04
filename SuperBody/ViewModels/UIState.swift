//
//  UIState.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

class UIState : ObservableObject {
    
    static let share = UIState()
    
    @Published var tabbarTarget : TabbarEnum = .checklist
    var tabbarItems : [TabbarEnum] = [.checklist,.timeline,.inbox]
    
    enum TabbarEnum{
        case checklist
        case timeline
        case inbox
        
        var index : Int{
            switch self {
            case .checklist:
                return 1
            case .timeline:
                return 2
            case .inbox:
                return 3
            }
        }
        
        var title : String{
            switch self {
            case .checklist:
               return "今日"
            case .timeline:
               return "习惯卡片"
            case .inbox:
               return "回收"
            }
        }
        
        var iconname : String{
            switch self {
            case .checklist:
               return "checklist"
            case .timeline:
               return "cards"
            case .inbox:
               return "inbox"
            }
        }
    
    }
}
