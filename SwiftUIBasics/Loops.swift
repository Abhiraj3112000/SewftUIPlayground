//
//  Loops.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 15/06/25.
//

import SwiftUI

struct Loops: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"

    var body: some View {
        VStack {
            ForEach(0..<data.count, id: \.self) { index in
                Text("\(index): \(data[index])")
            }
            
            ForEach(data, id: \.self) { eachData in
                Text("\(eachData)")
            }
            
            ForEach(0...5, id: \.self) { eachData in
                Text("\(eachData)")
            }
            Text("-----")
            ForEach(0..<5, id: \.self) { eachData in
                Text("\(eachData)")
            }
            
        }
    }
}

#Preview {
    Loops()
}
