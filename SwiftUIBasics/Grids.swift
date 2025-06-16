//
//  Grids.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 16/06/25.
//

import SwiftUI

struct Grids: View {
    let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
        ]
        
        var body: some View {
            ScrollView {
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 400)
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders], // for sticky section headers
                    content: {
                        Section(header:
                                    Text("Section 1")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.blue)
                                    .padding()
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                        
                        Section(header:
                                    Text("Section 2")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.red)
                                    .padding()
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height: 150)
                            }
                        }
                        
                })
            }
        }
}

#Preview {
    Grids()
}
