//
//  AnyLaoutUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 11.04.2024.
//

import SwiftUI

struct AnyLaoutUseCase: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    @Environment(\.verticalSizeClass) private var verticalSizeClass

    // Landscape için kullanılıyor. iPhone

    var body: some View {
        VStack(spacing: 12, content: {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")

            let layout: AnyLayout = horizontalSizeClass == .compact ?
                AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())

            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gama")
            }

        })
    }
}

#Preview {
    AnyLaoutUseCase()
}
