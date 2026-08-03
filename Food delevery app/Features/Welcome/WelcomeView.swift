//
//  WelcomeView.swift
//  Food delevery app
//
//  Stateless view: zero business logic, all content driven by the
//  injected view model and centralized theme/resources.
//

import SwiftUI

struct WelcomeView<ViewModel: WelcomeViewModelProtocol>: View {
    @ObservedObject private var viewModel: ViewModel

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    private typealias Layout = AppSpacing.Welcome

    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width
            let buttonHeight = width * Layout.buttonHeightRatio

            ZStack {
                AppColor.terracotta

                VStack(spacing: 0) {
                    Spacer()

                    BrandLockupView(
                        markWidth: width * Layout.lockupWidthRatio,
                        accentColor: AppColor.background,
                        quickColor: AppColor.onPrimary
                    )

                    Color.clear.frame(height: width * Layout.subtitleTopGapRatio)

                    subtitle
                        .padding(.horizontal, width * Layout.horizontalMarginRatio)

                    Color.clear.frame(height: width * Layout.buttonStackTopGapRatio)

                    VStack(spacing: width * Layout.buttonSpacingRatio) {
                        WelcomePillButton(
                            title: String(localized: "welcome_log_in"),
                            fill: AppColor.background,
                            height: buttonHeight,
                            action: viewModel.logInTapped
                        )
                        WelcomePillButton(
                            title: String(localized: "welcome_sign_up"),
                            fill: AppColor.cream,
                            height: buttonHeight,
                            action: viewModel.signUpTapped
                        )
                    }
                    .padding(.horizontal, width * Layout.horizontalMarginRatio)

                    Color.clear.frame(height: width * Layout.bottomPaddingRatio)
                }
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
        }
        .ignoresSafeArea()
    }

    private var subtitle: some View {
        Text(String(localized: "welcome_subtitle"))
            .font(AppFont.body(size: 15, weight: .medium))
            .foregroundStyle(AppColor.onPrimary)
            .multilineTextAlignment(.center)
            .lineSpacing(Layout.subtitleLineSpacing)
            .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    WelcomeView(viewModel: WelcomeViewModel())
}
