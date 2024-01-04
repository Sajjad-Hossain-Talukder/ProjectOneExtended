//
//  ProjectMenuOneView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectMenuOneView: View {
    //MARK: - PROPERTIES
    @AppStorage("expanded") var expanded : Bool?
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical,showsIndicators: false ) {
            VStack(spacing: 0) {
                HStack(spacing: 23) {
                    ProjectButtonView(buttonImage: "pm1", buttonTitle: "Voiceover")
                    ProjectButtonView(buttonImage: "pm2", buttonTitle: "GIF Maker")
                    ProjectButtonView(buttonImage: "pm3", buttonTitle: "Merge")
                    ProjectButtonView(buttonImage: "pm4", buttonTitle: "Trim")
                    SpecialButtonView()
                }
                .padding(.horizontal,16)
                if let isExpanded = expanded {
                    
                    if isExpanded {
                        withAnimation(.easeInOut(duration: 10)) {
                            ProjectMenuTwoView()
                                .padding(.bottom, isExpanded ? 0 : -200)
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        if isExpanded {
                                            expanded = false
                                        } else {
                                            expanded = true
                                        }
                                    }
                                }
                        }
                    }
                }
                
            }
        }
    }
}

//MARK: - PREVIEW

#Preview {
    ProjectMenuOneView()
}
