//
//  Practice.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 13/06/25.
//

import SwiftUI

struct Practice: View {
    var body: some View {
        ZStack(alignment: .top, content: {
            VStack(spacing: 0, content:{
                ParentView1()
                ParentView2()
            })
        }
        )
        .frame(width: 350, height: 600, alignment: .top)
        .background(Color.yellow)
        
    }
}

struct ParentView1: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                EmbeddedView1()
                EmbeddedView2()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(Color.black)
        }
        .frame(width: 175, height: 250)
    }
}

struct ParentView2: View{
    var body: some View{
        ZStack {
            VStack{
                EmbeddedView3()
            }
        }
        .frame(width: 175, height: 100, alignment: .bottom)
        .background(Color.orange)
    }
}

struct EmbeddedView1: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 95, height: 95)
            Rectangle()
                .fill(Color.green)
                .frame(width: 75, height: 75)
            
        }
        )
        
    }
}

struct EmbeddedView2: View {
    var body: some View {
        HStack(alignment: .center, content: {
            Rectangle()
                .fill(Color.purple)
                .frame(width: 35, height: 35)
            Spacer()
            Rectangle()
                .fill(Color.red)
                .frame(width: 65, height: 65)
           Spacer()
            Rectangle()
                .fill(Color.blue)
                .frame(width: 15, height: 15)
            
        }
        )
        //.frame(maxWidth: .infinity)
        
    }
}

struct EmbeddedView3: View {
    var body: some View {
        HStack(alignment: .bottom, content: {
            Rectangle()
                .fill(Color.purple)
                .frame(width: 35, height: 35)
            Spacer()
            Rectangle()
                .fill(Color.red)
                .frame(width: 65, height: 65)
            Spacer()
            Rectangle()
                .fill(Color.blue)
                .frame(width: 15, height: 15)
            
        }
        )
        //.frame(maxWidth: .infinity, alignment: .leading)
        
    }
}


#Preview {
    Practice()
}
