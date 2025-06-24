//
//  SafeArea.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 20/06/25.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        
//        ZStack {
//                   Color.blue
//                .ignoresSafeArea()
//
//                   ScrollView {
//                       VStack {
//                           Text("Title goes here")
//                               .font(.largeTitle)
//                               .frame(maxWidth: .infinity, alignment: .leading)
//
//                           ForEach(0..<10) { index in
//                               RoundedRectangle(cornerRadius: 25.0)
//                                   .fill(Color.white)
//                                   .frame(height: 150)
//                                   .shadow(radius: 10)
//                                   .padding(20)
//                           }
//                       }
//                       .background(Color.red)
//                   }
//               }
        
        
        //cleaner way -
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)

                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
            .background(Color.red)
        }
        //.background(Color.blue)
        .background(
            Color.blue
            //.edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea(edges: .top)
        )
    }
}

#Preview {
    SafeArea()
}
