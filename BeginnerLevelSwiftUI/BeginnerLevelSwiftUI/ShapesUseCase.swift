//
//  ShapesUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 26.03.2024.
//

import SwiftUI

struct ShapesUseCase: View {
    var body: some View {
//        Circle()
//        Ellipse()
        Capsule(style: .circular)
            .fill(.blue)
//            .foregroundStyle(.red)
//            .stroke(.red, lineWidth: 1)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.15, to: 1)
//            .stroke(.purple, lineWidth: 25)
            .frame(width: 200, height: 100, alignment: .center)
    }
}

#Preview {
    ShapesUseCase()
}
