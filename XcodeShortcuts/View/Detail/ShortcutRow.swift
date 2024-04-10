//
//  ShortcutRow.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 10/04/2024.
//

import SwiftUI

struct ShortcutRow: View {
    //MARK: - PROPERTIES:

    let shortcutModel: Shortcut
    let searchQuery: String
    let font: Font = .body
    let fontWeight: Font.Weight = .regular
    let secondaryFont: Font = .headline

    var charFound: Bool {
        searchQuery.count == 1 && shortcutModel.char.lowercased() == searchQuery.lowercased()
    }


    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if charFound {
                    Text("-->")
                        .font(font)
                }
                Text(shortcutModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            Text(shortcutModel.text.capitalized)
        }
        .foregroundStyle(charFound ? .blue : .black)
    }
}

#Preview {
    ShortcutRow(shortcutModel: .init(modifiers: [.command], char: "b", text: "build"), searchQuery: "b")
}
