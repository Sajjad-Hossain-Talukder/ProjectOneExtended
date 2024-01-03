//
//  HomeToolsView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct HomeToolsView: View {
    var body: some View {
        ZStack{
            Color("backGround").edgesIgnoringSafeArea(.top)
            Color("option2").edgesIgnoringSafeArea(.bottom)
            VStack{
                VStack(spacing:0){
                    
                    // TopBar
                    TopBarView()
                        .padding(.bottom,8)
                    
                    // GalleryView
                    GalleryView()
                        .padding(.bottom,48)
                    
                    // Title
                    TitleView()
                        .padding(.bottom,48)
                    
                    // Logo
                    
                    CenterLogoView()
                        .padding(.bottom,48)
                    
                    // Menu
                    
                    MenuView()
                        .padding(.bottom,19)
                    
                    
                }//: VStack
                NavigationBar(topColorLeft: "option1", topColorRight: "option2", buttonColorOne: "option1" , buttonColorTwo: "option3", imageOne:  "toolColor" , imageTwo: "project" )
                    .background(Color("option2"))
                
                
                
            }//: VStack
            
            .background(Color("backGround"))
            //.background(Color.blue.edgesIgnoringSafeArea(.all))
            
        }
    }
   
}

#Preview {
    HomeToolsView()
}
