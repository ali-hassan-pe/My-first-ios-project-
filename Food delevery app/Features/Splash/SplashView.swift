//
//  SplashView.swift
//  Food delevery app
//
//  Stateless view: zero business logic, all content driven by the
//  injected view model and centralized theme/resources.
//

import SwiftUI

struct SplashView<ViewModel: SplashViewModelProtocol>: View {
    @ObservedObject private var viewModel: ViewModel

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        GeometryReader { proxy in
            ZStack {
                AppColor.background

                BrandLockupView(
                    markWidth: proxy.size.width * AppSpacing.BrandLockup.widthRatio,
                    accentColor: AppColor.primary,
                    quickColor: AppColor.onPrimary
                )
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SplashView(viewModel: SplashViewModel())
}
