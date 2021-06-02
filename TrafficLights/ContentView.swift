//
//  ContentView.swift
//  TrafficLights
//
//  Created by Oksana Tugusheva on 01.06.2021.
//

import SwiftUI

enum Lights: CaseIterable {
   case red, yellow, green
}

extension Lights {
    var value: Color {
        switch self {
        case .red: return .red
        case .yellow: return .yellow
        case .green: return .green
        }
    }
}

struct ContentView: View {
    @State private var activeLight: Lights?
    @State private var buttonTitle = "Start"
    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
             VStack {
                VStack {
                    ForEach(Lights.allCases, id: \.self) { light in
                        ColorCircle(
                            color: light.value,
                            opacity: activeLight == light ? 1 : 0.3
                        )
                    }
                }
                Spacer()
                WhiteButton(title: buttonTitle, action: buttonTouched)
            }
            .padding()
        }
    }
    
    private func buttonTouched() {
        buttonTitle = "Next"
        
        switch activeLight {
        case .red:
            activeLight = .yellow
        case .yellow:
            activeLight = .green
        case .green, .none:
            activeLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
