//
//  GradientsUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 28.03.2024.
//

import SwiftUI

struct GradientsUseCase: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
//            .fill(
//                .linearGradient(
//                    colors: [
//                        .red,
//                        .blue,
//                        .pink,
//                        .orange
//                    ],
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
//            )
//            .fill(
//                .radialGradient(
//                    colors: [
//                        .red,
//                        .blue
//                    ],
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200
//                )
//            )
            .fill(
                .angularGradient(
                    colors: [
                        .red,
                        .blue,
                    ],
                    center: .topLeading,
                    startAngle: .degrees(-90), endAngle: .degrees(180)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsUseCase()
}
