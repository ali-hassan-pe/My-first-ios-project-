//
//  BrandWordmarkMetrics.swift
//  Food delevery app
//

import CoreGraphics
import UIKit

/// Resolves the typographic values needed to set the wordmark at the exact
/// proportions of the master artwork.
///
/// The artwork specifies the wordmark by its cap height and its overall
/// width. A substitute typeface will not hit both by default, so the point
/// size is derived from the cap height and the residual width difference is
/// absorbed as kerning. Keeping this here — rather than in the view — means
/// the view stays free of measurement logic, and any localized wordmark is
/// measured on its own terms.
struct BrandWordmarkMetrics {
    let fontSize: CGFloat
    let kerning: CGFloat

    /// - Parameters:
    ///   - segments: the wordmark split into its individually-colored runs.
    ///   - capHeight: the cap height the artwork calls for, in points.
    ///   - totalWidth: the width the artwork calls for, in points.
    init(segments: [String], capHeight: CGFloat, totalWidth: CGFloat) {
        let probeSize: CGFloat = 100
        let probe = Self.font(ofSize: probeSize)
        let capRatio = probe.capHeight / probeSize
        let size = capRatio > 0 ? capHeight / capRatio : capHeight
        self.fontSize = size

        let sized = Self.font(ofSize: size)
        let natural = segments.reduce(CGFloat.zero) { total, segment in
            total + (segment as NSString).size(withAttributes: [.font: sized]).width
        }
        // One gap between every pair of adjacent glyphs across all segments.
        let gaps = max(1, segments.reduce(0) { $0 + $1.count } - 1)
        self.kerning = (totalWidth - natural) / CGFloat(gaps)
    }

    /// The heavy face the brand wordmark is set in. Must stay in step with
    /// `AppFont.wordmark(size:)` — this is its measurable counterpart.
    static func font(ofSize size: CGFloat) -> UIFont {
        UIFont.systemFont(ofSize: size, weight: .black)
    }
}
