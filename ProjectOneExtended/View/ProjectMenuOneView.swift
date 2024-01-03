//
//  ProjectMenuOneView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectMenuOneView: View {
    //MARK: - PROPERTIES
    @State private var isExpanded = false
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing:0){
            HStack (spacing:23){
                ProjectButtonView(buttonImage: "pm1", buttonTitle: "Voiceover")
                ProjectButtonView(buttonImage: "pm2", buttonTitle: "GIF Maker")
                ProjectButtonView(buttonImage: "pm3", buttonTitle: "Merge")
                ProjectButtonView(buttonImage: "pm4", buttonTitle: "Trim")
                ProjectButtonView(buttonImage: "pm5", buttonTitle: "Expand")
            }//: HStack
            .padding(.horizontal,16)
            .background(Color(.red))
           
        }
        
    }
}
    
    
    //MARK: - PREVIEW
    
    #Preview {
        ProjectMenuOneView()
    }
