//
//  ViewController.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "John", surname: "Doe")
        viewModel = GreetingViewModel(person: person)
    }
    
    @IBAction func showGreetingPressed(_ sender: Any) {
        viewModel.showGreeting()
    }
}
