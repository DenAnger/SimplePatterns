//
//  ViewController.swift
//  SimplePatterns
//
//  Created by Denis Abramov on 14.10.2020.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "John", surname: "Doe")
    }
    
    @IBAction func showGreetingPressed(_ sender: Any) {
        greetingLabel.text = "Hello, \(person.name) \(person.surname)!"
    }
}
