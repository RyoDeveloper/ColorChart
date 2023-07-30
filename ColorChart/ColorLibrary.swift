//
//  ColorLibrary.swift
//  ColorChart
//
//  https://github.com/RyoDeveloper/ColorChart
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftUI

struct ColorAsset: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let color: Color

    init(name: String, color: Color) {
        self.name = name
        self.color = color
    }

    init(name: String, color: UIColor) {
        self.name = name
        self.color = Color(color)
    }
}

struct ColorCategory: Identifiable {
    let id = UUID()
    let name: String
    let colorAssets: [ColorAsset]
}

class ColorLibrary {
    let colors = [
        // MARK: Standard colors

        ColorCategory(name: "Standard colors", colorAssets: [
            ColorAsset(name: ".black", color: Color.black),
            ColorAsset(name: ".blue", color: Color.blue),
            ColorAsset(name: ".brown", color: Color.brown),
            ColorAsset(name: ".clear", color: Color.clear),
            ColorAsset(name: ".cyan", color: Color.cyan),
            ColorAsset(name: ".gray", color: Color.gray),
            ColorAsset(name: ".green", color: Color.green),
            ColorAsset(name: ".indigo", color: Color.indigo),
            ColorAsset(name: ".mint", color: Color.mint),
            ColorAsset(name: ".orange", color: Color.orange),
            ColorAsset(name: ".pink", color: Color.pink),
            ColorAsset(name: ".purple", color: Color.purple),
            ColorAsset(name: ".red", color: Color.red),
            ColorAsset(name: ".teal", color: Color.teal),
            ColorAsset(name: ".white", color: Color.white),
            ColorAsset(name: ".yellow", color: Color.yellow)
        ]),

        // MARK: Semantic colors

        ColorCategory(name: "Semantic colors", colorAssets: [
            ColorAsset(name: ".accentColor", color: Color.accentColor),
            ColorAsset(name: ".primary", color: Color.primary),
            ColorAsset(name: ".secondary", color: Color.secondary)
        ]),

        // MARK: Label colors

        ColorCategory(name: "Label colors", colorAssets: [
            ColorAsset(name: ".label", color: UIColor.label),
            ColorAsset(name: ".secondaryLabel", color: UIColor.secondaryLabel),
            ColorAsset(name: ".tertiaryLabel", color: UIColor.tertiaryLabel),
            ColorAsset(name: ".quaternaryLabel", color: UIColor.quaternaryLabel)
        ]),

        // MARK: Fill colors

        ColorCategory(name: "Fill colors", colorAssets: [
            ColorAsset(name: ".systemFill", color: UIColor.systemFill),
            ColorAsset(name: ".secondarySystemFill", color: UIColor.secondarySystemFill),
            ColorAsset(name: ".tertiarySystemFill", color: UIColor.tertiarySystemFill),
            ColorAsset(name: ".quaternarySystemFill", color: UIColor.quaternarySystemFill)
        ]),

        // MARK: Text colors

        ColorCategory(name: "Text colors", colorAssets: [
            ColorAsset(name: ".placeholderText", color: UIColor.placeholderText)
        ]),

        // Tint color
        ColorCategory(name: "Tint color", colorAssets: [
            ColorAsset(name: ".tintColor", color: UIColor.tintColor)
        ]),

        // MARK: Standard content background colors

        ColorCategory(name: "Standard content background colors", colorAssets: [
            ColorAsset(name: ".systemBackground", color: UIColor.systemBackground),
            ColorAsset(name: ".secondarySystemBackground", color: UIColor.secondarySystemBackground),
            ColorAsset(name: ".tertiarySystemBackground", color: UIColor.tertiarySystemBackground)
        ]),

        // MARK: Grouped content background colors

        ColorCategory(name: "Grouped content background colors", colorAssets: [
            ColorAsset(name: ".systemGroupedBackground", color: UIColor.systemGroupedBackground),
            ColorAsset(name: ".secondarySystemGroupedBackground", color: UIColor.secondarySystemGroupedBackground),
            ColorAsset(name: ".tertiarySystemGroupedBackground", color: UIColor.tertiarySystemGroupedBackground)
        ]),

        // MARK: Separator colors

        ColorCategory(name: "Separator colors", colorAssets: [
            ColorAsset(name: ".separator", color: UIColor.separator),
            ColorAsset(name: ".opaqueSeparator", color: UIColor.opaqueSeparator)
        ]),

        // MARK: Link color

        ColorCategory(name: "Link color", colorAssets: [
            ColorAsset(name: ".link", color: UIColor.link)
        ]),

        // MARK: Nonadaptable colors

        ColorCategory(name: "Nonadaptable colors", colorAssets: [
            ColorAsset(name: ".darkText", color: UIColor.darkText),
            ColorAsset(name: ".lightText", color: UIColor.lightText)
        ]),

        // MARK: Adaptable colors

        ColorCategory(name: "Adaptable colors", colorAssets: [
            ColorAsset(name: ".systemBlue", color: UIColor.systemBlue),
            ColorAsset(name: ".systemBrown", color: UIColor.systemBrown),
            ColorAsset(name: ".systemCyan", color: UIColor.systemCyan),
            ColorAsset(name: ".systemGreen", color: UIColor.systemGreen),
            ColorAsset(name: ".systemIndigo", color: UIColor.systemIndigo),
            ColorAsset(name: ".systemMint", color: UIColor.systemMint),
            ColorAsset(name: ".systemOrange", color: UIColor.systemOrange),
            ColorAsset(name: ".systemPink", color: UIColor.systemPink),
            ColorAsset(name: ".systemPurple", color: UIColor.systemPurple),
            ColorAsset(name: ".systemRed", color: UIColor.systemRed),
            ColorAsset(name: ".systemTeal", color: UIColor.systemTeal),
            ColorAsset(name: ".systemYellow", color: UIColor.systemYellow)
        ]),

        // MARK: Adaptable gray colors

        ColorCategory(name: "Adaptable gray colors", colorAssets: [
            ColorAsset(name: ".systemGray", color: UIColor.systemGray),
            ColorAsset(name: ".systemGray2", color: UIColor.systemGray2),
            ColorAsset(name: ".systemGray3", color: UIColor.systemGray3),
            ColorAsset(name: ".systemGray4", color: UIColor.systemGray4),
            ColorAsset(name: ".systemGray5", color: UIColor.systemGray5),
            ColorAsset(name: ".systemGray6", color: UIColor.systemGray6)
        ]),

        // MARK: Transparent color

        ColorCategory(name: "Transparent color", colorAssets: [
            ColorAsset(name: ".clear", color: UIColor.clear)
        ]),

        // MARK: Fixed colors

        ColorCategory(name: "Fixed colors", colorAssets: [
            ColorAsset(name: ".black", color: UIColor.black),
            ColorAsset(name: ".blue", color: UIColor.blue),
            ColorAsset(name: ".brown", color: UIColor.brown),
            ColorAsset(name: ".cyan", color: UIColor.cyan),
            ColorAsset(name: ".darkGray", color: UIColor.darkGray),
            ColorAsset(name: ".gray", color: UIColor.gray),
            ColorAsset(name: ".green", color: UIColor.green),
            ColorAsset(name: ".lightGray", color: UIColor.lightGray),
            ColorAsset(name: ".magenta", color: UIColor.magenta),
            ColorAsset(name: ".orange", color: UIColor.orange),
            ColorAsset(name: ".purple", color: UIColor.purple),
            ColorAsset(name: ".red", color: UIColor.red),
            ColorAsset(name: ".white", color: UIColor.white),
            ColorAsset(name: ".yellow", color: UIColor.yellow)
        ])
    ]
}
