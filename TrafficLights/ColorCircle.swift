//
//  ColorCircle.swift
//  TrafficLights
//
//  Created by Oksana Tugusheva on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .padding(.bottom, 8)
            .foregroundColor(color)
            .opacity(opacity)
            .shadow(color: color, radius: 8)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .black, opacity: 1)
    }
}
