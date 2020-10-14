//
//  ViewController.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showGreetingPressed(_ sender: Any) {
        greetingLabel.text = "Hello, John Doe!"
    }
}
