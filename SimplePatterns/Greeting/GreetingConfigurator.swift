//
//  GreetingConfigurator.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

final class GreetingConfigurator {
    
    static let shared = GreetingConfigurator()
    
    func configure(with view: GreetingViewController) {
        let viewController = view
        let interactor = GreetingInteractor()
        let presenter = GreetingPresenter()

        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
