//
//  TitleView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .center){
            Text("TAP TO START")
                .font(Font.custom("Poppins-Bold", size: 24))
                .foregroundColor(.accentColor)
            Text("SCREEN RECORDING")
                .font(Font.custom("Poppins-Regular", size: 24))
                .kerning(0.5)
                .foregroundColor(.accentColor)
        }//: Vstack
    }
}

#Preview {
    TitleView()
}
