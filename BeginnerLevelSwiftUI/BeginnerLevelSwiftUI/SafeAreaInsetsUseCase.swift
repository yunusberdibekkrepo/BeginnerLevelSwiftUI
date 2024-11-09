//
//  SafeAreaInsetsUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 10.04.2024.
//

import SwiftUI

struct SafeAreaInsetsUseCase: View {
    var body: some View {
        NavigationStack {
            List(0 ... 10, id: \.self) { _ in
                Rectangle()
                    .fill()
                    .frame(height: 400)
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Text("Hi")
                    .padding()
                    .background(.yellow)
                    .foregroundStyle(.white)
                    .clipShape(.circle)
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsUseCase()
}
