//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 20/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, from content changing in real time!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
