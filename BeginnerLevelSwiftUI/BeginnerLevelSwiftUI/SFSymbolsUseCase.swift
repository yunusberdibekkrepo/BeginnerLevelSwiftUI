//
//  SFSymbolsUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 28.03.2024.
//

import SwiftUI

struct SFSymbolsUseCase: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .font(.system(size: 200))
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
//            .foregroundStyle(.green)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    SFSymbolsUseCase()
}
