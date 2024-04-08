//
//  MainView.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 08/04/2024.
//

import SwiftUI

struct MainView: View {
    //MARK: - PROPERTIES:
    @State private var searchField = ""
    var viewModel: ShortcutViewModel = ShortcutViewModel()

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
            }
            .navigationTitle("Shortcuts")
            .searchable(text: $searchField, prompt: "Search")
        }
    }
}

#Preview {
    MainView()
}
