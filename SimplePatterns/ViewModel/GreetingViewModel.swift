//
//  GreetingViewModel.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

protocol GreetingViewModelProtocol: class {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)? { get set }
    init(person: Person)
    func showGreeting()
}

class GreetingViewModel: GreetingViewModelProtocol {
    
    var greeting: String? {
        didSet {
            greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)?
    private let person: Person
    
    required init(person: Person) {
        self.person = person
    }
    
    func showGreeting() {
        greeting = "Hello, \(person.name) \(person.surname)!"
    }
}
