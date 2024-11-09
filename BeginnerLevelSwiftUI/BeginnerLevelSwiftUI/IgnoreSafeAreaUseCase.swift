//
//  IgnoreSafeAreaUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 2.04.2024.
//

import SwiftUI

struct IgnoreSafeAreaUseCase: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .ignoresSafeArea(.all)
//
//            VStack {
//                Text("Hello")
//                    .padding(.top, 52)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }

        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)

                ForEach(0 ..< 10) { _ in
                    RoundedRectangle(cornerRadius: 25.9)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea(.all)
        )
    }
}

#Preview {
    IgnoreSafeAreaUseCase()
}
