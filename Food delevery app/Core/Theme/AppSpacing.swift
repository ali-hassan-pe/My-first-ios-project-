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
}
