//
//  SwipeActionsUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 9.04.2024.
//

import SwiftUI

struct SwipeActionsUseCase: View {
    @State var fruits: [String] = [
        "apple",
        "orange",
        "banana",
        "peach",
    ]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Archive") {
                            print("Archive")
                        }
                        .tint(.blue)

                        Button("Save") {
                            print("Save")
                        }
                        .tint(.green)

                        Button("Junk") {
                            print("Junk")
                        }
                        .tint(.red)
                    }
            }
            .onDelete(perform: onDelete)
        }
    }

    func onDelete(_ indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    SwipeActionsUseCase()
}
