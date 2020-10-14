//
//  GreetingPresenter.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

protocol GreetingPresentationLogic {
    func presentGreeting(response: Greeting.ShowGreeting.Response)
}

class GreetingPresenter: GreetingPresentationLogic {
    
    weak var viewController: GreetingDisplayLogic?

    func presentGreeting(response: Greeting.ShowGreeting.Response) {
        let greeting = "Hello, \(response.fullName)!"
        let viewModel = Greeting.ShowGreeting.ViewModel(greeting: greeting)
        viewController?.displayGreeting(viewModel: viewModel)
    }
}
