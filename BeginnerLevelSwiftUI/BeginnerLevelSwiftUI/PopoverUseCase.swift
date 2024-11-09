//
//  PopoverUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 11.04.2024.
//

import SwiftUI

struct PopoverUseCase: View {
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Verry good 😘",
        "Average 🙃",
        "Very bad 😡"
    ]

    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()

            VStack(content: {
                Spacer()

                Button("Provide feedback?") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottom), content: {
                    VStack(alignment: .leading, content: {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {}

                            if option != feedbackOptions.last {
                                Divider()
                            }
                        }
                    })
                    .padding(20)
                    .presentationCompactAdaptation(.popover)
                })

            })
        }
    }
}

#Preview {
    PopoverUseCase()
}
