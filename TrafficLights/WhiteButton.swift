//
//  WhiteButton.swift
//  TrafficLights
//
//  Created by Oksana Tugusheva on 01.06.2021.
//

import SwiftUI

struct WhiteButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
        })
            .frame(width: 150)
            .padding()
            .background(Color(.white))
            .cornerRadius(10)
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(title: "Button") {}
    }
}
