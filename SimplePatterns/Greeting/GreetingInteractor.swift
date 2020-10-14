//
//  GreetingInteractor.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

protocol GreetingBusinessLogic {
    func setFullName(request: Greeting.ShowGreeting.Request)
}

protocol GreetingDataStore {
    var fullName: String { get }
}

class GreetingInteractor: GreetingBusinessLogic, GreetingDataStore {
    
    var presenter: GreetingPresentationLogic?
    var fullName: String = ""
    
    func setFullName(request: Greeting.ShowGreeting.Request) {
        let person = Person(name: "John", surname: "Doe")
        fullName = "\(person.name) \(person.surname)"
        let response = Greeting.ShowGreeting.Response(fullName: fullName)
        presenter?.presentGreeting(response: response)
    }
}
