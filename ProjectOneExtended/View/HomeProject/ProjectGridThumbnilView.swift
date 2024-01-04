//
//  ProjectGridThumbnilView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectGridThumbnilView: View {
    //MARK: - PROPERTIES
    let imageName: String
    let title: String
    //MARK: - BODY
    
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 183, height: 183)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .clipped()
            
            Text(title)
                .font(Font.custom("Poppins-Medium", fixedSize: 14))
                .padding(.top, 8)
        
        }//: VStack
    }
}


//MARK: - PREVIEW
#Preview {
    ProjectGridThumbnilView(imageName: "m2", title: "At Bangkok")
}
