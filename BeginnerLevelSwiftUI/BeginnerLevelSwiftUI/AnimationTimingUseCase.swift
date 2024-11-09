//
//  AnimationTimingUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 3.04.2024.
//

import SwiftUI

struct AnimationTimingUseCase: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0

    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.default, value: isAnimating)

            RoundedRectangle(cornerRadius: 20)
                .fill(.green)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.linear(duration: timing), value: isAnimating) // aynı hızda

            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.easeIn(duration: timing), value: isAnimating) // yavas hızlı

            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.easeOut(duration: timing), value: isAnimating) // hızlı yavas

            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimating) // yavas hızlı yavaas hızlı

            RoundedRectangle(cornerRadius: 20)
                .fill(.brown)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.spring(
                    response: 0.5,//duration
                    dampingFraction: 0.7,//mesela sona kadar gidip geri geliyor.tarzında .köşeler geri geliyor.
                    blendDuration: 1.0), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingUseCase()
}

/*
 easeOut ivmelenmesi daha fazla easeIn'e göre.Hepsi varsayılan olarak aynı zamanda bitiyor ancak başlama ve bitme hızları farklı.
 linear için başlama ve bitme aynı hızda.
 */
