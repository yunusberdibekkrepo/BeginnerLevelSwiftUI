//
//  GridUseCase.swift
//  BeginnerLevelSwiftUI
//
//  Created by Yunus Emre Berdibek on 13.04.2024.
//

import SwiftUI

struct GridUseCase: View {
    // HStack, VStack yerine gibi. GridRow = HStack

    var body: some View {
//        Grid {
//            GridRow {
//                cell(1)
//                cell(2)
//                cell(3)
//            }
//
//            Divider() // default maxWidth: infinity
//                .gridCellUnsizedAxes(.horizontal)
//
//            GridRow {
//                cell(4)
//                cell(5)
//            }
//        }

        Grid(alignment: .leading, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0 ..< 4) { rowIndex in
                GridRow(alignment: .bottom) {
                    ForEach(0 ..< 4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        if cellNumber == 7 {
                            EmptyView()
                        } else {
                            cell(cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1) // Her cell kaç tane column yer kaplayacak. Mesela 6 ise 2 column yer kaplamasını sağlayabiliriz.
                                .gridCellAnchor(.leading)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                        cellNumber == 4 ? .leading :
                                        .center
                                )
                        }
                    }
                }
            }
        }
    }

    private func cell(_ int: Int) -> some View {
        Text(int.description)
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(.blue)
    }
}

#Preview {
    GridUseCase()
}
