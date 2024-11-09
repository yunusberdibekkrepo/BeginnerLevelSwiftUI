//
//  StacksUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 30.03.2024.
//

import SwiftUI

struct StacksUseCase: View {
    var body: some View {
        VStack(content: {
            Image(systemName: "heart.fill")
                .renderingMode(.original)
                .font(.largeTitle)

            Text("Messi")
        })
    }
}

#Preview {
    StacksUseCase()
}
