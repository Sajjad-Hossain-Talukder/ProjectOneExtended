//
//  ProjectTop.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectTopView: View {
    var body: some View {
        ZStack(alignment:.leading) {
            Text("Quick actions")
                .font(Font.custom("Poppins-SemiBold", size: 24))
                .kerning(0.24)
                .foregroundColor(.accentColor)
            
        }
        .padding(.vertical,4)
        .padding(.leading,16)
        .padding(.trailing,228)
        //.background(Color(.red))
    }
}

#Preview {
    ProjectTopView()
}
