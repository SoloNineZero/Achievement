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
                path.move(to: CGPoint(x: middle - nearLine, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle + nearLine, y: middle - nearLine))
                path.addLine(to: CGPoint(x: farLine, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle + nearLine * 2, y: middle + nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle, y: middle + nearLine * 2))
                path.addLine(to: CGPoint(x: nearLine * 2, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine * 2, y: middle + nearLine))
                path.addLine(to: CGPoint(x: nearLine, y: middle - nearLine))
            }
            .fill(Color(red: 255 / 255, green: 215 / 255, blue: 0 / 255))
            
            Text("9 мая")
//                .resizable()
                .foregroundColor(.red)
                .scaleEffect(nearLine / 15)
                .offset(x: middle - nearLine / 2, y: middle)
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
    }
}
