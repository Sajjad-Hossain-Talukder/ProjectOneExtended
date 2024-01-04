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
    //MARK: - BODY
    var body: some View {
        
        VStack(spacing:10){
            NavTopView(lColor: topColorLeft , rColor: topColorRight )
            HStack(alignment:.center,spacing:170) {
                NavButtonView(buttonName: "Tools", buttonImage: "toolColor", buttonColor : buttonColorOne)
                NavButtonView(buttonName: "Projects", buttonImage: "projectColor" , buttonColor : buttonColorTwo )
            }//: HStack
        }//: VStack
    }
}

#Preview {
    NavigationBar(topColorLeft: "option2", topColorRight: "option1", buttonColorOne: "option1" , buttonColorTwo: "option3" )
        
}
