//
//  ShapesBootcamp.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 07/06/25.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.system(size: 30))
//            .foregroundColor(Color.green)
//        Circle()
//            .frame(width:300,height:200,alignment: Alignment.center)
//            .foregroundColor(Color.orange)
//        
//        Circle()
//            .frame(width:300,height:200,alignment: Alignment.center)
//            .foregroundColor(Color.orange)
        Image("ethan")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .padding(8)
        Text("Ethan Mascarenhas")
            .font(.system(size: 25))
//        Rectangle()
//            .trim(from: 0.0, to: 0.6)
//            .frame(width:400,height:200,alignment: Alignment.center)
//            .foregroundColor(Color.orange)
    }
}

#Preview {
    Shapes()
}
