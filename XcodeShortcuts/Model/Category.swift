//
//  Category.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 08/04/2024.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let shortcut: [Shortcut]
}
