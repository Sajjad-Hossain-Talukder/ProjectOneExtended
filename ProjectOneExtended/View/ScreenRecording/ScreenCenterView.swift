//
//  ScreenCenterView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 04/01/2024.
//

import SwiftUI

struct ScreenCenterView: View {
    //MARK: - PROPERTIES
    @State var isPressed : Bool = false
    @State var recWidth : CGFloat = 60
    @State var recHeight  : CGFloat = 60
    @State var cornerRad  : CGFloat = 30
    
  
    //MARK: - BODY
    var body: some View {
        
        VStack(spacing:42){
            
            Button(action: {
               
                if isPressed {
                    recWidth  = 60
                    recHeight  = 60
                    cornerRad  = 30
                } else {
                    recWidth  = 50
                    recHeight  = 50
                    cornerRad  = 12
                }
                isPressed.toggle()
                
            }, label: {
                ZStack{
                    
                    Circle()
                        .frame(width: 120, height: 120, alignment: .center)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [Color("gradOne"), Color("gradTwo") ]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                        .shadow(color: .black.opacity(0.2), radius: 10, x: 2, y: 2)
                    Rectangle()
                        .frame(width: recWidth , height: recHeight , alignment: .center)
                        .foregroundStyle(Color.white)
                        .cornerRadius(cornerRad)
                
                }//: ZStack
                
            })//: Button
            .padding(.top,32)

            if isPressed {
                ScreenTimerView()
            } else {
                ScreenCapsuleView()
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    ScreenCenterView()
}



//.padding(.top,32)
//.padding(.bottom,42)
//
//// Screen Capsule
//if let sR = startRecord {
//if sR {
//    ScreenTimerView()
//} else {
//    ScreenCapsuleView()
//}
//}
