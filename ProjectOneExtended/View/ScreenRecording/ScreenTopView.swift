//
//  ScreenTopView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct ScreenTopView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    
    
    var body: some View {
        HStack(spacing:106) {
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 18, height: 18, alignment: .center)
                    .foregroundStyle(Color.accentColor)
            })
                
    
              
            
            Text("Screen Record")
                .font(Font.custom("Poppins-Medium", size: 16))
                .foregroundStyle(Color.accentColor)
            
            Image(systemName: "questionmark.circle")
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 24, alignment: .center)
                .foregroundStyle(Color.accentColor)
        }//: HStack
        //.background(Color.red)
        
        
        
    }
}


//MARK: - PREVIEW

#Preview {
    ScreenTopView()
}
