//
//  AppColor.swift
//  Food delevery app
//

import SwiftUI

/// Centralized, semantic color tokens. Views must never reference raw hex
/// values directly — colors are defined once in Assets.xcassets and exposed
/// here so every screen stays visually consistent and themeable.
enum AppColor {
    /// Splash / brand canvas.
    static let background = Color("BrandBackground")

    /// Brand coral used for the mark and the "YUM" half of the wordmark.
    static let primary = Color("BrandPrimary")

    /// Off-white used for the "QUICK" half of the wordmark.
    static let onPrimary = Color("BrandOnPrimary")
}
