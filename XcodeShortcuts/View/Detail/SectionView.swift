//
//  SectionView.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 08/04/2024.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES:
    let shortcutCategory: String
    let shortcutModel: [Shortcut]
    let searchQuery: String
    
    let sectionHeaderFont: Font = .body
    let sectionFontWeight: Font.Weight = .semibold
    let sectionHeaderColor: Color = .red

    var filteredResults: [Shortcut] {
        shortcutModel
    }

    var body: some View {
            if !filteredResults.isEmpty {
                Section {
                    ForEach(filteredResults) { model in
                        ShortcutRow(
                            shortcutModel: model,
                            searchQuery: searchQuery
                        )
                    }
                } header: {
                    Text(shortcutCategory)
                        .font(sectionHeaderFont)
                        .fontWeight(sectionFontWeight)
                        .foregroundStyle(sectionHeaderColor)
                }
            }
    }
}

#Preview {
    SectionView(
        shortcutCategory: "Test",
        shortcutModel: [.init(
            modifiers: [.command],
            char: "1",
            text: "Project"
        )],
        searchQuery: ""
    )
}
