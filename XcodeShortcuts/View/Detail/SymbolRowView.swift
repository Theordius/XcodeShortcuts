//
//  SymbolRowView.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 10/04/2024.
//

import SwiftUI

struct SymbolRowView: View {
    //MARK: - PROPERTIES:
    let modifier: Modifier
    let font: Font = Theme.modifierFont

    var body: some View {
        Text("\(modifier.rawValue) = \(modifier.description)")
            .font(font)
    }
}

#Preview {
    SymbolRowView(modifier: .command)
}
