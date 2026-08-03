//
//  SplashViewModel.swift
//  Food delevery app
//

import Combine
import Foundation

enum SplashUiState: Equatable {
    case idle
}

/// Abstraction the view depends on (DIP) rather than a concrete class.
protocol SplashViewModelProtocol: ObservableObject {
    var state: SplashUiState { get }
}

final class SplashViewModel: SplashViewModelProtocol {
    @Published private(set) var state: SplashUiState = .idle
}
