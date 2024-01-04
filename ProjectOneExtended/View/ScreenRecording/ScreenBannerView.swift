//
//  ScreenBannerView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct ScreenBannerView: View {
    var body: some View {
        Image("bannerSR")
            .resizable()
            .scaledToFit()
            .padding(.horizontal,16)
            .padding(.top,31)
            //.background(Color.blue)
    }
}

#Preview {
    ScreenBannerView()
}
