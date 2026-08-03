//
//  WelcomePillButton.swift
//  Food delevery app
//
//  Stateless: fill, label and action are all supplied by the caller.
//

import SwiftUI

struct WelcomePillButton: View {
    let title: String
    let fill: Color
    let height: CGFloat
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFont.body(size: height * 0.34, weight: .semibold))
                .foregroundStyle(AppColor.terracotta)
                .frame(maxWidth: .infinity)
                .frame(height: height)
                .background(fill, in: Capsule())
        }
    }
}

#Preview {
    ZStack {
        AppColor.terracotta.ignoresSafeArea()
        VStack(spacing: 12) {
            WelcomePillButton(title: "Log In", fill: AppColor.background, height: 56) {}
            WelcomePillButton(title: "Sign Up", fill: AppColor.cream, height: 56) {}
        }
        .padding(.horizontal, 32)
    }
}
