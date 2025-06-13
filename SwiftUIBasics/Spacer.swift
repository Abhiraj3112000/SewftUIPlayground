//
//  Spacer.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 14/06/25.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
       VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Image(systemName: "gear")
            }
            .font(.title)

            Spacer()
                .frame(width: 10)
                .background(Color.orange)
        }
    }
}

#Preview {
    Spacers()
}
