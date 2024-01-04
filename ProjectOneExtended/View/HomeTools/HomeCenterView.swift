//
//  HomeCenterView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct HomeCenterView: View {
    //MARK: - PROPERTIES
    @State var isPressed : Bool = false
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isPressed.toggle()
        }, label: {
            Image("CenterLogo")
                .resizable()
                .scaledToFill()
                .frame(width: 132, height: 132, alignment: .center)
        })//: Button
        .fullScreenCover(isPresented: $isPressed) {
            ScreenRecordingView()
        }
        
    }
}

#Preview {
    HomeCenterView()
}
