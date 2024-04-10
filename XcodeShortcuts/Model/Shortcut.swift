//
//  Shortcut.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 08/04/2024.
//

import Foundation

struct Shortcut: Identifiable {
    let id = UUID()
    let modifiers: [Modifier]
    let char: String
    let text: String

    var description: String {
        let result = modifiers.reduce("") { $0 + $1.rawValue }
        return result + " \(char.capitalized)"
    }

}
