//
//  CenterLogoView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct CenterLogoView: View {
    var body: some View {
        Image("CenterLogo")
            .resizable()
            .scaledToFill()
            .frame(width: 132, height: 132, alignment: .center)
    }
}

#Preview {
    CenterLogoView()
}
