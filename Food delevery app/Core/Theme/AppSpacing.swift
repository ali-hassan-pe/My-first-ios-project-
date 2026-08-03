//
//  AppSpacing.swift
//  Food delevery app
//

import CoreGraphics

/// Centralized layout tokens. Views must reference these instead of
/// hardcoding arbitrary point values.
enum AppSpacing {
    /// Brand lockup proportions, measured from the master artwork and
    /// expressed relative to the mark's width so the lockup scales as a
    /// single unit on any device.
    enum BrandLockup {
        /// Mark width as a fraction of the available screen width.
        static let widthRatio: CGFloat = 0.568

        /// Vertical space between the bottom of the mark and the cap line
        /// of the wordmark.
        static let gapRatio: CGFloat = 0.182211

        /// Wordmark cap height.
        static let capHeightRatio: CGFloat = 0.119876

        /// Wordmark width — the artwork sets the wordmark slightly narrower
        /// than the mark.
        static let wordmarkWidthRatio: CGFloat = 0.935031

        /// The artwork optically nudges the wordmark right of the mark's
        /// geometric centre.
        static let wordmarkOffsetXRatio: CGFloat = 0.022057
    }

    /// Welcome screen layout, expressed relative to screen width/height so
    /// the composition holds across device sizes.
    enum Welcome {
        /// Lockup (mark + wordmark) width as a fraction of screen width.
        static let lockupWidthRatio: CGFloat = 0.50

        /// Left/right inset for the subtitle and buttons.
        static let horizontalMarginRatio: CGFloat = 0.088

        /// Space between the lockup and the subtitle.
        static let subtitleTopGapRatio: CGFloat = 0.044

        /// Subtitle line spacing.
        static let subtitleLineSpacing: CGFloat = 4

        /// Space between the subtitle and the button stack.
        static let buttonStackTopGapRatio: CGFloat = 0.09

        /// Pill button height as a fraction of screen width.
        static let buttonHeightRatio: CGFloat = 0.145

        /// Gap between the two stacked buttons.
        static let buttonSpacingRatio: CGFloat = 0.024

        /// Fixed bottom inset below the button stack.
        static let bottomPaddingRatio: CGFloat = 0.14
    }
}
