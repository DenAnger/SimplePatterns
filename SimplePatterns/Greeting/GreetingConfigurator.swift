//
//  GreetingConfigurator.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

protocol GreetingCongiguratorProtocol: class {
    func configure(with view: GreetingViewController)
}

class GreetingConfigurator: GreetingCongiguratorProtocol {
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
