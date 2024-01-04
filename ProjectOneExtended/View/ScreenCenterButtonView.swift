//
//  CenterLogoView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ScreenCenterButtonView: View {
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
            ScreenRecordView()
        }
        
    }
}
//MARK: - PREVIEW
#Preview {
    ScreenCenterButtonView()
}
