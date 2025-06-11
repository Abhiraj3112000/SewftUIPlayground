//
//  Alignment.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 10/06/25.
//

import SwiftUI

struct Alignment: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .overlay(
                    Circle()
                        .fill(Color.black)
                        .frame(width: 20, height: 20),
                    alignment: .bottomTrailing
                )
            )
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
        
    }
}

#Preview {
    Alignment()
}
