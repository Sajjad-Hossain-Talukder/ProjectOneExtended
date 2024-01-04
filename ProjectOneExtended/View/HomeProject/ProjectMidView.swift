//
//  ProjectMidView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectMidView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    
    var body: some View {
       
        VStack {
            VStack {
                HStack(spacing:10){
                    Image("createProject")
                        .frame(width: 32, height: 32, alignment: .center)
                    Text("Create Project")
                        .font(Font.custom("Poppins-SemiBold", fixedSize: 16))
                        .kerning(0.16)
                        .foregroundColor(.white)
                    
                }//: HStack

            }//: VStack
           
            .frame(width: 382, height: 91, alignment: .center)
            .background(LinearGradient(
                gradient: Gradient(colors: [Color("gradOne"),Color("gradTwo")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .padding(.horizontal,16)
        .padding(.top,32)
        .padding(.bottom,24)
        
        
    }
}


//MARK: - PREVIEW

#Preview {
    ProjectMidView()
}

