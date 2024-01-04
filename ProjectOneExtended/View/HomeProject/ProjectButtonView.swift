//
//  projectButtonView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("expand") var expand : Bool?
    let buttonImage:String
    let buttonTitle : String
    //MARK: - BODY
    var body: some View {
        Button(
            action: {
            },
            label: {
                
                VStack(spacing:8){
                    
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 58, height: 58, alignment: .center)
                            .shadow(color: Color.black.opacity(0.08), radius: 7.5, x: 0, y: 2)
                        Image(buttonImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24, alignment: .center)
                    } //: ZStack
                    
                    
                    Text(buttonTitle)
                        .font(Font.custom("Poppins-Medium", size: 11))
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                        .kerning(0.11)
                        .multilineTextAlignment(.center)
                }//: VStack
            }) //: Button
    }
}

#Preview {
    ProjectButtonView(buttonImage: "flip-right", buttonTitle: "Voiceover")
}
