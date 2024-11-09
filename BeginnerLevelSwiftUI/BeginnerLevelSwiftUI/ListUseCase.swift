//
//  ListUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 5.04.2024.
//

import SwiftUI

struct ListUseCase: View {
    @State var fruits: [String] = [
        "apple",
        "orange",
        "banana",
        "peach",
    ]

    @State var veggies: [String] = [
        "tomato",
        "patato",
        "carrot",
    ]

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .badge(fruit)
                    }
                    .onDelete(perform: onDelete)
                    .onMove(perform: onMove)
                } header: {
                    Text("Fruits")
                        .bold()
                }

                Section {
                    ForEach(veggies, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                } header: {
                    Text("Veggies")
                        .bold()
                }
            }
            .navigationTitle("Grocery List")
            .listStyle(.insetGrouped)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }

                ToolbarItem(placement: .topBarTrailing) {
                    onAdd
                }
            })
        }
        .tint(.red)
    }

    private var onAdd: some View {
        Button("Add") {
            fruits.append("coconut")
        }
    }

    private func onDelete(_ indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    private func onMove(_ indices: IndexSet, _ newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListUseCase()
}
