//
//  ButtonStyleAndControlSizeUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 9.04.2024.
//

import SwiftUI

struct ButtonStyleAndControlSizeUseCase: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Button")
                .frame(maxWidth: .infinity)
        })
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
}

#Preview {
    ButtonStyleAndControlSizeUseCase()
}
