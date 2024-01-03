//
//  HomePageView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct HomePageView: View {
    
    //MARK: - PROPERTIES
    @AppStorage("viewCon") var viewCon : Bool = true
    
    //MARK: - BODY
    var body: some View {
    
        if viewCon {
            // Home Tools View
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
