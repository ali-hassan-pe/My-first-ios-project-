//
//  AppColor.swift
//  Food delevery app
//

import SwiftUI

/// Centralized, semantic color tokens. Views must never reference raw hex
/// values directly — colors are defined once in Assets.xcassets and exposed
/// here so every screen stays visually consistent and themeable.
enum AppColor {
    /// Splash canvas; also the mark/wordmark accent on the Welcome screen.
    static let background = Color("BrandBackground")

    /// Brand coral — the mark/"YUM" accent on the Splash screen.
    static let primary = Color("BrandPrimary")

    /// Off-white used for the "QUICK" half of the wordmark on every screen.
    static let onPrimary = Color("BrandOnPrimary")

    /// Welcome screen canvas, and the label color on its pill buttons.
    static let terracotta = Color("BrandTerracotta")

    /// Fill of the Welcome screen's secondary ("Sign Up") pill button.
    static let cream = Color("BrandCream")
}
