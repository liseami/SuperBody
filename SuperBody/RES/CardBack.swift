//
//  CardBack.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/5.
//

import SwiftUI

struct CardBack: View {
    var body: some View {
//        Canvas { context, size in
//
//            let gradient = Gradient(colors: [.blue, .pink, .orange])
//            let rect = CGRect(origin: .zero, size: size).insetBy(dx: 5, dy: 5)
//            let path = Path(ellipseIn: rect)
//
//            context.stroke(
//                path,
//                with: .color(.orange),
//                lineWidth: 10)
//
//            context.fill(path, with: .linearGradient(gradient, startPoint: rect.origin, endPoint: CGPoint(x: rect.width, y: 0)))
//
//            let midPoint = CGPoint(x: size.width/2, y: size.height/2)
//
//            let text = Text("DevTechie")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundColor(.white)
//
//            context.draw(text, at: midPoint, anchor: .center)
//        }
        
//
        Canvas { context, size in
            let cell = size.width / 162
            let height = cell * 258
            let cornerSize = CGSize(width: cell * 12, height: cell * 12)
            let rect = CGRect(origin: .zero, size: CGSize(width: size.width, height: height))
                .insetBy(dx: cell/2, dy:  cell/2)
         
            let path = Path(roundedRect: rect, cornerSize: cornerSize, style: .continuous)

            context.stroke(path, with:.radialGradient(.init(colors: [.white,.white.opacity(0)]), center: CGPoint(x: -68 * cell, y: 348 * cell), startRadius: 0, endRadius: 210 * cell,options: .linearColor),lineWidth: cell)
            
            context.stroke(path, with:.radialGradient(.init(colors: [.white,.white.opacity(0)]), center: CGPoint(x: -20 * cell, y: -152 * cell), startRadius: 0, endRadius: 256 * cell,options: .linearColor),lineWidth: cell)
            
            context.stroke(path, with:.radialGradient(.init(colors: [.white,.white.opacity(0)]), center: CGPoint(x: 201 * cell, y: 105 * cell), startRadius: 0, endRadius: 264 * cell,options: .linearColor),lineWidth: cell)
            
            context.drawLayer { <#inout GraphicsContext#> in
                <#code#>
            }
            
            
            
        }
        

       
    }
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        
        CardBack()
            .isPreviewView()
    }
}
