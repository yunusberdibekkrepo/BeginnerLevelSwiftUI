//
//  ObservableUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 13.04.2024.
//

import Observation
import SwiftUI

/*
 /*
  @StateObject -> @State
  @ObservedObject -> @Bindable
  @EnvironmentObject -> @Environment(Dummy.self) private var library, .environmentObject -> .environment()
  */
 */

/*
 ObservedObject bir stateobject'i child view'e aktarmak istediğimizde kullanılır.Parent view'da stateobject child view'de ise observedobject olur.
 */

@Observable class ObservableViewModel {
    var title: String = "Title"

    @ObservationIgnored var value: Int = 5 // published olmaz
}

struct ObservableUseCase: View {
    @State var viewModel: ObservableViewModel = .init()

    var body: some View {
        VStack(spacing: 100, content: {
            Text(viewModel.title)

            Button(viewModel.title) {
                viewModel.title = "New Title"
            }

            SomeChildView(viewModel: viewModel)

            SomeThirdView()
                .environment(viewModel)
        })
    }
}

struct SomeChildView: View {
    @Bindable var viewModel: ObservableViewModel

    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Some second view"
        }
    }
}

struct SomeThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel

    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Some third view"
        }
    }
}

#Preview {
    ObservableUseCase()
}
