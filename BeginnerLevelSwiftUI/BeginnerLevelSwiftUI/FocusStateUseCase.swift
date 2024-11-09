//
//  FocusStateUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 9.04.2024.
//

import SwiftUI

struct FocusStateUseCase: View {
    @State var name: String = ""
    @State var surname: String = ""
    @State var password: String = ""

    @FocusState var focus: TextFieldStates?

    var body: some View {
        VStack(content: {
            TextField("name", text: $name)
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($focus, equals: .name)
                .submitLabel(.next)
                .onSubmit {
                    determineFields()
                }

            TextField("surname", text: $surname)
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($focus, equals: .surname)
                .submitLabel(.next)
                .onSubmit {
                    determineFields()
                }

            TextField("password", text: $password)
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($focus, equals: .password)
                .submitLabel(.done)
                .onSubmit {
                    determineFields()
                }
        })
        .onAppear(perform: {
            focus = .name
        })
    }

    func determineFields() {
        switch focus {
        case .name:
            focus = .surname
        case .surname:
            focus = .password
        case .password:
            focus = nil
        default:
            focus = nil
        }
    }
}

extension FocusStateUseCase {
    enum TextFieldStates {
        case name
        case surname
        case password
    }
}

#Preview {
    FocusStateUseCase()
}
