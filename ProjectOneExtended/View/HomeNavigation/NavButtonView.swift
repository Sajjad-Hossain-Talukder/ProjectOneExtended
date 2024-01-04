//
//  NavButtonView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct NavButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("viewCon") var viewCon : Bool?
    let buttonName : String
    let buttonImage : String
    let buttonColor : String
    
    
    //MARK: - BODY
    var body: some View {
        
            Button(
                action: {
                    if buttonName == "Tools" {
                        viewCon = true
                    } else {
                        viewCon = false
                    }
                   
                },
                label: {
                    ZStack{
                        VStack{
                            Image(buttonImage)
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(Color(buttonColor))
                                .frame(width: 32, height: 32, alignment: .center)
                            Text(buttonName)
                                .font(Font.custom("Poppins-SemiBold", size: 10))
                                .foregroundColor(Color(buttonColor))
                                .kerning(0.2)
                
                        }//: VStack
                        
                    }//: ZStack
                    //.background(Color("option1"))
                }//: label
             
            
            ) //: Button
    }
}


//MARK: - PREVIEW

#Preview {
    NavButtonView(buttonName: "Tools", buttonImage: "projectColor" ,buttonColor : "option3" )
}
