//
//  PaddingUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 31.03.2024.
//

import SwiftUI

struct PaddingUseCase: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)

            Text("This is the description of what will do on this screen.It is multiple lines and we will align the text to leading edge.")
                .multilineTextAlignment(.center)
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .clipShape(.rect(cornerRadius: 10))
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0,
                        y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingUseCase()
}
