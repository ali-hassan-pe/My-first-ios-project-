//
//  AppFont.swift
//  Food delevery app
//

import SwiftUI

/// Centralized typography tokens. Views must reference these instead of
/// constructing ad-hoc `Font` values inline.
enum AppFont {
    /// The brand wordmark face — a heavy grotesque with flat terminals,
    /// matching the master artwork. Its size is driven by the lockup's
    /// proportions rather than a fixed value, so it is passed in.
    static func wordmark(size: CGFloat) -> Font {
        .system(size: size, weight: .black, design: .default)
    }

    /// Body copy face — a friendly rounded sans, used for the Welcome
    /// screen's subtitle and button labels.
    static func body(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        .system(size: size, weight: weight, design: .rounded)
    }
}
