//
//  StarView.swift
//  Achievement
//
//  Created by Игорь Солодянкин on 08.05.2023.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 2, y: nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: nearLine * 1.4))
                path.addLine(to: CGPoint(x: nearLine * 2, y: nearLine * 1.4))
            }
            .foregroundColor(Color(red: 255 / 255, green: 215 / 255, blue: 0 / 255))
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 2, y: nearLine * 5.3))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: nearLine * 5.3))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: nearLine * 4.8))
                path.addLine(to: CGPoint(x: nearLine * 2, y: nearLine * 4.8))
            }
            .foregroundColor(Color(red: 255 / 255, green: 215 / 255, blue: 0 / 255))
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 2.5, y: nearLine * 1.2))
                path.addLine(to: CGPoint(x: farLine - nearLine * 1.5, y: nearLine * 1.2))
                path.addLine(to: CGPoint(x: farLine - nearLine * 1.5, y: nearLine * 5))
                path.addLine(to: CGPoint(x: nearLine * 2.5, y: nearLine * 5))
            }
            .foregroundColor(Color.red)
            
            Path { path in
                path.move(to: CGPoint(x: middle - nearLine * 0.5, y: nearLine * 5.3))
                path.addLine(to: CGPoint(x: middle + nearLine * 0.5, y: nearLine * 5.3))
                path.addLine(to: CGPoint(x: middle + nearLine * 0.3, y: nearLine * 5.7))
                path.addLine(to: CGPoint(x: middle - nearLine * 0.3, y: nearLine * 5.7))
            }
            .foregroundColor(Color(red: 255 / 255, green: 215 / 255, blue: 0 / 255))
            
            Circle()
                .fill(Color.white)
                .frame(width: 15, height: 15)
                .position(x: middle, y: middle + nearLine * 0.4)
            Path { path in
                path.move(to: CGPoint(x: middle - nearLine, y: middle + nearLine * 4))
                path.addLine(to: CGPoint(x: middle, y: nearLine * 6.8))
                path.addLine(to: CGPoint(x: middle + nearLine, y: middle + nearLine * 4))
                path.addLine(to: CGPoint(x: farLine, y: middle + nearLine * 4))
                path.addLine(to: CGPoint(x: middle + nearLine * 2, y: middle + nearLine * 6))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: farLine * 1.5))
                path.addLine(to: CGPoint(x: middle, y: middle + nearLine * 7))
                path.addLine(to: CGPoint(x: nearLine * 2, y: farLine * 1.5))
                path.addLine(to: CGPoint(x: middle - nearLine * 2, y: middle + nearLine * 6))
                path.addLine(to: CGPoint(x: nearLine, y: middle + nearLine * 4))
            }
            .foregroundColor(Color(red: 255 / 255, green: 215 / 255, blue: 0 / 255))
            
            
            Circle()
                .fill(Color(red: 255 / 255, green: 215 / 255, blue: 0 / 255))
                .frame(width: 30, height: 30)
                .position(x: middle, y: middle + nearLine * 1.5)
            
            Circle()
                .fill(Color.white)
                .frame(width: 15, height: 15)
                .position(x: middle, y: middle + nearLine * 1.5)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle + nearLine * 0.4))
                path.addLine(to: CGPoint(x: middle, y: middle + nearLine * 1.5 ))
            }
            .stroke(Color.orange, lineWidth: 10)
            
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
    }
}
