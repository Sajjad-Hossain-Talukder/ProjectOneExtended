//
//  ProjectBarView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectBarView: View {
    var body: some View {
        HStack(spacing:233) {
            Text("Projects")
                .font(Font.custom("Poppins-SemiBold", size: 20))
                .foregroundColor(.accentColor)
                .kerning(0.4)
            HStack (spacing:16) {
                Image("list")
                    .frame(width: 24, height: 24, alignment: .center)
                Image("edit")
                    .frame(width: 24, height: 24, alignment: .center)
                
            }//: HStack
        } //: HStack
        .padding(.horizontal,16)
    }
}

#Preview {
    ProjectBarView()
}
