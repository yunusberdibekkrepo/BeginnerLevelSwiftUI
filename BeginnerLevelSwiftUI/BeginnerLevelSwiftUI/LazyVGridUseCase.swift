//
//  LazyVGridUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 2.04.2024.
//

import SwiftUI

struct LazyVGridUseCase: View {
    // .fixed ile width değeri sabit bir değer'e sabitlenir.
    // .filexible ile ile bulunduğu frame içinde kendini resize ederek hepsini kaplar.
    // 2 tane olursa width değerini 2'ye böler mesela.Böylece iPhone ekran boyutu değişirse bile buna ayak uydurur.
    // .adaptive olduğunda minimum değere göre alabildiğince değer alır içine. mesela ekran width 100 olsun minimum ise 50 olsun 2 tane ekran width 200 olsun minimum ise 50 olsun 4 tane alır içine. (row için.) 2 tane .adaptive olursa ilki soldaki ilk 3 için 2.si ise sağdaki ilk 3 için uygular.

    @State var columns: [GridItem] = [
        //        .init(.fixed(50), spacing: nil, alignment: nil),
        .init(.flexible(), spacing: 6), // row spacing
        .init(.flexible(), spacing: 6),
        .init(.flexible(), spacing: 6),
//        .init(.adaptive(minimum: 50, maximum: 300)),
    ]

    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)

            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 8, // column spacing
                pinnedViews: [.sectionHeaders], // scrool olunca section headerlar ekranda kalmaya devam ediyor.
                content: {
                    Section {
                        ForEach(0 ..< 20) { _ in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .font(.title)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                    }

                    Section {
                        ForEach(0 ..< 20) { _ in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.title)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.red)
                            .padding()
                    }

                })
        }
    }
}

#Preview {
    LazyVGridUseCase()
}

// Yani .flexible olduğunda ekran width değeri ve .flexible sayısına göre kendini ayarlar.
