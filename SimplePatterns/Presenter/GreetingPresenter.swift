//
//  GreetingPresenter.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

protocol GreetingViewProtocol: class {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewPresenterProtocol: class {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingViewPresenterProtocol {
    
    unowned let view: GreetingViewProtocol
    let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greeting)
    }
}
