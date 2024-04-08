//
//  ShortcutData.swift
//  XcodeShortcuts
//
//  Created by Rafał Gęsior on 08/04/2024.
//

import Foundation

extension Shortcut {
    static func shortcutData() -> [Category] {
        let product: Category = .init(
            categoryName: "Product",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "b",
                    text: "Build"
                ),
                .init(
                    modifiers: [.command],
                    char: "r",
                    text: "Run"
                ),
                .init(
                    modifiers: [.command],
                    char: ".",
                    text: "Stop"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    char: "k",
                    text: "Clean build folder"
                ),
            ]
        )
        let scheme: Category = .init(
            categoryName: "Scheme",
            shortcutModel: [
                .init(
                    modifiers: [.control],
                    char: "0",
                    text: "Choose scheme"
                ),
                .init(
                    modifiers: [.command],
                    char: "<",
                    text: "Edit scheme"
                ),
            ]
        )
        let hideOrShowPanel: Category = .init(
            categoryName: "Hide or Show Panels",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "0",
                    text: "Show/Hide Navigator (Left panel)"
                ),
                .init(
                    modifiers: [
                        .option,
                        .shift
                    ],
                    char: "0",
                    text: "Show/Hide Utilities (Right panel)"
                ),
                .init(
                    modifiers: [.shift],
                    char: "Y",
                    text: "Show/Hide the Debug area"
                ),
                .init(
                    modifiers: [
                        .command,
                        .option
                    ],
                    char: "⏎",
                    text: "Show/Hide Canvas"
                ),
            ]
        )
        let navigation: Category = .init(
            categoryName: "Navigation",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "1",
                    text: "Project"
                ),
                .init(
                    modifiers: [.command],
                    char: "2",
                    text: "Source control"
                ),
                .init(
                    modifiers: [.command],
                    char: "3",
                    text: "boomarks"
                ),
                .init(
                    modifiers: [.command],
                    char: "4",
                    text: "find"
                ),
                .init(
                    modifiers: [.command],
                    char: "5",
                    text: "Issues"
                ),
                .init(
                    modifiers: [.command],
                    char: "6",
                    text: "Tests"
                ),
                .init(
                    modifiers: [.command],
                    char: "7",
                    text: "Debug"
                ),
                .init(
                    modifiers: [.command],
                    char: "8",
                    text: "Breakpoints"
                ),
                .init(
                    modifiers: [.command],
                    char: "9",
                    text: "Reports"
                ),
            ]
        )
        let inspector: Category = .init(
            categoryName: "Inspector",
            shortcutModel: [
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    char: "1",
                    text: "File"
                ),
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    char: "2",
                    text: "History"
                ),
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    char: "3",
                    text: "Quick Help"
                ),
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    char: "4",
                    text: "Show Inspector"
                ),
            ]
        )
        let structure: Category = .init(
            categoryName: "Structure",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "/",
                    text: "Toggle comment/uncomment"
                ),
                .init(
                    modifiers: [.control],
                    char: "I",
                    text: "Re-indent selected code"
                ),
                .init(
                    modifiers: [.control],
                    char: "M",
                    text: "Format multiple lines"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    char: "[",
                    text: "Shift Left"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    char: "]",
                    text: "Shift Right"
                ),
            ]
        )
        let editing: Category = .init(
            categoryName: "Editing",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "C",
                    text: "Copy"
                ),
                .init(
                    modifiers: [.command],
                    char: "V",
                    text: "Paste"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift,
                        .option
                    ],
                    char: "V",
                    text: "Paste and Preserve Formatting"
                ),
                .init(
                    modifiers: [.command],
                    char: "D",
                    text: "Duplicate"
                ),
            ]
        )
        let misccellaneus: Category = .init(
            categoryName: "Miscellaneous",
            shortcutModel: [
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    char: "A",
                    text: "Quick actions"
                ),
                .init(
                    modifiers: [
                        .shift,
                        .control
                    ],
                    char: "🖱️",
                    text: "Create a new cursor on every click"
                ),
                .init(
                    modifiers: [
                        .shift,
                        .control,
                        .command
                    ],
                    char: "M",
                    text: "Minimap"
                ),
                .init(
                    modifiers: [.globe],
                    char: "E",
                    text: "Emojis"
                ),
            ]
        )
        let debuging: Category = .init(
            categoryName: "Debugging",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "\\",
                    text: "Comment out"
                ),
                .init(
                    modifiers: [
                        .control,
                        .option,
                        .command
                    ],
                    char: "F",
                    text: "Fix all in scope"
                ),
            ]
        )
        let fileMenu: Category = .init(
            categoryName: "File menu commands",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "N",
                    text: "New File"
                ),
                .init(
                    modifiers: [
                        .command,
                        .option
                    ],
                    char: "N",
                    text: "New Group"
                ),
            ]
        )
        let sourceControl: Category = .init(
            categoryName: "Source Control",
            shortcutModel: [
                .init(
                    modifiers: [.command],
                    char: "9",
                    text: "Open the Source Control Navigator"
                ),
                .init(
                    modifiers: [
                        .command,
                        .option
                    ],
                    char: "C",
                    text: "Commit changes"
                ),
            ]
        )

        return [
            product,
            scheme,
            hideOrShowPanel,
            navigation,
            inspector,
            structure,
            editing,
            debuging,
            fileMenu,
            sourceControl,
            misccellaneus,
        ]
    }
}

