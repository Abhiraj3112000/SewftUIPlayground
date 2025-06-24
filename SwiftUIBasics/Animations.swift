//
//  Animations.swift
//  SwiftUIBasics
//
//  Created by Abhiraj Chatterjee on 23/06/25.
//

import SwiftUI

struct Animations: View {
    @State var isAnimated: Bool = false
    @State var isAnimating: Bool = false
    @State private var animationTrigger = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
//                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
        
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.2,
                    blendDuration: 1.0
                ), value: isAnimating)
            
            Button("Animate") {
                isAnimating.toggle()
            }
            .padding(.top, 40)
        }
        .padding()
        
        VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: animationTrigger ? 350 : 50, height: 100)
                        .animation(.spring(
                            response: 1.0,
                            dampingFraction: 0.2,
                            blendDuration: 1.0
                        ), value: animationTrigger)
                    
                    Button("Animate") {
                        animationTrigger = true

                        // Reset trigger shortly after to allow repeatable animation
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            animationTrigger = false
                        }
                    }
                    .padding(.top, 40)
                }
                .padding()
            
    }
}

#Preview {
    Animations()
}
