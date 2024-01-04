//
//  ScreenTimerView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct ScreenTimerView: View {
    var body: some View {
        ZStack{
            Text("00:00:00")
                .font(Font.custom("Poppins-Medium", size: 36))
                .foregroundStyle(Color("option1"))
        }
        .padding(.leading,128)
        .padding(.trailing,129)
        .padding(.bottom,137)
        .padding(.top,-10)
    }
}

#Preview {
    ScreenTimerView()
}
