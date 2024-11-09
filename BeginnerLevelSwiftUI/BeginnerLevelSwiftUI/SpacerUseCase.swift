//
//  SpacerUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 31.03.2024.
//

import SwiftUI

struct SpacerUseCase: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
                .frame(height: 10)
                .background(.orange)

            Rectangle()
                .frame(width: 100, height: 100)

            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
        }
        .background(.blue)
    }
}

#Preview {
    SpacerUseCase()
}
