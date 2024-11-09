//
//  WithAnimationUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 2.04.2024.
//

import SwiftUI

struct WithAnimationUseCase: View {
    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default.repeatForever(autoreverses: true))
                {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    WithAnimationUseCase()
}
