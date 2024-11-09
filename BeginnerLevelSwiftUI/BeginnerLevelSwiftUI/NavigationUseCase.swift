//
//  NavigationUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 5.04.2024.
//

import SwiftUI

struct NavigationUseCase: View {
    init() {
        // Burası normal şartlarda @main içinde yazılması lazım.
        let navAppearance = UINavigationBarAppearance()
        navAppearance.configureWithOpaqueBackground()
        navAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        navAppearance.titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().standardAppearance = navAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navAppearance
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("Go screen 1") {
                    MyOtherScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("Leo Messi")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "heart.fill")
                        .renderingMode(.original)
                }
            })
            .padding()
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack(content: {
            Color.green
                .ignoresSafeArea(edges: .all)
                .navigationBarBackButtonHidden()

        })
        .overlay(alignment: .topLeading) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "multiply.circle")
                    .font(.largeTitle)
            }
            .padding()
        }
    }
}

#Preview {
    NavigationUseCase()
}
