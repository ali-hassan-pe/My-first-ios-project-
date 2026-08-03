//
//  BrandMarkShape.swift
//  Food delevery app
//

import SwiftUI

/// Renders the YumQuick mark's centrelines as a single stroked `Shape`.
///
/// The geometry lives in `BrandMarkGeometry` in a normalised space where
/// `1.0` equals the mark's width; this shape maps that space onto whatever
/// rect it is given, preserving the artwork's aspect ratio.
struct BrandMarkShape: Shape {
    func path(in rect: CGRect) -> Path {
        let scale = min(rect.width, rect.height / BrandMarkGeometry.aspectRatio)
        let size = CGSize(width: scale, height: scale * BrandMarkGeometry.aspectRatio)
        let origin = CGPoint(
            x: rect.minX + (rect.width - size.width) / 2,
            y: rect.minY + (rect.height - size.height) / 2
        )

        func map(_ point: CGPoint) -> CGPoint {
            CGPoint(x: origin.x + point.x * scale, y: origin.y + point.y * scale)
        }

        var path = Path()
        for stroke in BrandMarkGeometry.allStrokes {
            guard let first = stroke.curves.first?.first else { continue }
            path.move(to: map(first))
            for curve in stroke.curves {
                path.addCurve(to: map(curve[3]), control1: map(curve[1]), control2: map(curve[2]))
            }
            if BrandMarkGeometry.closedStrokes.contains(stroke.id) {
                path.closeSubpath()
            }
        }
        return path
    }
}
