//
//  MenuButtonView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct MenuButtonView: View {
    //MARK: - PROPERTIES
    let buttonImage : String
    let buttonTitle : String
    let destinationView : Int
    @State private var isActive: Bool = false
    
    //MARK: - BODY
    
    var body: some View {

            Button(
                action: {
                    isActive = true
                },
                label: {
                    ZStack{
                        VStack(spacing:16){
                            Image(buttonImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                            Text(buttonTitle)
                                .font(Font.custom("Poppins-SemiBold", size: 12))
                                .foregroundColor(.accentColor)
                                .kerning(0.12)
                                .multilineTextAlignment(.center)
                        }//: VStack 
                        
                    }//: ZStack
                    .padding(.vertical,14)
                    .frame(width: 118, height: 104, alignment: .center)
                    .background(Color("buttonColor"))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.08), radius: 7.5 , x: 0, y: 2)
                }) //: Button
                
        
    }
}


//MARK: - PREVIEW
#Preview {
    MenuButtonView(buttonImage: "menu22", buttonTitle: "Extract Audio", destinationView: 3)
}
