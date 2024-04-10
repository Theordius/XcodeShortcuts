//
//  ContentView.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 08/04/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES:
    @State private var searchField = ""
    var viewModel: ShortcutViewModel = ShortcutViewModel()
    let listStyle = Theme.listStyle

    var body: some View {
        NavigationStack {
            Form {
                List(viewModel.shortcutCategory) { category in
                    SectionView(
                        shortcutCategory: category.name,
                        shortcutModel: category.shortcut,
                        searchQuery: searchField
                    )
                }
                .listStyle(listStyle)
            }
            .navigationTitle("Shortcuts")
            .searchable(text: $searchField, prompt: "Search")

            SymbolLegendView()
        } //: Navigation Stack
        .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameWidth)
    }
}

#Preview {
    ContentView()
}
