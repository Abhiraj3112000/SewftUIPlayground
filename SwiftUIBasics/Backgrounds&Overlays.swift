//
//  Backgrounds&Overlays.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 11/06/25.
//

import SwiftUI

struct Backgrounds_Overlays: View {
    var body: some View {
        //        Text("Hello, World!")
        //            .background(
        //            //    Color.red
        ////                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
        //                Circle()
        //                    .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 100, height: 100)
        //            )
        //
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(colors: [Color.blue, Color.red], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 120, height: 120, alignment: .center)
        //            )

        //        Circle()
        //            .fill(Color.pink)
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(Color.purple)
        //                    .frame(width: 110, height: 110)
        //            )

        Rectangle()
            .fill(Color.brown)
            .frame(width: 100, height: 100, alignment: .leading)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50), alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150), alignment: .bottomTrailing
            )
            .frame(width: 300, height:300)
            .background(Color.orange)
        
    }
}

#Preview {
    Backgrounds_Overlays()
}
