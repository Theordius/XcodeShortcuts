//
//  ShortcutViewModel.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 08/04/2024.
//

import Foundation

@Observable
final class ShortcutViewModel: ObservableObject {
    var shortcutCategory: [Category] = []

    init() {
        self.shortcutCategory = Shortcut.shortcutData()
    }
}
