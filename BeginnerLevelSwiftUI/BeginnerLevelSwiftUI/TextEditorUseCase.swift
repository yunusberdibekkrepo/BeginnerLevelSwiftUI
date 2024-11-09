//
//  TextEditorUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 5.04.2024.
//

import SwiftUI

struct TextEditorUseCase: View {
    @State var text: String = "This is starting text."
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .frame(height: 250)
                .foregroundStyle(.black)
                .colorMultiply(.blue.opacity(0.5))

            Button {} label: {
                Text("save".uppercased())
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background {
                        Color.blue
                            .clipShape(.rect(cornerRadius: 10))
                    }
            }

            Spacer()
        }
        .padding()
        .background {
            Color.green
        }
    }
}

#Preview {
    TextEditorUseCase()
}
