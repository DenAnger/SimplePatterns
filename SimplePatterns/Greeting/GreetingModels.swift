//
//  GreetingModels.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import Foundation

enum Greeting {
    enum ShowGreeting {
        struct Request {
        }
        
        struct Response {
            var fullName: String
        }
        
        struct ViewModel {
            var greeting: String
        }
    }
}
