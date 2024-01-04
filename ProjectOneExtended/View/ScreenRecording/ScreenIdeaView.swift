//
//  ScreenIdeaView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct ScreenIdeaView: View {
    var body: some View {
        VStack(spacing:16){
            
            HStack(spacing:8){
                
                Image("idea")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18,height: 18,alignment: .center)
                    .foregroundStyle(Color.accentColor)
                Text("FYI, some apps don’t allow sound to be recorded. Such as Facetime, WhatsApp, Zoom, Netflix etc.")
                    .font(Font.custom("Poppins-Light", size: 12))
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(Color.accentColor)
            }//:HStack
            .padding(.leading,47)
            .padding(.trailing,48)
            //.background(Color.red)
            
            Button(action:{
                
            }) {
                HStack (spacing:8){
                    Text("Watch Tutorials")
                        .font(Font.custom("Poppins-Medium", size: 13))
                        .foregroundStyle(Color.accentColor)
                    Image("elements")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 6, height: 12, alignment: .center)
                        .foregroundStyle(Color.accentColor)
                    
                     
                } //: Hstack
                .padding(.leading,133)
                .padding(.trailing,132)
                .padding(.vertical,16)
                .background(
                    Capsule().strokeBorder(Color("capColor"), lineWidth: 1.00)
                )
            } //: Button
            .padding(.horizontal,16)
            //.background(Color.red)
        
            
            
            
        }
    }
}

#Preview {
    ScreenIdeaView()
}
