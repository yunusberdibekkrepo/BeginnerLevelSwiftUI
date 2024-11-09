//
//  TextUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 26.03.2024.
//

import SwiftUI

struct TextUseCase: View {
    var body: some View {
        Text("Hello, World! This is the test text.Enjoy it!".capitalized)
            .font(.largeTitle)
            .fontWeight(.medium)
            .bold()
            .underline()
            .italic()
            .strikethrough()
            .underline(true, color: .red)
            .font(.system(size: 100, weight: .semibold, design: .monospaced))
            .baselineOffset(50.0) // line spacing between each sentences
            .kerning(11.0) // pixel spacing between each letter
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.5)
    }

    @ViewBuilder
    func greetingView(isMorning: Bool) -> some View {
        if isMorning {
            Text("Good Morning!")
                .foregroundColor(.blue)
        } else {
            Text("Hello!")
                .foregroundColor(.green)
        }
    }
}

#Preview {
    TextUseCase()
}

/*
 View dışarıdan okunarak özellikleri alır. Yani view'e en yakın set edilen kabul edilir.
 */
