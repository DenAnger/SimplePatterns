//
//  ViewController.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import UIKit

protocol GreetingDisplayLogic: class {
    func displayGreeting(viewModel: Greeting.ShowGreeting.ViewModel)
}

class GreetingViewController: UIViewController, GreetingDisplayLogic {

    @IBOutlet var greetingLabel: UILabel!
    
    var interactor: GreetingBusinessLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingConfigurator.shared.configure(with: self)
    }
    
    @IBAction func showGreetingPressed(_ sender: Any) {
        let request = Greeting.ShowGreeting.Request()
        interactor?.setFullName(request: request)
    }
    
    func displayGreeting(viewModel: Greeting.ShowGreeting.ViewModel) {
        greetingLabel.text = viewModel.greeting
    }
}
