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
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .padding(8)
            .frame(width: 110, height: 110)
            .background(
                //Color.red
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9209269052, green: 0.110049552, blue: 0.8323727092, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))]),
                    startPoint: .topTrailing,
                    endPoint: .bottomLeading)
            )
            .clipShape(Circle())
        Text("Ethan Mascarenhas")
            .font(.system(size: 15, design: .serif))
            .frame(width: 100)
            .multilineTextAlignment(.center)
//        Rectangle()
//            .trim(from: 0.0, to: 0.6)
//            .frame(width:400,height:200,alignment: Alignment.center)
//            .foregroundColor(Color.orange)
    }
}

#Preview {
    Shapes()
}
