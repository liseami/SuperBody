//
//  CardBack.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/5.
//

import SwiftUI

struct CardBack: View {
    var body: some View {
        
        
        GeometryReader { geo in
            let geocell = geo.size.width/162
            Canvas { context, size in
                
                let cell = size.width / 162
                
                let cornerSize = CGSize(width: cell * 12, height: cell * 12)
                let rect = CGRect(origin: .zero, size: CGSize(width: size.width, height: size.height))
                    .insetBy(dx: cell/2, dy:  cell/2)
             
                let path = Path(roundedRect: rect, cornerSize: cornerSize, style: .continuous)

                context.stroke(path, with:.radialGradient(.init(colors: [.white,.white.opacity(0)]), center: CGPoint(x: -68 * cell, y: 348 * cell), startRadius: 0, endRadius: 210 * cell,options: .linearColor),lineWidth: cell)
                
                context.stroke(path, with:.radialGradient(.init(colors: [.white,.white.opacity(0)]), center: CGPoint(x: -20 * cell, y: -152 * cell), startRadius: 0, endRadius: 256 * cell,options: .linearColor),lineWidth: cell)
                
                context.stroke(path, with:.radialGradient(.init(colors: [.white,.white.opacity(0)]), center: CGPoint(x: 201 * cell, y: 105 * cell), startRadius: 0, endRadius: 264 * cell,options: .linearColor),lineWidth: cell)
                
                context.fill(path, with: .color(.init(hex: "020202")))
                
                
                
                
                //--------------------------------------
              
                context.drawLayer { context in
                    
                    var path = Path()
                    let rect = CGRect(origin: CGPoint(x: 52 * cell, y: 71 * cell), size: CGSize(width: 57 * cell, height: 57 * cell))
                    
                    let width = rect.size.width
                    let height = rect.size.height
                    
                    func fixCGPoint(x:CGFloat,y:CGFloat)->CGPoint{
                        let xx = 41 * cell - 0.191*width
                        let yy = 73 * cell - 0.506*height
                        return CGPoint(x: (x + xx)*1.3  , y: (y + yy)*1.3   )
                    }
                    
                    path.move(to: fixCGPoint(x: 0.191*width, y: 0.506*height))
                    path.addCurve(to: fixCGPoint(x: 0.19*width, y: 0.511*height), control1: fixCGPoint(x: 0.19*width, y: 0.508*height), control2: fixCGPoint(x: 0.19*width, y: 0.509*height))
                    path.addCurve(to: fixCGPoint(x: 0.191*width, y: 0.532*height), control1: fixCGPoint(x: 0.19*width, y: 0.518*height), control2: fixCGPoint(x: 0.191*width, y: 0.525*height))
                    path.addCurve(to: fixCGPoint(x: 0.19*width, y: 0.554*height), control1: fixCGPoint(x: 0.191*width, y: 0.539*height), control2: fixCGPoint(x: 0.19*width, y: 0.547*height))
                    path.addCurve(to: fixCGPoint(x: 0.3*width, y: 0.745*height), control1: fixCGPoint(x: 0.19*width, y: 0.657*height), control2: fixCGPoint(x: 0.233*width, y: 0.714*height))
                    path.addCurve(to: fixCGPoint(x: 0.5*width, y: 0.814*height), control1: fixCGPoint(x: 0.354*width, y: 0.788*height), control2: fixCGPoint(x: 0.424*width, y: 0.814*height))
                    path.addCurve(to: fixCGPoint(x: 0.659*width, y: 0.773*height), control1: fixCGPoint(x: 0.558*width, y: 0.814*height), control2: fixCGPoint(x: 0.612*width, y: 0.799*height))
                    path.addCurve(to: fixCGPoint(x: 0.752*width, y: 0.689*height), control1: fixCGPoint(x: 0.713*width, y: 0.762*height), control2: fixCGPoint(x: 0.74*width, y: 0.739*height))
                    path.addCurve(to: fixCGPoint(x: 0.809*width, y: 0.511*height), control1: fixCGPoint(x: 0.788*width, y: 0.64*height), control2: fixCGPoint(x: 0.809*width, y: 0.579*height))
                    path.addCurve(to: fixCGPoint(x: 0.719*width, y: 0.288*height), control1: fixCGPoint(x: 0.809*width, y: 0.424*height), control2: fixCGPoint(x: 0.775*width, y: 0.345*height))
                    path.addCurve(to: fixCGPoint(x: 0.542*width, y: 0.195*height), control1: fixCGPoint(x: 0.687*width, y: 0.23*height), control2: fixCGPoint(x: 0.633*width, y: 0.195*height))
                    path.addCurve(to: fixCGPoint(x: 0.52*width, y: 0.196*height), control1: fixCGPoint(x: 0.535*width, y: 0.195*height), control2: fixCGPoint(x: 0.527*width, y: 0.195*height))
                    path.addCurve(to: fixCGPoint(x: 0.5*width, y: 0.195*height), control1: fixCGPoint(x: 0.514*width, y: 0.195*height), control2: fixCGPoint(x: 0.507*width, y: 0.195*height))
                    path.addCurve(to: fixCGPoint(x: 0.495*width, y: 0.195*height), control1: fixCGPoint(x: 0.498*width, y: 0.195*height), control2: fixCGPoint(x: 0.496*width, y: 0.195*height))
                    path.addCurve(to: fixCGPoint(x: 0.489*width, y: 0.195*height), control1: fixCGPoint(x: 0.493*width, y: 0.195*height), control2: fixCGPoint(x: 0.491*width, y: 0.195*height))
                    path.addCurve(to: fixCGPoint(x: 0.453*width, y: 0.197*height), control1: fixCGPoint(x: 0.477*width, y: 0.195*height), control2: fixCGPoint(x: 0.465*width, y: 0.196*height))
                    path.addCurve(to: fixCGPoint(x: 0.379*width, y: 0.195*height), control1: fixCGPoint(x: 0.43*width, y: 0.196*height), control2: fixCGPoint(x: 0.405*width, y: 0.195*height))
                    path.addCurve(to: fixCGPoint(x: 0.19*width, y: 0.387*height), control1: fixCGPoint(x: 0.214*width, y: 0.195*height), control2: fixCGPoint(x: 0.19*width, y: 0.219*height))
                    path.addCurve(to: fixCGPoint(x: 0.193*width, y: 0.464*height), control1: fixCGPoint(x: 0.19*width, y: 0.414*height), control2: fixCGPoint(x: 0.191*width, y: 0.439*height))
                    path.addCurve(to: fixCGPoint(x: 0.19*width, y: 0.501*height), control1: fixCGPoint(x: 0.191*width, y: 0.476*height), control2: fixCGPoint(x: 0.19*width, y: 0.488*height))
                    path.addCurve(to: fixCGPoint(x: 0.191*width, y: 0.506*height), control1: fixCGPoint(x: 0.19*width, y: 0.502*height), control2: fixCGPoint(x: 0.19*width, y: 0.504*height))

                    path.closeSubpath()
                    context.blendMode = .colorDodge
                    context.addFilter(.blur(radius: 15.3))
                    context.fill(path, with: .color(Color.init(hex: "29CCFF")))
                }
                
                
                
                context.drawLayer { context in
                    var path = Path()
                    let rect = CGRect(origin: CGPoint(x: 53.88 * cell, y: 72.88 * cell), size: CGSize(width: 55.12 * cell, height: 55.12 * cell))
                    path.addEllipse(in: rect)
                    context.fill(path, with: .color(.black))
                }
    
                
                context.drawLayer { context in
                    var path = Path()
                    let rect = CGRect(origin: CGPoint(x: 53.88 * cell, y: 72.88 * cell), size: CGSize(width: 55.12 * cell, height: 55.12 * cell))
                    path.addEllipse(in: rect)
                    context.stroke(path, with: .linearGradient(.init(colors: [.white,Color.init(hex: "D3E2FF").opacity(0)]), startPoint: CGPoint(x: 98 * cell, y: 123 * cell), endPoint: CGPoint(x: 86 * cell, y: 100 * cell)),lineWidth: 0.31 * cell)
                }
                
                
                context.drawLayer { context in
                    var path = Path()
                    let rect = CGRect(origin: CGPoint(x: 53.88 * cell, y: 72.88 * cell), size: CGSize(width: 55.12 * cell, height: 55.12 * cell))
                    path.addEllipse(in: rect)
                    context.addFilter(.blur(radius: 5.1))
                    context.blendMode = .colorDodge
                    context.stroke(path, with: .linearGradient(.init(colors: [Color.init(hex: "9281FF"),Color.init(hex: "D3E2FF").opacity(0)]), startPoint: CGPoint(x: 98 * cell, y: 123 * cell), endPoint: CGPoint(x: 86 * cell, y: 100 * cell)),lineWidth: 1.25 * cell)
                }
                
                
            }
            .frame(width: geo.size.width , height: geocell * 258)
            
        }
       
        

    }
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        
        CardBack()
            .isPreviewView()
    }
}
