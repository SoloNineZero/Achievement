//
//  ContentView.swift
//  Achievement
//
//  Created by Игорь Солодянкин on 08.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Показать награду" : "Скрыть награду")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .scaleEffect(awardIsShowing ? 1 : 1)
                    .rotationEffect(.degrees(awardIsShowing ? 0 : -180))
            }
            Spacer()
            if awardIsShowing {
                StarView()
                    .frame(width: 350, height: 350)
            }
            Spacer()
        }
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
