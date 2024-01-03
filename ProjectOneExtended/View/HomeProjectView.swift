//
//  HomeProjectView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct HomeProjectView: View {
    //MARK: - PROPERTIES
    @State private var isExpanded = false
    @State private var fifthBuuttonTitle : String = "Expand"
    @State private var fifthBuuttonImage : String = "pm5"
    
    //MARK: - BODY
    
    var body: some View {
        
        
        VStack {
            ProjectTopView()
            
            // Scrollable content (Button and Lower Views)
            ScrollView(showsIndicators: false ) {
                VStack(spacing: 0) {
                    // Important View with Button
                    HStack(spacing: 23) {
                        ProjectButtonView(buttonImage: "pm1", buttonTitle: "Voiceover")
                        ProjectButtonView(buttonImage: "pm2", buttonTitle: "GIF Maker")
                        ProjectButtonView(buttonImage: "pm3", buttonTitle: "Merge")
                        ProjectButtonView(buttonImage: "pm4", buttonTitle: "Trim")
                        Button(
                            action: {
                                
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    isExpanded.toggle()
                                    if fifthBuuttonTitle == "Expand" {
                                        fifthBuuttonTitle = "Shrink"
                                        fifthBuuttonImage = "pm9"
                                    } else {
                                        fifthBuuttonTitle = "Expand"
                                        fifthBuuttonImage = "pm5"
                                    }
                                    
                                }
                            },
                            label: {
                                
                                VStack(spacing:8){
                                    
                                    ZStack {
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 58, height: 58, alignment: .center)
                                            .shadow(color: Color.black.opacity(0.08), radius: 7.5, x: 0, y: 2)
                                        Image(fifthBuuttonImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 24, height: 24, alignment: .center)
                                    } //: ZStack
                                    
                                    
                                    Text(fifthBuuttonTitle)
                                        .font(Font.custom("Poppins-Medium", size: 11))
                                        .foregroundColor(.accentColor)
                                        .multilineTextAlignment(.center)
                                        .kerning(0.11)
                                        .multilineTextAlignment(.center)
                                }//: VStack
                            }) //: Button
                    }//:hStack
                    .padding(.horizontal,16)
                    
                    // Additional View that appears and disappears
                    if isExpanded {
                        ProjectMenuTwoView()
                            .padding(.bottom, isExpanded ? 0 : -200)
                            .onTapGesture {
                                withAnimation {
                                    isExpanded.toggle()
                                }
                            }
                        
                        
                    }
                    
                    
                    ProjectMidView()
                    
                    ProjectBarView()
                    
                    
                    ProjectGridView()
                    
                    
                    
                }
            }
        }//:ScrollView
        //.disabled(true)
        //.edgesIgnoringSafeArea(.all)
        .background(Color("backGround"))
        
        //ProjectGridView()
        
        NavigationBar(topColorLeft: "option2", topColorRight: "option1", buttonColorOne: "option3" , buttonColorTwo: "option1", imageOne:  "tool" , imageTwo: "projectColor" )
            .background(Color("option2"))
            .ignoresSafeArea()
        
        
    }//VStack
    
    
}

//MARK: - PREVIEW
#Preview {
    HomeProjectView()
}
