//
//  MenuView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct MenuView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing:16){
                HStack(spacing:14) {
                    MenuButtonView(buttonImage: "menu11", buttonTitle: "Live Stream", destinationView: 1 )
                    MenuButtonView(buttonImage: "menu12", buttonTitle: "Face Cam", destinationView: 2 )
                    MenuButtonView(buttonImage: "menu13", buttonTitle: "Video Editor", destinationView: 3 )
                }//: HStack
            
                HStack(spacing:14) {
                    MenuButtonView(buttonImage: "menu21", buttonTitle: "Add Music", destinationView: 4 )
                    MenuButtonView(buttonImage: "menu22", buttonTitle: "Extract Audio", destinationView: 5 )
                    MenuButtonView(buttonImage: "menu23more", buttonTitle: "More Tools", destinationView: 6 )
                }//: HStack
               

            }//:VStack
            //.padding()
           

        }//: ZStack
        //.background(Color("backGround"))
        //.frame(width: 382, height: 259)
    }
}


//MARK: - PREVIEW
#Preview {
    MenuView()
}
