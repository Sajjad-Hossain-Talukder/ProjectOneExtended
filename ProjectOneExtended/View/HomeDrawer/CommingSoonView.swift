//
//  CommingSoonView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct CommingSoonView: View {
    //MARK: - PROPERTIES
    @State var isActive : Bool = false
    let buttonImage : String
    let buttonTitle : String
    //MARK: - BODY
    var body: some View {
        Button(
            action: {
                //isActive = true
            },
            label: {
                ZStack{
                    
                    VStack(alignment: .center, spacing:0){
                        Image(buttonImage)
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(Color("ImageGray"))
                            .padding(.top,20)
                            .padding(.bottom,12)
                            
                        Text(buttonTitle)
                            .font(Font.custom("Poppins-SemiBold", size: 12))
                            .foregroundColor(Color("DrawerGray"))
                            .kerning(0.12)
                            .multilineTextAlignment(.center)
                            .padding(.bottom,2)
                        Text("COMING SOON...")
                            .font(Font.custom("Poppins-Medium", size: 9))
                            .foregroundColor(Color("DrawerGray"))
                            .kerning(0.09)
                            .multilineTextAlignment(.center)
                            .padding(.bottom,9)
                    }//: VStack

                    
                }//: ZStack
                .padding(.vertical,14)
                .frame(width: 118, height: 104, alignment: .center)
                .background(Color("option2"))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.08), radius: 7.5 , x: 0, y: 2)
                
               
    
                
                
            }) //: Button
            
            .disabled(!isActive)


    }
}

#Preview {
    CommingSoonView(buttonImage: "menu32", buttonTitle: "Prompter")
}
