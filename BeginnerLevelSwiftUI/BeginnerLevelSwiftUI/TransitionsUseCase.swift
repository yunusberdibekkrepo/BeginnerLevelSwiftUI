//
//  TransitionsUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 3.04.2024.
//

import SwiftUI

struct TransitionsUseCase: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom, content: {
            VStack(content: {
                Button("Button") {
                    withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                }

                Spacer()
            })

            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading), // soldan gelecek
                        removal: .move(edge: .bottom))) // alttan gidicek
//                    .transition(.move(edge: .bottom))
//                    .transition(.scale)
            }
        })
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionsUseCase()
}

// transition = geçiş
