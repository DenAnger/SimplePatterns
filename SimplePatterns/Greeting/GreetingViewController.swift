//
//  ViewController.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import UIKit

protocol GreetingViewProtocol: class {
    func setGreeting(greeting: String)
}

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var presenter: GreetingPresenterProtocol!
    
    private let configurator: GreetingCongiguratorProtocol = GreetingConfigurator()
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }
    
    @IBAction func showGreetingPressed(_ sender: Any) {
        presenter.didTapShowGreetingButton()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
}
