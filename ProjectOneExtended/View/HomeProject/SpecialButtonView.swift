//
//  SpecialButtonView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct SpecialButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("expanded") var expanded : Bool = false
    @State private var isExpanded = false
    @State private var fifthBuuttonTitle : String = "Expand"
    @State private var fifthBuuttonImage : String = "pm5"
    
    
    //MARK: - BODY
    var body: some View {
        
        Button(
            action: {
                expanded.toggle()
                withAnimation(.easeInOut(duration: 0.5)) {
                    isExpanded.toggle()
                    if fifthBuuttonTitle == "Expand" {
                        fifthBuuttonTitle = "Shrink"
                        fifthBuuttonImage = "pm9"
                    } else {
                        fifthBuuttonTitle = "Expand"
                        fifthBuuttonImage = "pm5"
                    }
                }
            },
            label: {
                
                VStack(spacing:8){
                    
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 58, height: 58, alignment: .center)
                            .shadow(color: Color.black.opacity(0.08), radius: 7.5, x: 0, y: 2)
                        Image(fifthBuuttonImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24, alignment: .center)
                    } //: ZStack
                    
                    
                    Text(fifthBuuttonTitle)
                        .font(Font.custom("Poppins-Medium", size: 11))
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                        .kerning(0.11)
                        .multilineTextAlignment(.center)
                    
                }//: VStack
            }) //: Button
        
        
    }
}


//MARK: - PREVIEW
#Preview {
    SpecialButtonView()
}
