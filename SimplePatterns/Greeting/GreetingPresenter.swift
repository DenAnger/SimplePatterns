//
//  GreetingPresenter.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

struct GreetingData {
    let greeting: String
    let subject: String
}

protocol GreetingPresenterProtocol: class {
    func didTapShowGreetingButton()
}

class GreetingPresenter: GreetingPresenterProtocol {
    
    weak var view: GreetingViewProtocol!
    var interactor: GreetingInteractorProtocol!
    
    required init(view: GreetingViewProtocol) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
}

extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "\(greetingData.greeting), \(greetingData.subject)!"
        view.setGreeting(greeting: greeting)
    }
}
