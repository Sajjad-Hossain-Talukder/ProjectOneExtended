//
//  ProjectGridView.swift
//  ProjectOneExtended
//
//  Created by Xotech on 03/01/2024.
//

import SwiftUI

struct ProjectGridView: View {
    //MARK: - PROPERTIES
    let items: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let imageColection : [String] = [ "m1", "m2" , "m3" , "m1", "m2" , "m3" ,"m1", "m2" , "m3" ,"m1", "m2" ]
    
    let imageTitle : [String] = [
        "At Dubai",
        "Edit Project 4",
        "YouTube Video",
        "At Dubai",
        "Edit Project 4",
        "YouTube Video",
        "At Dubai",
        "Edit Project 4",
        "YouTube Video",
        "At Dubai",
        "Edit Project 4"
    ]
    //MARK: - BODY
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: items, spacing: 24) {
                ForEach(0..<imageColection.count, id: \.self) { index in
                    ProjectGridThumbnilView(imageName: imageColection[index], title: imageTitle[index])
                }
            }
            .padding()
        }
    }}


//MARK: - PREVIEW
#Preview {
    ProjectGridView()
}
