//
//  ViewThatFitsUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 11.04.2024.
//

import SwiftUI

struct ViewThatFitsUseCase: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()

            ViewThatFits {
                Text("This is some text that I would like to display to the user! 1")
                Text("This is some text that I would like to display 2")
                Text("This is some text 3")
                
                //ilk 3'ünü ekrana almaya çalışıyor.1. sığmayınca 2.text'i ekrana alıyor. Padding 16'dan 50 ye çıkarsa 3'yü alıyor.
            }
        }
        .frame(height: 300)
        .padding(50)
    }
}

#Preview {
    ViewThatFitsUseCase()
}
