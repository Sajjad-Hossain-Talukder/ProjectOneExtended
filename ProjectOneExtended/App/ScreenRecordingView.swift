//
//  ScreenRecordingView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct ScreenRecordingView: View {
    //MARK: - PROPERTIES
 
    //MARK: - BODY
    var body: some View {
        ZStack {
            //Color("backGround").edgesIgnoringSafeArea(.top)
           // Color("backGround").edgesIgnoringSafeArea(.bottom)
            VStack(spacing:0){
                
                // TopView
                ScreenTopView()
                
                
                //BannerView
                ScreenBannerView()
                //TitleView
                TitleView()
                    .padding(.top,57)
                //DownFlowView
                
                Image("downFlow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16, alignment: .center)
                    .padding(.top,40)
                
                
                //ScreenCenterView
                ScreenCenterView()

                // .background(Color.blue)
                
                //Idea View
                ScreenIdeaView()
                
            }//: VStack
            
            
            
        }//: ZStack
        //.background(Color("backGround"))
        
        
        
    }
}

#Preview {
    ScreenRecordingView()
}
