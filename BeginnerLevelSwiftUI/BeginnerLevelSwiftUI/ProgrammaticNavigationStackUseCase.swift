//
//  ProgrammaticNavigationStackUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 10.04.2024.
//

import SwiftUI

struct ProgrammaticNavigationStackUseCase: View {
    @State var platforms: [Platform] = [
        .init(name: "Xbox", systemImage: "xbox.logo", color: .green),
        .init(name: "Playstation", systemImage: "playstation.logo", color: .indigo),
        .init(name: "PC", systemImage: "pc", color: .pink),
        .init(name: "Mobile", systemImage: "iphone", color: .mint),
    ]

    @State var games: [Game] = [
        .init(name: "Minecraft", rating: "99"),
        .init(name: "God of War", rating: "98"),
        .init(name: "Fortnite", rating: "92"),
        .init(name: "Madden 2023", rating: "88"),
    ]

    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section {
                    ForEach(platforms, id: \.self) { platform in
                        NavigationLink(value: platform) {
                            Label(platform.name, systemImage: platform.systemImage)
                                .foregroundStyle(platform.color)
                        }
                    }
                } header: {
                    Text("Platforms")
                }

                Section {
                    ForEach(games, id: \.self) { game in
                        NavigationLink(value: game) {
                            Text(game.name)
                        }
                    }
                } header: {
                    Text("Games")
                }
            }
            .navigationDestination(for: Platform.self) { value in
                ZStack(content: {
                    value.color
                        .ignoresSafeArea()

                    VStack(content: {
                        Label(value.name, systemImage: value.systemImage)
                            .font(.largeTitle).bold()

                        List {
                            ForEach(games, id: \.self) { game in
                                NavigationLink(value: game) {
                                    Text(game.name)
                                }
                            }
                        }
                    })

                })
            }
            .navigationDestination(for: Game.self) { value in
                VStack(spacing: 40, content: {
                    Text("\(value.name) - \(value.rating)")
                        .font(.largeTitle).bold()

                    Button("Recommended Game") {
                        path.append(games.randomElement()!)
                    }

                    Button("Go to Another Platform") {
                        path.append(platforms.randomElement()!)
                    }

                    Button("Go Home") {
                        path.removeLast(path.count)
                    }
                })
            }
        }
    }
}

#Preview {
    ProgrammaticNavigationStackUseCase()
}

struct Platform: Hashable {
    let name: String
    let systemImage: String
    let color: Color
}

struct Game: Hashable {
    let name: String
    let rating: String
}
