//
//  Eclipse.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/5.
//

import SwiftUI

struct Eclipse: View {
    var body: some View {
        
        GeometryReader { geo in

            let w = geo.size.width
            let cell = w/154
            
            
            
            
            
            let rect3 = CGRect(origin: CGPoint(x: cell * 49.88, y: cell * 68.88), size: CGSize(width: cell * 55.12, height: cell * 55.12))
            let path3 = path3(in: rect3)
           
            
            RoundedRectangle(cornerRadius: cell*9, style: .continuous)
                .fill(Color.black)
                .overlay(
                    ZStack{
                        path3.fill(.black)
                        path3.stroke(lineWidth: cell * 1.25)
                            
                    }
                 
                )
                .frame(width: w, height: cell * 192)
        }
        
        EllipticalGradient(colors:/*@START_MENU_TOKEN@*/[Color.blue, Color.green]/*@END_MENU_TOKEN@*/, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadiusFraction: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, endRadiusFraction: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
  
//        .overlay(Color.red)

        
    }
    
    func path3(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.addEllipse(in: rect)
        return path
    }
    
    
}

struct Eclipse_Previews: PreviewProvider {
    static var previews: some View {
        Eclipse()
            .isPreviewView()
    }
}
