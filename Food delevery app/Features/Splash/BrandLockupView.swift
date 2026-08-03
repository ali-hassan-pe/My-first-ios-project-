//
//  BrandLockupView.swift
//  Food delevery app
//
//  The mark and wordmark set together at the master artwork's proportions.
//  Stateless: everything derives from a single width.
//

import SwiftUI

struct BrandLockupView: View {
    /// Width of the mark. Every other dimension is derived from it.
    let markWidth: CGFloat

    private typealias Layout = AppSpacing.BrandLockup

    private var capHeight: CGFloat { markWidth * Layout.capHeightRatio }
    private var wordmarkWidth: CGFloat { markWidth * Layout.wordmarkWidthRatio }

    private var metrics: BrandWordmarkMetrics {
        BrandWordmarkMetrics(
            segments: [yumText, quickText],
            capHeight: capHeight,
            totalWidth: wordmarkWidth
        )
    }

    private var yumText: String { String(localized: "brand_name_yum") }
    private var quickText: String { String(localized: "brand_name_quick") }

    var body: some View {
        let metrics = self.metrics

        VStack(spacing: 0) {
            BrandMarkShape()
                .stroke(
                    AppColor.primary,
                    style: StrokeStyle(
                        lineWidth: markWidth * BrandMarkGeometry.strokeRatio,
                        lineCap: .round,
                        lineJoin: .round
                    )
                )
                .frame(width: markWidth, height: markWidth * BrandMarkGeometry.aspectRatio)

            Color.clear
                .frame(height: markWidth * Layout.gapRatio)

            wordmark(metrics: metrics)
                .offset(x: markWidth * Layout.wordmarkOffsetXRatio)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("splash_logo_accessibility_label"))
    }

    private func wordmark(metrics: BrandWordmarkMetrics) -> some View {
        HStack(spacing: metrics.kerning) {
            Text(yumText)
                .foregroundStyle(AppColor.primary)
            Text(quickText)
                .foregroundStyle(AppColor.onPrimary)
        }
        .font(AppFont.wordmark(size: metrics.fontSize))
        .kerning(metrics.kerning)
        .fixedSize(horizontal: true, vertical: false)
        // Collapse the line box down to the cap band so the gap above is
        // measured from the cap line, as the artwork specifies, rather than
        // from the font's ascender.
        .frame(height: capHeight)
    }
}

#Preview {
    ZStack {
        AppColor.background.ignoresSafeArea()
        BrandLockupView(markWidth: 223)
    }
}
