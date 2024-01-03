//
//  TopBarView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack(spacing:81.25){
            Image("pros")
                .resizable()
                .scaledToFit()
                .frame(width: 44.75, height: 40 , alignment: .center)

            
            HStack(spacing:101){
                Text("LIVE RECORD")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(.accentColor)
                    .kerning(0.4)
                    .multilineTextAlignment(.center)
                
                Image("settings")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24 , alignment: .center)
                    //.padding(.vertical,5)
            }//: HStack
        }//: HStack
        .padding(.horizontal,16)
    }
    
}

#Preview {
    TopBarView()
}
