//
//  Stacks.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 12/06/25.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        
//        //type 1:
//        
//        VStack {
//            //has default spacing = 8
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        }
//        
        
//        //type 2:
//        
//        VStack (
//            alignment: .center,spacing:0,  content:{
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100)
//                
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//            }
//        )
        
        ZStack(alignment: .top) {
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 350, height: 500)

                    VStack(alignment: .leading, spacing: 10) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 150, height: 150)

                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 100, height: 100)

                        HStack {
                            Rectangle()
                                .fill(Color.purple)
                                .frame(width: 50, height: 50)

                            Rectangle()
                                .fill(Color.pink)
                                .frame(width: 75, height: 75)

                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 25, height: 25)
                        }

                        HStack(alignment: .bottom) {
                            Rectangle()
                                .fill(Color.purple)
                                .frame(width: 50, height: 50)

                            Rectangle()
                                .fill(Color.pink)
                                .frame(width: 75, height: 75)

                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 25, height: 25)
                        }
                        .background(Color.orange)
                    }
                    .background(Color.black)
                }
        
    }
}

#Preview {
    Stacks()
}
