//
//  TextfieldsUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 5.04.2024.
//

import SwiftUI

struct TextfieldsUseCase: View {
    @State var dataArray: [String] = ["dsa"]
    @State var text: String = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                TextField("placeholder", text: $text)
                    .autocorrectionDisabled()
                    .padding()
                    .foregroundStyle(.red)
                    .background {
                        Color.gray
                            .opacity(0.3)
                            .clipShape(.rect(cornerRadius: 10))
                    }

                Button(action: {
                    saveText()
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background(textIsAppropriate() ? .blue : .gray)
                        .clipShape(.rect(cornerRadius: 10))
                })
                .disabled(!textIsAppropriate())

                List {
                    ForEach(dataArray, id: \.self) { text in
                        Text(text)
                    }
                }
                .listStyle(.inset)

                Spacer()
            }
            .navigationTitle("TextField UseCase")
            .padding()
        }
    }

//    Appropriate = uygun
    private func textIsAppropriate() -> Bool {
        text.count >= 3
    }

    private func saveText() {
        dataArray.append(text)
        text = ""
    }
}

#Preview {
    TextfieldsUseCase()
}
