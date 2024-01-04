//
//  drawerView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct DrawerView: View {
    var body: some View {
        VStack{
            Color("backGround").edgesIgnoringSafeArea(.top)
            Rectangle()
                .frame(width: 54, height: 4)
                .background(Color(red: 0.02, green: 0.03, blue: 0.04))
                .cornerRadius(2)
                .padding(.vertical,16)
                
            
            Text("All tools")
                .font(Font.custom("Poppins.Medium", size: 14))
                .kerning(0.28)
                .multilineTextAlignment(.center)
            VStack(spacing:16){
                HStack(spacing:14) {
                    MenuButtonView(buttonImage: "menu11", buttonTitle: "Live Stream", destinationView: 1 )
                    MenuButtonView(buttonImage: "menu12", buttonTitle: "Face Cam", destinationView: 2 )
                    MenuButtonView(buttonImage: "menu13", buttonTitle: "Video Editor", destinationView: 3 )
                }//: HStack
                
                HStack(spacing:14) {
                    MenuButtonView(buttonImage: "menu21", buttonTitle: "Add Music", destinationView: 4 )
                    MenuButtonView(buttonImage: "menu22", buttonTitle: "Extract Audio", destinationView: 5 )
                    MenuButtonView(buttonImage: "menu23", buttonTitle: "Voiceover", destinationView: 7 )
                }//: HStack
                HStack(spacing:14) {
                    MenuButtonView(buttonImage: "menu31", buttonTitle: "GIF Maker", destinationView: 8 )
                   CommingSoonView(buttonImage: "menu32", buttonTitle: "Prompter")
            
                }//: HStack
                .padding(.leading,16)
                .padding(.trailing,148)
                
            }//:VStack
            .padding(.top,16)
            Color("backGround").edgesIgnoringSafeArea(.bottom)
            
        }//:VStack
        .ignoresSafeArea()
        .background(Color("backGround")).ignoresSafeArea(.all)
        
    }
}

#Preview {
    DrawerView()
}
