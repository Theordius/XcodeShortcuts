//
//  SymbolLegendView.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 10/04/2024.
//

import SwiftUI

struct SymbolLegendView: View {
    //MARK: - PROPERTIES:

    var body: some View {
        let midIndex = Modifier.allCases.count / 2
        HStack(alignment: .top) {
            SymbolColumnView(
                startIndex: 0,
                endIndex: midIndex
            )
            SymbolColumnView(
                startIndex: midIndex,
                endIndex: Modifier.allCases.count
            )
        }
    }
}

#Preview {
    SymbolLegendView()
}
