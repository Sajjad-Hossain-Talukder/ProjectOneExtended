//
//  HomePageView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct HomePageView: View {
    
    //MARK: - PROPERTIES
    @AppStorage("startRecord") var startRecord : Bool = false
    @AppStorage("viewCon") var viewCon : Bool = true
    
    //MARK: - BODY
    var body: some View {
        if viewCon {
            HomeToolsView()
        } else {
            HomeProjectView()
        }
    }
}



//MARK: - PREVIEW

#Preview {
    HomePageView()
}
