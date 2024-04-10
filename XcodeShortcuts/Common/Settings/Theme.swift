//
//  Theme.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 10/04/2024.
//

import Foundation
import SwiftUI

#if os(iOS)
struct Theme {
    static let font: Font = .headline
    static let secondaryFont: Font = .body
    static let fontWeight: Font.Weight = .regular
    static let modifierFont: Font = .headline
    static let frameWidth: CGFloat? = nil
    static let frameHeight: CGFloat? = nil
    static let listStyle = DefaultListStyle()
    static let sectionHeaderFont: Font = .body
    static let shortcutWidth: CGFloat? = nil
    static let sectionHeaderColor: Color = .red

    static func layout(isIPad: Bool) -> AnyLayout {
        isIPad
        ? AnyLayout(VStackLayout(alignment: .leading))
        : AnyLayout(HStackLayout())
    }
}
#else
struct Theme {
    static let font: Font = .title
    static let secondaryFont: Font = .title
    static let fontWeight: Font.Weight = .semibold
    static let modifierFont: Font = .title
    static let frameWidth: CGFloat? = 900
    static let frameHeight: CGFloat? = 1000
    static let listStyle = SidebarListStyle()
    static let sectionHeaderFont: Font = .largeTitle
    static let shortcutWidth: CGFloat? = 200
    static let sectionHeaderColor: Color = .red

    static func layout(isIPad: Bool) -> AnyLayout {
        isIPad
        ? AnyLayout(VStackLayout(alignment: .leading))
        : AnyLayout(HStackLayout())
    }
}

#endif
