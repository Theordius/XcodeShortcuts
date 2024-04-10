//
//  ShortcutRow.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 10/04/2024.
//

import SwiftUI

struct ShortcutRow: View {
    //MARK: - PROPERTIES:
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    let shortcutModel: Shortcut
    let searchQuery: String
    let font: Font = Theme.font
    let fontWeight: Font.Weight = Theme.fontWeight
    let secondaryFont: Font = Theme.secondaryFont
    let shortcutWidth = Theme.shortcutWidth
    
    var charFound: Bool {
        searchQuery.count == 1 && shortcutModel.char.lowercased() == searchQuery.lowercased()
    }
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    
    var body: some View {
        let layout = Theme.layout(isIPad: isIpad)
        layout {
            HStack {
                if charFound {
                    Text("-->")
                        .font(font)
                }
                Text(shortcutModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            .frame(width: shortcutWidth, alignment: .leading)
            Text(shortcutModel.text.capitalized)
        }
        .foregroundStyle(charFound ? .blue : .black)
    }
}

#Preview {
    ShortcutRow(
        shortcutModel: .init(modifiers: [.command], char: "b", text: "build"),
        searchQuery: "b"
    )
}
