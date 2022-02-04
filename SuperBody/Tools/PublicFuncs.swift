//
//  PublicFuncs.swift
//  Fantline
//
//  Created by Liseami on 2021/12/14.
//

import Foundation
 
import UIKit



//MARK: 自定义导航栏
public func Customappearance() {
    
    
    let appearance = UINavigationBarAppearance()
    appearance.configureWithTransparentBackground()
//    appearance.configureWithOpaqueBackground()
//    appearance.backgroundColor = UIColor(Color.BackGround)
 

    UINavigationBar.appearance().compactAppearance = appearance
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
    
    
    
//  UITableView.appearance().separatorStyle = .none
    UITableView.appearance().separatorColor = UIColor(Color.BackGround)
    
    UITableViewCell.appearance().backgroundColor = UIColor(Color.BackGround)
    UITableView.appearance().backgroundColor = .clear
    

    UITextView.appearance().backgroundColor = UIColor(Color.BackGround)
  
    UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(Color.fc1)
    
    //    DispatchQueue.main.async {
    //        //定义屏幕安全区高度
    //        if #available(iOS 11.0, *) {
    //            let window = UIApplication.shared.windows[0]
    //            let safeFrame = window.safeAreaLayoutGuide.layoutFrame
    //            UIstate.share.topSafeAreaHeight = safeFrame.minY
    //            UIstate.share.bottomSafeAreaHeight = window.frame.maxY - safeFrame.maxY
    //        }
    //    }
    
}


func UM_RUN(){
    DispatchQueue.global().async {
        //友盟初始化
        UMCommonSwift().run()
        //取消自动采集，设为手动采集
        UMAnalyticsSwift.setAutoPageEnabled(value: false)
    }
}
