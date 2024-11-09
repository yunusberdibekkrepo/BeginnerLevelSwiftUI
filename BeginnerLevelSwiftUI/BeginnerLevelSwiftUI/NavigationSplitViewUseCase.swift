//
//  NavigationSplitViewUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 11.04.2024.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewUseCase: View {
    // automatic olduğu durumda ipad için soldaki nav bar landspace modda gözüküyor. ancak bunu detailOnly yaparsak portrait moddaki gibi sadece detail ekranı gözüküyor.
    @State private var visibility: NavigationSplitViewVisibility = .doubleColumn

    var body: some View {
//        NavigationSplitView {
//            Color.red // sidebar
//        } detail: {
//            Color.blue // second
//        }

        NavigationSplitView(columnVisibility: $visibility) {
            Color.red
        } content: {
            Color.blue
        } detail: {
            Color.green
        }
        .navigationSplitViewStyle(.prominentDetail) // balanced olunca soldaki menü çubuğu ekranı ve detail ekranı gözüküyor. Ancak menu çubuğu hep açık ama. ancak prominent detail olunca soldaki menü çubuğu gidince full ekran olabiliyor birde menu dışındaki root olan kırmızı ekranda gözükebiliyor..
    }
}

// #Preview {
//    NavigationSplitViewUseCase()
// }

struct NavigationSplit2: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruits? = nil

    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruits.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegies:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
            }
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue.capitalized)")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegies, meats
}

enum Fruits: String, CaseIterable {
    case apple, banana, orange
}

#Preview {
    NavigationSplit2()
}
