//
//  ScrollViewUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 1.04.2024.
//

import SwiftUI

struct ScrollViewUseCase: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 10) { _ in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0 ..< 20) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewUseCase()
}
