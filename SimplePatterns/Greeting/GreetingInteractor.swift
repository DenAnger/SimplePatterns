//
//  GreetingInteractor.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

protocol GreetingInteractorProtocol: class {
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: class {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingInteractorProtocol {
    
    weak var presenter: GreetingInteractorOutputProtocol!
    
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func provideGreetingData() {
        let person = Person(name: "John", surname: "Doe")
        let subject = "\(person.name) \(person.surname)"
        let greetingData = GreetingData(greeting: "Hello", subject: subject)
        presenter.receiveGreetingData(greetingData: greetingData)
    }
}
