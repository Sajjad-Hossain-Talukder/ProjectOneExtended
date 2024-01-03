//
//  NavTopView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct NavTopView: View {
    //MARK: - PROPERTIES
    let lColor : String
    let rColor : String
    
    
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 0){
            Color(lColor).frame(height: 2)
            Color(rColor).frame(height: 2)
        }
        
    }
}


//MARK: - PREVIEW
#Preview {
    NavTopView(lColor: "option1", rColor: "option2")
        .padding(.bottom,11)
}
