//
//  NavigationStackUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 10.04.2024.
//

import SwiftUI

struct NavigationStackUseCase: View {
    @State var fruits: [String] = [
        "apple",
        "orange",
        "banana",
        "peach",
    ]

    @State private var stackPath: [String] = []

    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40, content: {
                    Button("Add") {
                        stackPath.append(UUID().uuidString)
                    }

                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink("Click me: \(fruit)",
                                       value: fruit)
                    }
                })
                .navigationDestination(for: String.self) { fruit in
                    Text(fruit)
                }
                .navigationTitle("Screen 1")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarTitleMenu {
                    Text("Screen 1")
                    Text("Screen 2")
                }
                .toolbarColorScheme(.light, for: .tabBar)
            }
        }
    }
}

#Preview {
    NavigationStackUseCase()
}
