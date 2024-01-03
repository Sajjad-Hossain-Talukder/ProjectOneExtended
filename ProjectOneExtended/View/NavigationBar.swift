//
//  NavigationBar.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct NavigationBar: View {
    //MARK: - PROPERTIES
    let topColorLeft : String
    let topColorRight : String
    let buttonColorOne : String
    let buttonColorTwo : String
    let imageOne : String
    let imageTwo : String
    //MARK: - BODY
    var body: some View {
        
        VStack(spacing:10){
            NavTopView(lColor: topColorLeft , rColor: topColorRight )
            HStack(alignment:.center,spacing:170) {
                NavButtonView(buttonName: "Tools", buttonImage: imageOne, buttonColor : buttonColorOne)
                  
                NavButtonView(buttonName: "Projects", buttonImage: imageTwo , buttonColor : buttonColorTwo )
    
            }//: HStack
           
           
        }//: VStack
        .ignoresSafeArea()
        .background(Color("option2"))
       
        
        
    }
}

#Preview {
    NavigationBar(topColorLeft: "option2", topColorRight: "option1", buttonColorOne: "option1" , buttonColorTwo: "option3", imageOne:  "toolColor" , imageTwo: "project" )
        
}
