//
//  ImagesUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 28.03.2024.
//

import SwiftUI

struct ImagesUseCase: View {
    var body: some View {
        Image(.app1)
//            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .foregroundStyle(
                .linearGradient(
                    colors: [
                        .red,
                        .blue
                    ],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
    }
}

#Preview {
    ImagesUseCase()
}
