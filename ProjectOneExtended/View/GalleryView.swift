//
//  GalleryView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment:.center,spacing: 16){
                Image("banner1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 356, height: 104, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("banner1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 356, height: 104, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("banner1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 356, height: 104, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }//: HStack
        }//: Scroll View
    }
}


//MARK: - PREVIEW
#Preview {
    GalleryView()
}
