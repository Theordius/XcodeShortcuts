//
//  SymbolColumnView.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 10/04/2024.
//

import SwiftUI

struct SymbolColumnView: View {
    //MARK: - PROPERTIES:
    let startIndex: Int
    let endIndex: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(startIndex..<endIndex, id: \.self) { index in
                SymbolRowView(modifier: Modifier.allCases[index])
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SymbolColumnView(startIndex: 0, endIndex: 1)
}
