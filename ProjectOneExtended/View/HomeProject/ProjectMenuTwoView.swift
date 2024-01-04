//
//  ProjectMenuTwoView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectMenuTwoView: View {
    var body: some View {
        HStack (spacing:23){
            ProjectButtonView(buttonImage: "pm6", buttonTitle: "Voiceover")
            ProjectButtonView(buttonImage: "pm7", buttonTitle: "GIF Maker")
            ProjectButtonView(buttonImage: "pm8", buttonTitle: "Merge")
    
        }
        .padding(.top,20)
        .padding(.leading,16)
        .padding(.trailing,178)
        .background(Color("backGround"))
    }
}

#Preview {
    ProjectMenuTwoView()
}
