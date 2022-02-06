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
    var tabbarItems : [TabbarEnum] = [.checklist,.cards,.statistics]
    
    enum TabbarEnum{
        case checklist
        case cards
        case timeline
        case statistics
        
        var index : Int{
            switch self {
            case .checklist:
                return 1
            case .cards:
                return 2
            case .timeline:
                return 3
            case .statistics :
                return 4
            }
        }
        
        var title : String{
            switch self {
            case .checklist:
               return "今日"
            case .cards:
               return "习惯卡片"
            case .timeline:
               return "回顾"
            case .statistics :
                return ""
            }
        }
        
        var iconname : String{
            switch self {
            case .checklist:
               return "checklist"
            case .cards:
               return "cards"
            case .timeline:
               return "repo-24"
            case .statistics:
                return "graph-24"
            }
        }
    
    }
}
