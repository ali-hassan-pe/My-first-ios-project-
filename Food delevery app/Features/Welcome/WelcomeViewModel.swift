//
//  WelcomeViewModel.swift
//  Food delevery app
//

import Combine
import Foundation

enum WelcomeUiState: Equatable {
    case idle
}

/// Abstraction the view depends on (DIP) rather than a concrete class.
protocol WelcomeViewModelProtocol: ObservableObject {
    var state: WelcomeUiState { get }
    func logInTapped()
    func signUpTapped()
}

final class WelcomeViewModel: WelcomeViewModelProtocol {
    @Published private(set) var state: WelcomeUiState = .idle

    func logInTapped() {
        // Navigation wiring lands with the auth feature.
    }

    func signUpTapped() {
        // Navigation wiring lands with the auth feature.
    }
}
