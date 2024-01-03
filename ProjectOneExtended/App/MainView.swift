//
//  MainView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct MainView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        TabView {
            HomePageView().tabItem {
                Image(systemName: "airplane")
                Text("Tools")
                    .foregroundColor(.blue)
            }
            ProjectPageView().tabItem {
                Image(systemName: "airplane")
                  
                Text("Project")
                    .foregroundColor(.blue)
            }
            
            
            
        }//: Tab
    }
}


//MARK: - PREVIEW
#Preview {
    MainView()
}
