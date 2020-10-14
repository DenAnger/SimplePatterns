//
//  ViewController.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var presenter: GreetingViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "John", surname: "Doe")
        presenter = GreetingPresenter(view: self, person: person)
    }
    
    @IBAction func showGreetingPressed(_ sender: Any) {
        presenter.showGreeting()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
