//
//  ScreenCapsuleView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct ScreenCapsuleView: View {
    var body: some View {
        Button(action:{
            
        }) {
            HStack (spacing:4){
                Text("1080P | 8Mbps | 30fps")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundStyle(Color("option1"))
                Image(systemName: "greaterthan")
                    .imageScale(.small)
                    .foregroundStyle(Color("option1"))
                
                 
            } //: Hstack
            .padding(.horizontal,24)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(LinearGradient(gradient: Gradient(colors: [Color("gradOne"), Color("gradTwo")]), startPoint: .leading, endPoint: .trailing), lineWidth: 1.00)
            )
        } //: Button
        .padding(.leading,104)
        .padding(.trailing,95)
        .padding(.bottom,136)

        
    }
}

#Preview {
    ScreenCapsuleView()
}
